package src.tv.boombang.application.user.gui.windows.changeNickName
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.windows._va2030;
   import src.utils.*;
   
   public class _dj3826 extends _va2030
   {
      
      public static const _ec14491:String = "validationComplete";
      
      public static const _pe3193:String = "validationNicknamer";
      
      protected var _mr4345:_bf8454;
      
      public function _dj3826(param1:MovieClip, param2:String, param3:String)
      {
         super(param1,param2);
         if(param3 == null)
         {
            param3 = _bf8454._hw12952;
         }
         this._mr4345 = new _bf8454(_xo6614["key"],param3);
         _qi5262.push(this._mr4345);
         this._mr4345.addEventListener(FocusEvent.FOCUS_OUT,this._po4789,false,0,true);
         this._mr4345._tc5184 = false;
      }
      
      private function _po4789(param1:FocusEvent) : void
      {
         if(this._mr4345.txt != "")
         {
            this._mr4345._jr5664(_bf8454._xe2976);
            dispatchEvent(new _nk9893(_nk9893._fc11100,this._mr4345.txt));
         }
      }
      
      override public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         super._oi4498(param1,param2);
         _xo6614["description"]["txt"].width = _mc2836 - 20;
         if(_xo6614["titleKey"])
         {
            _xo6614["titleKey"]["txt"].width = _mc2836 - 20;
         }
         _xo6614["key"]["back"].width = _mc2836 - 34;
         _xo6614["key"]["okStatus"].x = _xo6614["key"]["back"].width;
         _xo6614["key"]["wrongStatus"].x = _xo6614["key"]["back"].width;
         _xo6614["key"]["checkingStatus"].x = _xo6614["key"]["back"].width;
      }
      
      public function set description(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["description"]["txt"] as TextField,param1);
         (_xo6614["description"]["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function set label(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["titleKey"]["txt"] as TextField,param1);
      }
      
      public function set _pg7024(param1:String) : void
      {
         _yq8362._bj8346(_xo6614["warning"]["txt"] as TextField,param1);
         (_xo6614["warning"]["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function _ca1167(param1:String, param2:String = "", param3:Array = null) : void
      {
         this._mr4345._jr5664(param1,param2,param3);
      }
      
      override protected function validate() : Boolean
      {
         var _loc1_:* = this._mr4345.txt !== "";
         return _loc1_ && super.validate();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._mr4345)
         {
            this._mr4345.removeEventListener(FocusEvent.FOCUS_OUT,this._po4789);
            this._mr4345.destroy();
            this._mr4345 = null;
         }
      }
   }
}

