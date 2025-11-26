package src.tv.boombang.application.global.gui.windows
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   
   public class _sn4365 extends _va2030
   {
      
      protected var _mr4345:_gn3649;
      
      public function _sn4365(param1:MovieClip, param2:String, param3:String = null)
      {
         super(param1,param2);
         if(param3 == null)
         {
            param3 = _gn3649._hw12952;
         }
         this._mr4345 = new _gn3649(_xo6614["key"],param3);
         _qi5262.push(this._mr4345);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._mr4345.destroy();
      }
      
      override public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         super._oi4498(param1,param2);
         _xo6614["description"]["txt"].width = _mc2836 - 20;
         if(_xo6614["titleKey"])
         {
            _xo6614["titleKey"]["txt"].width = _mc2836 - 20;
         }
         _xo6614["key"]["back"].width = _mc2836 - 20;
         _xo6614["key"]["okStatus"].x = _xo6614["key"]["back"].width;
         _xo6614["key"]["wrongStatus"].x = _xo6614["key"]["back"].width;
         _xo6614["key"]["checkingStatus"].x = _xo6614["key"]["back"].width;
      }
      
      public function set description(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["description"]["txt"] as TextField,param1);
         (_xo6614["description"]["txt"] as TextField).autoSize = TextFieldAutoSize.LEFT;
      }
      
      public function set _bu15190(param1:uint) : void
      {
         _xv14798._ts14032(_xo6614["description"]["txt"],param1);
      }
      
      public function set _ec2877(param1:uint) : void
      {
         if(_xo6614["titleKey"])
         {
            _xv14798._ts14032(_xo6614["titleKey"],param1);
         }
      }
      
      public function set label(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["titleKey"]["txt"] as TextField,param1);
      }
      
      override protected function validate() : Boolean
      {
         return this._mr4345.validate();
      }
      
      public function get inputField() : _gn3649
      {
         return this._mr4345;
      }
   }
}

