package src.tv.boombang.commons
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import src.loaders.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _sg3635 extends MovieClip implements _jk15536
   {
      
      protected var _asset:_vh5894;
      
      private var _ey13768:Boolean;
      
      private var _lg361:Boolean;
      
      private var _aa9666:_mk16025;
      
      private var _yg13989:_ki14341;
      
      public function _sg3635(param1:_vh5894 = null, param2:String = "")
      {
         super();
         this._ey13768 = false;
         this._lg361 = false;
         this.addEventListener(Event.ADDED_TO_STAGE,this._mf4979,false,0,true);
         if(param1)
         {
            this.load(param1);
         }
         else if(param2 != "")
         {
            this._aj13255(param2);
         }
      }
      
      protected function _aj13255(param1:String) : void
      {
         this._aa9666 = new _mk16025();
         this._yg13989 = this._aa9666.getItem(param1);
         this.load(new _vh5894(this._yg13989._lv11027));
      }
      
      public function load(param1:_vh5894) : void
      {
         this._asset = param1;
         this._asset.addEventListener(_is380._xs4183,this._do12287,false,0,true);
         this._asset.addEventListener(_is380._om2683,this._up7721,false,0,true);
         if(!this._asset._kn5152())
         {
            this._asset.load();
         }
         else
         {
            this._up7721(null);
         }
      }
      
      private function _mf4979(param1:Event) : void
      {
         this._asset.removeEventListener(Event.ADDED_TO_STAGE,this._mf4979);
         this._lg361 = true;
      }
      
      protected function _do12287(param1:_is380) : void
      {
      }
      
      private function _up7721(param1:_is380) : void
      {
         this._asset.removeEventListener(_is380._om2683,this._up7721);
         this._ey13768 = true;
         this._td5422();
         if(this.initialized)
         {
            this._ys12008();
         }
      }
      
      public function get _rc15890() : _vh5894
      {
         return this._asset;
      }
      
      public function get initialized() : Boolean
      {
         return Boolean(this._ey13768) && Boolean(this._lg361);
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
            this._asset.removeEventListener(Event.ADDED_TO_STAGE,this._mf4979);
            this._asset.removeEventListener(_is380._xs4183,this._do12287);
            this._asset.removeEventListener(_is380._om2683,this._up7721);
            this._asset.destroy();
            this._asset = null;
         }
      }
   }
}

