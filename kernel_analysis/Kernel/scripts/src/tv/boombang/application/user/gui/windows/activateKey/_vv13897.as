package src.tv.boombang.application.user.gui.windows.activateKey
{
   import flash.display.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _vv13897 extends _lx1779
   {
      
      public static const _al6278:String = "sendingKeyStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _wu2220:String = "errorKeyStep";
      
      public static const _jw6431:String = "okKeyStep";
      
      public function _vv13897()
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
         var _loc1_:_hc7927 = new _hc7927(_cw8295("ActivateKeyForm") as MovieClip,_vv13897._al6278);
         _loc1_.title = "windows.activateKey.title";
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
            case _al6278:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_of6230);
                  _loc4_.title = "windows.activateKey.title";
                  _loc4_.text = "windows.activateKey.activating";
                  _loc4_._xe10297 = _ja3764.TOP_RIGHT;
                  _wj9062._lt3848(_loc4_);
                  _kr10933._xo2736(_te13472._ai13635,this._sk542);
                  _ld5065._fx9780(param3 as String);
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
         if(_loc5_ == _te13472._gm6419)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == _kr10933._ad11893)
            {
               _hv12530.getInstance()._uf6036 = _hv12530._ma6151;
               _loc3_ = new _rj10079(_cw8295("AcceptedDataCard") as MovieClip,_jw6431);
               _loc3_.title = "windows.activateKey.title";
               _loc3_.text = "windows.activateKey.securityKeyCorrect";
               _loc3_._xe10297 = _ja3764.TOP_RIGHT;
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_wu2220);
               _loc4_.title = "windows.activateKey.title";
               _loc4_.text = "windows.checkingSecurityKey";
               _loc4_._xe10297 = _ja3764.TOP_RIGHT;
               _wj9062._lt3848(_loc4_);
            }
         }
      }
   }
}

