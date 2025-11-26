package src.tv.boombang.application.global.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _bn9270 extends _va2030
   {
      
      private var _od7243:MovieClip;
      
      private var _ye750:MovieClip;
      
      private var _cd9228:MovieClip;
      
      public function _bn9270(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         this._od7243 = this._xo6614["warning"];
         this._ye750 = this._xo6614["description"];
         this._cd9228 = this._xo6614["question"];
      }
      
      public function set _th13516(param1:String) : void
      {
         _yq8362._bj8346(this._ye750["txt"] as TextField,param1);
         (this._ye750["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function set _mh13262(param1:String) : void
      {
         _yq8362._bj8346(this._od7243["txt"] as TextField,param1);
         (this._od7243["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function set _ca4412(param1:String) : void
      {
         _yq8362._bj8346(this._cd9228["txt"] as TextField,param1);
         (this._cd9228["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
      }
      
      override protected function _uc10224(param1:MouseEvent = null) : void
      {
         _nk11935(_pm4313._dh1979);
      }
      
      override public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         super._oi4498(param1,param2);
         this._ye750["txt"].width = param1 - 20;
      }
   }
}

