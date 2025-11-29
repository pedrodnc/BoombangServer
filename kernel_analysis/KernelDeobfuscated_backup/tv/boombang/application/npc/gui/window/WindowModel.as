package src.tv.boombang.application.npc.gui.window
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.events.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _fy5262 extends _lx1779
   {
      
      public static const _al6278:String = "sendingKeyStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _wu2220:String = "errorKeyStep";
      
      public static const _jw6431:String = "okKeyStep";
      
      private var _oy752:int;
      
      public function _fy5262(param1:int)
      {
         this._oy752 = param1;
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._sm12637,this._sk542);
      }
      
      override protected function init() : void
      {
         var _loc1_:_rj10079 = null;
         var _loc2_:_sr3383 = _hv12530.getInstance()._ef4675(this._oy752);
         if(_loc2_)
         {
            if(_loc2_.status == _sr3383._bh8866)
            {
               this._qa12882(0);
            }
            else
            {
               this._qa12882(1);
            }
         }
         else
         {
            _loc1_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_of6230);
            _loc1_.title = "windows.event." + this._oy752 + ".inputCode.title";
            _loc1_.text = "";
            _loc1_._ty11227 = 16777215;
            _loc1_._xe10297 = _ja3764.TOP_RIGHT;
            _loc1_.backgroundColor = 4596480;
            _loc1_._xl9813 = 6697728;
            _loc1_._oi4498(310);
            _wj9062._lt3848(_loc1_);
            _kr10933._xo2736(_te13472._sm12637,this._sk542);
            _li11200._kx10385(this._oy752);
         }
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:_rj10079 = null;
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
            dispatchEvent(new Event("onCloseWindow"));
         }
         switch(param1)
         {
            case _al6278:
               if(param2 == _pm4313._dh1979)
               {
                  _loc4_ = new _rj10079(_cw8295("SendingDataCard") as MovieClip,_of6230);
                  _loc4_.title = "windows.event." + this._oy752 + ".inputCode.title";
                  _loc4_.text = "windows.event.inputCode.sendingCode";
                  _loc4_._ty11227 = 16777215;
                  _loc4_._xe10297 = _ja3764.TOP_RIGHT;
                  _loc4_.backgroundColor = 4596480;
                  _loc4_._xl9813 = 6697728;
                  _loc4_._oi4498(310);
                  _wj9062._lt3848(_loc4_);
                  _kr10933._xo2736(_te13472._sm12637,this._sk542);
                  _li11200._lc3002(this._oy752,param3 as String);
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:_sr3383 = null;
         var _loc3_:_rj10079 = null;
         var _loc4_:_rj10079 = null;
         var _loc5_:int = int(param1._qp16092(1));
         var _loc6_:int = int(param1.items[0]);
         if(_loc5_ == _te13472._rx16017)
         {
            _loc2_ = new _sr3383();
            _loc2_.id = this._oy752;
            if(_loc6_ == _kr10933._ad11893)
            {
               _loc2_.status = _sr3383._eg13506;
            }
            else
            {
               _loc2_.status = _sr3383._bh8866;
            }
            _hv12530.getInstance()._ch7698(_loc2_);
            this._qa12882(_loc6_);
         }
         if(_loc5_ == _te13472._hl9173)
         {
            if(_loc6_ == _kr10933._ad11893)
            {
               _loc2_ = _hv12530.getInstance()._ef4675(this._oy752);
               _loc2_.status = _sr3383._bh8866;
               _loc3_ = new _rj10079(_cw8295("AcceptedDataCard") as MovieClip,_jw6431);
               _loc3_.title = "windows.event." + this._oy752 + ".inputCode.title";
               _loc3_.text = "windows.event.inputCode.correctCode";
               _loc3_._ty11227 = 16777215;
               _loc3_._xe10297 = _ja3764.TOP_RIGHT;
               _loc3_.backgroundColor = 4596480;
               _loc3_._xl9813 = 6697728;
               _loc3_._oi4498(310);
               _wj9062._lt3848(_loc3_);
            }
            else
            {
               _loc4_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_wu2220) as _rj10079;
               _loc4_.title = "windows.event." + this._oy752 + ".inputCode.title";
               _loc4_._ty11227 = 16777215;
               _loc4_.backgroundColor = 4596480;
               _loc4_._xl9813 = 6697728;
               _loc4_.text = "windows.event.inputCode.codeSendError";
               _loc4_._xe10297 = _ja3764.TOP_RIGHT;
               _loc4_._oi4498(310);
               _wj9062._lt3848(_loc4_);
            }
         }
      }
      
      private function _qa12882(param1:int) : void
      {
         var _loc2_:_sn4365 = null;
         var _loc3_:_rj10079 = null;
         if(param1 == _kr10933._ad11893)
         {
            _loc2_ = new _sn4365(_cw8295("KeyInputWindow") as MovieClip,_fy5262._al6278,_gn3649._hm8630) as _sn4365;
            _loc2_.inputField.textColor = 4596480;
            _loc2_.inputField._nd15322(12);
            _loc2_.inputField._yi13970(-1);
            _loc2_.title = "windows.event." + this._oy752 + ".inputCode.title";
            _loc2_.backgroundColor = 4596480;
            _loc2_._ty11227 = 16777215;
            _loc2_._xl9813 = 6697728;
            _loc2_.label = "windows.event." + this._oy752 + ".inputCode.label";
            _loc2_._xe10297 = _ja3764.TOP_RIGHT;
            _loc2_.description = "windows.event." + this._oy752 + ".inputCode.description";
            _loc2_._kf3772 = 6697728;
            _loc2_._bu15190 = 16777215;
            _loc2_._oi4498(310);
            _wj9062._lt3848(_loc2_);
         }
         else
         {
            _loc3_ = new _rj10079(_cw8295("ErrorDataCard") as MovieClip,_wu2220);
            _loc3_.title = "windows.event." + this._oy752 + ".inputCode.title";
            _loc3_._ty11227 = 16777215;
            _loc3_.text = "windows.event.inputCode.codeSent";
            _loc3_._xe10297 = _ja3764.TOP_RIGHT;
            _loc3_.backgroundColor = 4596480;
            _loc3_._xl9813 = 6697728;
            _loc3_._oi4498(310);
            _wj9062._lt3848(_loc3_);
         }
      }
   }
}

