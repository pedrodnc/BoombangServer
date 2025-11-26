package src.modules.chooseScene.managerBanners
{
   import flash.display.*;
   import flash.events.*;
   import src.*;
   
   public class _we14660
   {
      
      private var _ke4755:MovieClip;
      
      private var visible:Boolean;
      
      private var _wo14954:Function;
      
      private var _ye3690:Boolean;
      
      public function _we14660(param1:MovieClip)
      {
         super();
         this._ke4755 = param1;
         this.visible = false;
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._hu12389(true);
      }
      
      public function _db5584(param1:int, param2:int, param3:Object) : void
      {
         if(!this.visible)
         {
            this._wo14954 = param3._jo6704;
            this._ye3690 = param3._ye3690;
            this.visible = true;
            _xw1367.getInstance()._uc3178(this._ke4755,_xw1367._wa4051);
            this._ke4755.x = param1;
            this._ke4755.y = param2;
            this._ke4755.mouseEnabled = true;
            this._ke4755.buttonMode = true;
            this._ke4755.mouseChildren = true;
            this.addListeners();
         }
      }
      
      public function _hu12389(param1:Boolean = true) : void
      {
         if(Boolean(this.visible) && (Boolean(this._ye3690) || param1))
         {
            this.visible = false;
            _xw1367.getInstance()._na10792(this._ke4755,_xw1367._wa4051);
            this._ke4755.mouseEnabled = true;
            this._ke4755.buttonMode = true;
            this._ke4755.mouseChildren = true;
            this.removeListeners();
         }
      }
      
      private function addListeners() : void
      {
         MovieClip(this._ke4755).addEventListener(MouseEvent.MOUSE_DOWN,this._wo14954);
      }
      
      private function removeListeners() : void
      {
         MovieClip(this._ke4755).removeEventListener(MouseEvent.MOUSE_DOWN,this._wo14954);
      }
   }
}

