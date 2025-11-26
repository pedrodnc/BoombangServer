package src.tv.boombang.application.user.gui.windows.cancelDeactivation
{
   import flash.display.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _ho2030 extends _lx1779
   {
      
      public static const _ga7060:String = "changeKeyStep";
      
      public static const _al6278:String = "sendingKeyStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _wu2220:String = "errorKeyStep";
      
      public static const _jw6431:String = "okKeyStep";
      
      protected var _rt14900:Boolean;
      
      protected var _kn1341:String;
      
      public function _ho2030(param1:String = "", param2:Boolean = false)
      {
         this._rt14900 = param2;
         this._kn1341 = param1;
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         var _loc1_:_wl13876 = new _wl13876(_cw8295("DeactivationProgressWindow") as MovieClip,_ho2030._ga7060);
         _loc1_.title = "windows.cancelDeactivateKey.title";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
         _loc1_._sw13298 = this._kn1341;
         if(this._rt14900)
         {
            _loc1_._oi4498(300,_loc1_.height);
            _loc1_._xe10297 = _ja3764.BOTTOM;
            _loc1_._ay2315();
         }
         _wj9062._lt3848(_loc1_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:_sn4365 = null;
         var _loc5_:_rj10079 = null;
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ga7060:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _sn4365(_cw8295("KeyInputWindow") as MovieClip,_al6278);
                  _loc4_.title = "windows.cancelDeactivateKey.title";
                  _loc4_.description = "windows.cancelDeactivateKey.descriptionAction";
                  _loc4_.label = "windows.securityKey";
                  _loc4_._xe10297 = _ja3764.TOP_RIGHT;
                  if(this._rt14900)
                  {
                     _loc4_._oi4498(269,196);
                     _loc4_._xe10297 = _ja3764.BOTTOM;
                     _loc4_._ay2315();
                  }
                  _wj9062._lt3848(_loc4_);
               }
               return;
            case _al6278:
               if(param2 == _pm4313._dh1979)
               {
                  _loc5_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_of6230);
                  _loc5_.title = "windows.cancelDeactivateKey.title";
                  _loc5_.text = "windows.cancelDeactivateKey.cancelingDeactivation";
                  _loc5_._xe10297 = _ja3764.TOP_RIGHT;
                  if(this._rt14900)
                  {
                     _loc5_._oi4498(241,196);
                     _loc5_._xe10297 = _ja3764.BOTTOM;
                     _loc5_._ay2315();
                  }
                  _wj9062._lt3848(_loc5_);
                  _kr10933._xo2736(_te13472._ai13635,this._sk542);
                  _ld5065._wk1584(param3 as String);
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
         if(_loc5_ == _te13472._wj4721)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == _kr10933._ad11893)
            {
               _hv12530.getInstance()._uf6036 = _hv12530._ma6151;
               _loc3_ = new _rj10079(_cw8295("AcceptedDataCard") as MovieClip,_jw6431);
               _loc3_.title = "windows.cancelDeactivateKey.title";
               _loc3_.text = "windows.cancelDeactivateKey.deactivationCanceled";
               _loc3_._xe10297 = _ja3764.TOP_RIGHT;
               if(this._rt14900)
               {
                  _loc3_._oi4498(241,196);
                  _loc3_._xe10297 = _ja3764.BOTTOM;
                  _loc3_._ay2315();
               }
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_wu2220);
               _loc4_.title = "windows.cancelDeactivateKey.title";
               _loc4_.text = "serverRespondedWithError";
               _loc4_._xe10297 = _ja3764.TOP_RIGHT;
               if(this._rt14900)
               {
                  _loc4_._oi4498(241,196);
                  _loc4_._xe10297 = _ja3764.BOTTOM;
                  _loc4_._ay2315();
               }
               _wj9062._lt3848(_loc4_);
            }
         }
      }
   }
}

