package src.tv.boombang.application.user.gui.windows.cancelDeactivation
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.core.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class CanceldeactivationView extends WindowsView
   {
      
      private var _od7243:MovieClip;
      
      private var _ye750:MovieClip;
      
      private var _cd9228:MovieClip;
      
      public function CanceldeactivationView(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         this._od7243 = this._xo6614["warning"];
         this._ye750 = this._xo6614["description"];
         this._cd9228 = this._xo6614["question"];
         UtilsUtils._xl9503(this._ye750["txt"] as TextField,"windows.cancelDeactivateKey.description");
         UtilsUtils._xl9503(this._od7243["txt"] as TextField,"windows.cancelDeactivateKey.warning");
         UtilsUtils._xl9503(this._cd9228["txt"] as TextField,"windows.cancelDeactivateKey.question");
         this._jb14013();
      }
      
      public function set _sw13298(param1:String) : void
      {
         var count:String = CoreModel._mn8930.getString1("windows.cancelDeactivateKey.description") + CoreModel._mn8930.getString1(param1);
         UtilsUtils._xl9503(this._ye750["txt"] as TextField,count);
         this._jb14013();
      }
      
      override protected function _uc10224(param1:MouseEvent = null) : void
      {
         _nk11935(StepsView.textString1);
      }
      
      override public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         super._oi4498(param1,param2);
         this._ye750["txt"].width = param1 - 20;
         this._jb14013();
      }
      
      private function _jb14013() : void
      {
         (this._ye750["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
         (this._od7243["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
         (this._cd9228["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
         this._od7243.y = this._ye750.y + this._ye750.height + 5;
         var count2:TextField = this._ye750["txt"] as TextField;
         if(count2.numLines < 3)
         {
            this._od7243.y += 19;
         }
         else if(count2.numLines == 3)
         {
            this._od7243.y += 5;
         }
         if(count2.numLines > 3)
         {
            this._cd9228.y = this._od7243.y + this._od7243.height + 5;
         }
         else
         {
            this._cd9228.y = this._od7243.y + this._od7243.height + 10;
         }
      }
   }
}

