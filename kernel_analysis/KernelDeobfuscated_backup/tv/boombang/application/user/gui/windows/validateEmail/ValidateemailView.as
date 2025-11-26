package src.tv.boombang.application.user.gui.windows.validateEmail
{
   import flash.display.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _mg401 extends _lx1779 implements _jk15536
   {
      
      public static const _ek7697:String = "validateKeyStep";
      
      public static const _ab14107:String = "sendingKeyStep";
      
      public static const _wu2220:String = "errorKeyStep";
      
      public static const _jw6431:String = "okKeyStep";
      
      protected var _rt14900:Boolean;
      
      protected var _kn1341:String;
      
      private var _jq8875:Boolean;
      
      public function _mg401()
      {
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         var _loc1_:_uj13184 = new _uj13184(_cw8295("ValidateEmailWindow") as MovieClip,_mg401._ek7697,_gn3649._rt9913);
         _loc1_.title = "windows.validateEmail.title";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         _loc1_._ih11223 = "windows.validateEmail.email";
         _loc1_._ed12820 = "windows.validateEmail.repeatEmail";
         _wj9062._lt3848(_loc1_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:_rj10079 = null;
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ek7697:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_ab14107);
                  _loc4_.title = "windows.validateEmail.title";
                  _loc4_.text = "windows.validateEmail.sendingEmail";
                  _loc4_._xe10297 = _ja3764.TOP_RIGHT;
                  _wj9062._lt3848(_loc4_);
                  _kr10933._xo2736(_te13472._ai13635,this._sk542);
                  _ld5065.validateEmail(param3._tm10079,param3.newsLetter);
                  this._jq8875 = param3.newsLetter;
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_rj10079 = null;
         var _loc4_:_rj10079 = null;
         var _loc5_:int = int(param1._qp16092(1));
         if(_loc5_ == _te13472._jt9643)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == _kr10933._ad11893)
            {
               _loc3_ = new _rj10079(_cw8295("ValidateCorrectWindow") as MovieClip,_jw6431);
               _loc3_.title = "windows.validateEmail.title";
               _loc3_.text = "windows.validateEmail.validationMessage";
               _loc3_._xe10297 = _ja3764.TOP_RIGHT;
               _fg1060.data._ma12295 = this._jq8875;
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_wu2220);
               _loc4_.title = "windows.validateEmail.title";
               _loc4_.text = "serverRespondedWithError";
               _loc4_._xe10297 = _ja3764.TOP_RIGHT;
               _wj9062._lt3848(_loc4_);
            }
         }
      }
   }
}

