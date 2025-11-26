package src.tv.boombang.application.user.gui.windows.deactivateKey
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.windows._va2030;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _bu2692 extends _va2030
   {
      
      private var _ye750:MovieClip;
      
      private var _th13283:MovieClip;
      
      private var _cd9228:MovieClip;
      
      public function _bu2692(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _xo6614 = param1;
         this._ye750 = _xo6614["description"];
         this._th13283 = _xo6614["list"];
         this._cd9228 = _xo6614["question"];
         _yq8362._xl9503(this._ye750["txt"] as TextField,"windows.deactivateKey.description");
         _yq8362._bj8346(this._th13283["txt"] as TextField,"windows.activateKey.list");
         _yq8362._xl9503(this._cd9228["txt"] as TextField,"windows.deactivateKey.question");
         (this._ye750["txt"] as TextField).height = (this._ye750["txt"] as TextField).textHeight + 10;
         (this._th13283["txt"] as TextField).height = (this._th13283["txt"] as TextField).textHeight + 10;
         this._th13283.y = this._ye750.y + this._ye750.height;
         this._cd9228.y = this._th13283.y + this._th13283.height;
      }
      
      override protected function _uc10224(param1:MouseEvent = null) : void
      {
         _nk11935(_pm4313._dh1979);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

