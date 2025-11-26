package src.tv.boombang.application.user.gui.windows.activateIntercambio
{
   import flash.display.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   
   public class _uq4405 extends _lx1779
   {
      
      public static const _ql11306:String = "startStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _ef9526:String = "wrongKeyStep";
      
      public static const _fq1822:String = "errorInProcessStep";
      
      public static const _hs5173:String = "correctKeyStep";
      
      public function _uq4405()
      {
         super();
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         var _loc1_:_sn4365 = new _sn4365(_cw8295("KeyInputWindow") as MovieClip,_ql11306);
         _loc1_._oi4498(232,196);
         _loc1_._ay2315();
         _loc1_.title = "windows.exchange.exchangeTitle";
         _loc1_.description = "windows.exchange.firstStepDescription";
         _loc1_.label = "windows.securityKey";
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
            case _ql11306:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_of6230);
                  _loc4_.title = "windows.exchange.exchangeTitle";
                  _loc4_.text = "windows.checkingSecurityKey";
                  _loc4_._oi4498(232,196);
                  _loc4_._ay2315();
                  _wj9062._lt3848(_loc4_);
                  _ld5065._pe4892(param3 as String,_ld5065._hn11707);
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:* = false;
         var _loc5_:int = int(param1._qp16092(1));
         if(_loc5_ == _te13472._yj7183)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == _kr10933._ad11893)
            {
               _loc3_ = param1.items[2];
               _ld5065._aq15017("1",_loc3_);
            }
            else if(_loc2_ == _kr10933._vd12313)
            {
               this._tq11663();
            }
            else
            {
               this._mf12348();
            }
         }
         if(_loc5_ == _te13472._ao3500)
         {
            _loc4_ = param1.items[1] == 1;
            if(_loc4_)
            {
               _pr2018.getInstance().remove(this);
            }
            else
            {
               this._tq11663();
            }
         }
      }
      
      private function _mf12348() : void
      {
         var _loc1_:_rj10079 = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_of6230);
         _loc1_.title = "windows.exchange.exchangeTitle";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._oi4498(232,196);
         _loc1_._ay2315();
         _wj9062._lt3848(_loc1_);
      }
      
      private function _tq11663() : void
      {
         var _loc1_:MovieClip = _cw8295("KeyInputWindow") as MovieClip;
         var _loc2_:_sn4365 = new _sn4365(_loc1_,_ql11306);
         _loc2_._oi4498(232,196);
         _loc2_._ay2315();
         _loc2_.title = "windows.exchange.exchangeTitle";
         _loc2_.description = "windows.securityCodeWasIncorrect";
         _yq8362._np7275(_loc1_["description"]["txt"],15466276);
         _loc2_.label = "windows.securityKey";
         _wj9062._lt3848(_loc2_);
      }
   }
}

