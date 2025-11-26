package src.tv.boombang.application.npc.gui.window.gameSinglePlayer.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ja3764;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _wp798 extends _ja3764
   {
      
      private var _sa10596:_va5249;
      
      private var _ed7197:_va5249;
      
      public function _wp798(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         this._sa10596 = new _va5249(_xo6614["btn1"],"button.accept");
         this._ed7197 = new _va5249(_xo6614["btn2"],"button.cancel");
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
         _yq8362._bj8346(_xo6614[param2]["txt"] as TextField,param1);
         _xo6614[param2]["txt"].autoSize = TextFieldAutoSize.LEFT;
         _xo6614[param2]["txt"]["textColor"] = 16750848;
         _xo6614[param2]["txt"].width = 395;
         var _loc3_:TextFormat = (_xo6614[param2]["txt"] as TextField).getTextFormat();
         _loc3_.align = "left";
         _loc3_.size = 14;
         _xo6614[param2]["txt"].setTextFormat(_loc3_);
      }
      
      public function set _le7018(param1:String) : void
      {
         _yq8362._bj8346(_xo6614["descriptionTitle"]["txt"] as TextField,param1);
         _xo6614["descriptionTitle"]["txt"].autoSize = TextFieldAutoSize.LEFT;
         _xo6614["descriptionTitle"]["txt"].width = 380;
         var _loc2_:TextFormat = (_xo6614["descriptionTitle"]["txt"] as TextField).getTextFormat();
         _loc2_.align = "left";
         _loc2_.size = 30;
         _xo6614["descriptionTitle"]["txt"].setTextFormat(_loc2_);
         _xo6614["descriptionTitle"]["txt"]["textColor"] = 16016165;
      }
      
      public function set _yk10187(param1:int) : void
      {
         _xo6614["descriptionTxt"]["txt"].width = param1;
      }
      
      private function _hp1016(param1:MouseEvent) : void
      {
         _nk11935(_pm4313._yo4206);
      }
      
      private function _vc4217(param1:MouseEvent) : void
      {
         _nk11935(_pm4313._by10560);
      }
   }
}

