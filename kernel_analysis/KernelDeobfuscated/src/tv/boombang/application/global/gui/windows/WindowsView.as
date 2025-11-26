package src.tv.boombang.application.global.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class WindowsView extends WindowsView
   {
      
      private var _ye750:MovieClip;
      
      public function WindowsView(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _sa10596._vr14785 = 17774;
         this._ye750 = this._xo6614["descriptionTxt"];
      }
      
      public function set text(param1:String) : void
      {
         UtilsUtils._bj8346(this._ye750["txt"] as TextField,param1);
      }
      
      override protected function _uc10224(param1:MouseEvent = null) : void
      {
         _nk11935(StepsView.textString1);
      }
   }
}

