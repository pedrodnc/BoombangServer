package src.tv.boombang.application.user.gui.windows.deactivateKey
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class DeactivatekeyView extends WindowsView
   {
      
      private var _ye750:MovieClip;
      
      private var items1:MovieClip;
      
      private var _cd9228:MovieClip;
      
      public function DeactivatekeyView(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _xo6614 = param1;
         this._ye750 = _xo6614["description"];
         this.items1 = _xo6614["list"];
         this._cd9228 = _xo6614["question"];
         UtilsUtils._xl9503(this._ye750["txt"] as TextField,"windows.deactivateKey.description");
         UtilsUtils._bj8346(this.items1["txt"] as TextField,"windows.activateKey.list");
         UtilsUtils._xl9503(this._cd9228["txt"] as TextField,"windows.deactivateKey.question");
         (this._ye750["txt"] as TextField).height = (this._ye750["txt"] as TextField).textHeight + 10;
         (this.items1["txt"] as TextField).height = (this.items1["txt"] as TextField).textHeight + 10;
         this.items1.y = this._ye750.y + this._ye750.height;
         this._cd9228.y = this.items1.y + this.items1.height;
      }
      
      override protected function _uc10224(param1:MouseEvent = null) : void
      {
         _nk11935(StepsView.textString1);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

