package src.modules.chooseScene.panelInferior
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.chooseScene._nw11343;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _so5381
   {
      
      private var _ip11253:MovieClip;
      
      private var _tj13283:_am5321;
      
      private var _kb13694:_qo7568;
      
      private var _wj10250:_kg183;
      
      public function _so5381(param1:MovieClip, param2:_nw11343)
      {
         super();
         this._ip11253 = param1;
         this._kb13694 = new _qo7568(this._ip11253["btnAccept"],this._ur4219,param2._dw49);
         this._wj10250 = new _kg183(this._ip11253["mcCloseButton"],this._hu12389);
         _yq8362._xl9503(this._ip11253["txtTitulo"],param2._gv7736);
         _yq8362._xl9503(this._ip11253["txtTexto"],param2._yc9888);
      }
      
      private function _om8790() : void
      {
         this._tj13283._cf8695()._dw4554();
      }
      
      private function _ur4219() : void
      {
         this._om8790();
         this._hu12389();
      }
      
      public function set module(param1:_am5321) : void
      {
         this._tj13283 = param1;
      }
      
      public function _hu12389() : void
      {
         this._ip11253.visible = false;
      }
      
      public function _db5584() : void
      {
         if(!_hv12530.getInstance()._ev848)
         {
            this._ip11253.visible = true;
         }
      }
      
      public function destroy() : void
      {
         this._kb13694.destroy();
         this._wj10250.destroy();
         this._tj13283 = null;
      }
   }
}

