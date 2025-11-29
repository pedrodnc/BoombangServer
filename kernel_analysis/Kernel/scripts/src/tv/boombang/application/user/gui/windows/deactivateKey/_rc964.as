package src.tv.boombang.application.user.gui.windows.deactivateKey
{
   import flash.display.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _rc964 extends _lx1779
   {
      
      public static const _ks5428:String = "sendingDeactivationStep";
      
      public static const _fw10509:String = "checkingDeactivationStep";
      
      public static const _tw7209:String = "errorKeyStep";
      
      public static const _vt13807:String = "okKeyStep";
      
      public function _rc964()
      {
         super();
      }
      
      override protected function init() : void
      {
         var _loc1_:_bu2692 = new _bu2692(_cw8295("DeactivateKeyForm") as MovieClip,_rc964._ks5428);
         _loc1_.title = "windows.deactivateKey.title";
         _loc1_._xe10297 = _ja3764.TOP_RIGHT;
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
            case _ks5428:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_fw10509);
                  _loc4_.title = "windows.deactivateKey.title";
                  _loc4_.text = "windows.deactivateKey.deactivating";
                  _loc4_._xe10297 = _ja3764.TOP_RIGHT;
                  _wj9062._lt3848(_loc4_);
                  _kr10933._xo2736(_te13472._ai13635,this._sk542);
                  _ld5065._yi15698();
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
         if(_loc5_ == _te13472._op6896)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == 1)
            {
               _hv12530.getInstance()._uf6036 = _hv12530._lb6305;
               _loc3_ = new _rj10079(_cw8295("AcceptedDataCard") as MovieClip,_vt13807);
               _loc3_.title = "windows.deactivateKey.title";
               _loc3_.text = "windows.deactivateKey.deactivatingOk";
               _loc3_._xe10297 = _ja3764.TOP_RIGHT;
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_tw7209);
               _loc4_.title = "windows.deactivateKey.title";
               _loc4_.text = "serverRespondedWithError";
               _loc4_._xe10297 = _ja3764.TOP_RIGHT;
               _wj9062._lt3848(_loc4_);
            }
         }
      }
   }
}

