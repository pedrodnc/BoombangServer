package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import src.multiuser.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.payments.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows._lx1779;
   
   public class _cl7790 extends _lx1779 implements _jk15536
   {
      
      public static const _uq546:String = "sendingCode";
      
      public static const _vr7048:String = "amountCode";
      
      public static const _fy4393:String = "checkingCode";
      
      public static const _gf116:String = "creatingPopUpPayment";
      
      public static const _yi974:String = "sendingDataPopUpPayment";
      
      public static const _ko9863:String = "checkingLimitCCCode";
      
      public static const _vw458:String = "errorCodeStep";
      
      public static const _oe4657:String = "okCodeStep";
      
      public static const _wq11339:String = "infoStep";
      
      public static const _ac3450:int = -2;
      
      private var _hx13283:int;
      
      private var _data:_nv12424;
      
      public function _cl7790(param1:_nv12424)
      {
         this._data = param1;
         super();
      }
      
      override public function destroy() : void
      {
         _kr10933._mw12849(_te13472._xc12683,this._sk542);
         _kr10933._mw12849(_te13472._ep10131,this._sk542);
         super.destroy();
      }
      
      override protected function init() : void
      {
         var _loc1_:_ja3764 = null;
         switch(this._data.type)
         {
            case "SMS":
               _loc1_ = new _lc2774(_cw8295("PaymentPhone") as MovieClip,_cl7790._uq546,this._data);
               (_loc1_ as _lc2774).details = _fg1060._mn8930._ad13455("window.payments.SMSDetails",this._data.text,this._data._rf7615);
               (_loc1_ as _lc2774)._kb5985 = "window.payments.putYourCodeHere";
               break;
            case "IVR":
               _loc1_ = new _lc2774(_cw8295("PaymentPhone") as MovieClip,_cl7790._uq546,this._data);
               (_loc1_ as _lc2774).details = _fg1060._mn8930._ad13455("window.payments.IVRDetails",this._data._rf7615);
               (_loc1_ as _lc2774)._kb5985 = "window.payments.putYourCodeHere";
               break;
            case "PPC":
            case "CC":
               _loc1_ = new _rj10079(_cw8295("SendingPaymentData") as MovieClip,_cl7790._ko9863);
               (_loc1_ as _rj10079).text = "";
               _kr10933._xo2736(_te13472._xc12683,this._sk542);
               _tk9805._my7087();
               break;
            case "PRC":
               _loc1_ = new _mo13034(_cw8295("PaymentNiceQuest") as MovieClip,_cl7790._uq546,this._data);
               (_loc1_ as _mo13034).details = _fg1060._mn8930._ad13455("window.payments.PRCDetails",this._data._rf7615);
               (_loc1_ as _mo13034)._kb5985 = "window.payments.putYourCodeHere";
         }
         if(_loc1_)
         {
            _wj9062._lt3848(_loc1_);
         }
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:_rj10079 = null;
         var _loc5_:_rj10079 = null;
         switch(param1)
         {
            case _vw458:
            case _uq546:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingPaymentData") as MovieClip,_cl7790._fy4393);
                  _loc4_.text = "window.payments.validatingCode";
                  _wj9062._lt3848(_loc4_);
                  _kr10933._xo2736(_te13472._ep10131,this._sk542);
                  _tk9805._lc3002(param3 as String);
               }
               return;
            case _gf116:
               if(param2 == _pm4313._vr15134)
               {
                  this.init();
               }
               return;
            case _vr7048:
               if(param2 == _pm4313._dh1979)
               {
                  _loc5_ = new _rj10079(_cw8295("SendingPaymentData") as MovieClip,_cl7790._yi974);
                  _loc5_.text = "";
                  _wj9062._lt3848(_loc5_);
                  _kr10933._xo2736(_te13472._xc12683,this._sk542);
                  _tk9805._ol9306(param3 as String);
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_ja3764 = null;
         var _loc4_:_ql2956 = null;
         var _loc5_:_ws12490 = null;
         var _loc6_:_fw8568 = null;
         var _loc7_:String = null;
         var _loc8_:_rj10079 = null;
         var _loc9_:_rj10079 = null;
         var _loc10_:_rj10079 = null;
         var _loc11_:_mo13034 = null;
         var _loc13_:int = int(param1._qp16092(0));
         var _loc14_:int = int(param1.items[0]);
         if(_loc13_ == _te13472._xc12683)
         {
            _loc2_ = int(param1._qp16092(1));
            if(_loc2_ == _te13472._fr7184)
            {
               if(_loc14_ == _kr10933._ad11893)
               {
                  _loc4_ = new _ql2956();
                  _loc4_._fd10383 = param1.items[1];
                  _loc4_._xf6706 = param1.items[2];
                  _loc4_._sa10429 = param1.items[3];
                  if(this._data.type == "CC")
                  {
                     _loc3_ = new _qi1248(_cw8295("PaymentCC") as MovieClip,_cl7790._vr7048,this._data,_loc4_);
                     (_loc3_ as _qi1248).details = _fg1060._mn8930._ad13455("window.payments.CCDetails");
                     (_loc3_ as _qi1248)._lq3416 = _fg1060._mn8930._ad13455("window.payments.CCsubtitle");
                  }
                  else if(this._data.type == "PPC")
                  {
                     _loc3_ = new _hb5002(_cw8295("PaymentPPC") as MovieClip,_cl7790._vr7048,this._data,_loc4_);
                  }
               }
               else
               {
                  _loc3_ = new _rj10079(_cw8295("ErrorDataPayment") as MovieClip,_cl7790._uq546);
                  (_loc3_ as _rj10079).text = "serverRespondedWithError";
               }
               _wj9062._lt3848(_loc3_);
            }
            else if(_loc2_ == _te13472._hb8962)
            {
               if(_loc14_ == _kr10933._ad11893)
               {
                  _loc5_ = new _ws12490();
                  _loc5_.id = param1.items[1];
                  _loc5_.url = param1.items[2];
                  _loc5_.method = param1.items[3];
                  _loc5_._df12920 = _jl5367._go4983(param1.items[4]);
                  _loc5_._yf6551 = _jl5367._go4983(param1.items[5]);
                  _loc6_ = new _fw8568(_cw8295("PaymentCCPopUp") as MovieClip,_cl7790._gf116,this._data,_loc5_);
                  _wj9062._lt3848(_loc6_);
               }
               else
               {
                  _loc7_ = "serverRespondedWithError";
                  if(param1.items[1])
                  {
                     _loc7_ = param1.items[1];
                  }
                  _loc8_ = new _rj10079(_cw8295("ErrorDataPayment") as MovieClip,_cl7790._uq546);
                  _loc8_.text = _loc7_;
                  _wj9062._lt3848(_loc8_);
               }
            }
         }
         else if(_loc14_ == _kr10933._ad11893)
         {
            _loc9_ = new _rj10079(_cw8295("AcceptedDataPayment") as MovieClip,_cl7790._oe4657);
            _loc9_.text = "window.payments.codeAccepted";
            _wj9062._lt3848(_loc9_);
         }
         else if(_loc14_ == _cl7790._ac3450)
         {
            _loc10_ = new _rj10079(_cw8295("ErrorDataPayment") as MovieClip,_cl7790._uq546);
            _loc10_.text = "window.payments.limitExceed";
            _wj9062._lt3848(_loc10_);
         }
         else
         {
            _loc11_ = new _mo13034(_cw8295("PaymentNiceQuest") as MovieClip,_cl7790._uq546,this._data);
            (_loc11_ as _mo13034)._ra1585();
            (_loc11_ as _mo13034).details = "window.payments.wrongCode";
            (_loc11_ as _mo13034)._kb5985 = "window.payments.putYourCodeHere";
            _wj9062._lt3848(_loc11_);
         }
      }
   }
}

