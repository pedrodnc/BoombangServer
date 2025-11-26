package src.tv.boombang.application.npc.gui.window.gameSinglePlayer.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class WindowsView extends WindowsView
   {
      
      private var _sa10596:ComponentsView;
      
      private var _ed7197:ComponentsView;
      
      public function WindowsView(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         this._sa10596 = new ComponentsView(_xo6614["btn1"],"button.accept");
         this._ed7197 = new ComponentsView(_xo6614["btn2"],"button.cancel");
         this._sa10596.addEventListener(MouseEvent.CLICK,this._hp1016,false,0,true);
         this._ed7197.addEventListener(MouseEvent.CLICK,this._vc4217,false,0,true);
      }
      
      override public function destroy() : void
      {
         this._sa10596.addEventListener(MouseEvent.CLICK,this._hp1016);
         this._ed7197.addEventListener(MouseEvent.CLICK,this._vc4217);
         this._sa10596.destroy();
         this._ed7197.destroy();
         super.destroy();
      }
      
      protected function _eh15270() : void
      {
         _xo6614["btn2"].x = _xo6614["btn1"].x + _xo6614["btn1"].width + 15;
      }
      
      public function set _th13516(param1:String) : void
      {
         this._dt9106(param1,"descriptionTxt");
      }
      
      public function _dt9106(param1:String, param2:String) : void
      {
         UtilsUtils._bj8346(_xo6614[param2]["txt"] as TextField,param1);
         _xo6614[param2]["txt"].autoSize = TextFieldAutoSize.LEFT;
         _xo6614[param2]["txt"]["textColor"] = 16750848;
         _xo6614[param2]["txt"].width = 395;
         var count3:TextFormat = (_xo6614[param2]["txt"] as TextField).getTextFormat();
         count3.align = "left";
         count3.size = 14;
         _xo6614[param2]["txt"].setTextFormat(count3);
      }
      
      public function set _le7018(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["descriptionTitle"]["txt"] as TextField,param1);
         _xo6614["descriptionTitle"]["txt"].autoSize = TextFieldAutoSize.LEFT;
         _xo6614["descriptionTitle"]["txt"].width = 380;
         var count:TextFormat = (_xo6614["descriptionTitle"]["txt"] as TextField).getTextFormat();
         count.align = "left";
         count.size = 30;
         _xo6614["descriptionTitle"]["txt"].setTextFormat(count);
         _xo6614["descriptionTitle"]["txt"]["textColor"] = 16016165;
      }
      
      public function set _yk10187(param1:int) : void
      {
         _xo6614["descriptionTxt"]["txt"].width = param1;
      }
      
      private function _hp1016(param1:MouseEvent) : void
      {
         _nk11935(StepsView.textString);
      }
      
      private function _vc4217(param1:MouseEvent) : void
      {
         _nk11935(StepsView.textString3);
      }
   }
}

