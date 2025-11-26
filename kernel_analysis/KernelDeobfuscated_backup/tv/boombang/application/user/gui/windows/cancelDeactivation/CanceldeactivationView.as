package src.tv.boombang.application.user.gui.windows.cancelDeactivation
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.windows._va2030;
   import src.tv.boombang.core.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _wl13876 extends _va2030
   {
      
      private var _od7243:MovieClip;
      
      private var _ye750:MovieClip;
      
      private var _cd9228:MovieClip;
      
      public function _wl13876(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         this._od7243 = this._xo6614["warning"];
         this._ye750 = this._xo6614["description"];
         this._cd9228 = this._xo6614["question"];
         _yq8362._xl9503(this._ye750["txt"] as TextField,"windows.cancelDeactivateKey.description");
         _yq8362._xl9503(this._od7243["txt"] as TextField,"windows.cancelDeactivateKey.warning");
         _yq8362._xl9503(this._cd9228["txt"] as TextField,"windows.cancelDeactivateKey.question");
         this._jb14013();
      }
      
      public function set _sw13298(param1:String) : void
      {
         var _loc2_:String = _fg1060._mn8930._ad13455("windows.cancelDeactivateKey.description") + _fg1060._mn8930._ad13455(param1);
         _yq8362._xl9503(this._ye750["txt"] as TextField,_loc2_);
         this._jb14013();
      }
      
      override protected function _uc10224(param1:MouseEvent = null) : void
      {
         _nk11935(_pm4313._dh1979);
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
         var _loc1_:TextField = this._ye750["txt"] as TextField;
         if(_loc1_.numLines < 3)
         {
            this._od7243.y += 19;
         }
         else if(_loc1_.numLines == 3)
         {
            this._od7243.y += 5;
         }
         if(_loc1_.numLines > 3)
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

