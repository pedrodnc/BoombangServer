package src.tv.boombang.commons
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import src.loaders.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class CommonsManager extends MovieClip implements Interfaces
   {
      
      protected var _asset:CommonsManager;
      
      private var isEnabled:Boolean;
      
      private var isEnabled1:Boolean;
      
      private var _aa9666:AssetLoader;
      
      private var _yg13989:LoadersManager;
      
      public function CommonsManager(param1:CommonsManager = null, param2:String = "")
      {
         super();
         this.isEnabled = false;
         this.isEnabled1 = false;
         this.addEventListener(Event.ADDED_TO_STAGE,this.move,false,0,true);
         if(param1)
         {
            this.load(param1);
         }
         else if(param2 != "")
         {
            this.loadResource(param2);
         }
      }
      
      protected function loadResource(param1:String) : void
      {
         this._aa9666 = new AssetLoader();
         this._yg13989 = this._aa9666.getItem(param1);
         this.load(new CommonsManager(this._yg13989._lv11027));
      }
      
      public function load(param1:CommonsManager) : void
      {
         this._asset = param1;
         this._asset.addEventListener(CommonsEvents.textString2,this._do12287,false,0,true);
         this._asset.addEventListener(CommonsEvents.urlString2,this.move1,false,0,true);
         if(!this._asset.loadResource2())
         {
            this._asset.load();
         }
         else
         {
            this.move1(null);
         }
      }
      
      private function move(param1:Event) : void
      {
         this._asset.removeEventListener(Event.ADDED_TO_STAGE,this.move);
         this.isEnabled1 = true;
      }
      
      protected function _do12287(param1:CommonsEvents) : void
      {
      }
      
      private function move1(param1:CommonsEvents) : void
      {
         this._asset.removeEventListener(CommonsEvents.urlString2,this.move1);
         this.isEnabled = true;
         this._td5422();
         if(this.initialized)
         {
            this._ys12008();
         }
      }
      
      public function get _rc15890() : CommonsManager
      {
         return this._asset;
      }
      
      public function get initialized() : Boolean
      {
         return Boolean(this.isEnabled) && Boolean(this.isEnabled1);
      }
      
      public function show() : void
      {
         this.visible = true;
      }
      
      public function hide() : void
      {
         this.visible = false;
      }
      
      public function move(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.x = param1;
         this.y = param2;
      }
      
      public function get position() : Point
      {
         return new Point(this.x,this.y);
      }
      
      protected function _td5422() : void
      {
         throw new Error(this + "Unimplemented Method creationComplete");
      }
      
      protected function _ys12008() : void
      {
         throw new Error(this + "Unimplemented Method creationComplete");
      }
      
      public function destroy() : void
      {
         if(this._asset)
         {
            this._asset.removeEventListener(Event.ADDED_TO_STAGE,this.move);
            this._asset.removeEventListener(CommonsEvents.textString2,this._do12287);
            this._asset.removeEventListener(CommonsEvents.urlString2,this.move1);
            this._asset.destroy();
            this._asset = null;
         }
      }
   }
}

