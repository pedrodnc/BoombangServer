package src.tv.boombang.application.user.gui.windows.changeNickName
{
   import flash.display.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _iw14805 extends _lx1779
   {
      
      public static const _ql11306:String = "startStep";
      
      public static const _hl13626:String = "enterToSendNickName";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _fq1822:String = "errorInProcessStep";
      
      public static const _xp7164:String = "AcceptKeyStep";
      
      private static const _wk9182:String = "nickChecking";
      
      private static const _dd11322:String = "nickValid";
      
      private static const _wt475:String = "nickWrong";
      
      private var _ea7450:_dj3826;
      
      private var _hw5941:String;
      
      private var _ae9284:Boolean = false;
      
      private var _ry8643:String;
      
      private var _bo11707:int;
      
      public function _iw14805(param1:int)
      {
         super();
         this._bo11707 = param1;
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._js2213,this._sk542);
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
         if(this._ea7450 != null)
         {
            this._ea7450.removeEventListener(_nk9893._fc11100,this._gr16099);
            this._ea7450.destroy();
            this._ea7450 = null;
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:_bn9270 = null;
         var _loc2_:MovieClip = _cw8295("ChangeNickName") as MovieClip;
         _loc1_ = new _bn9270(_loc2_,_ql11306);
         if(this._bo11707 == 2)
         {
            _loc1_._mh13262 = "windows.nickName.lastWarning";
            _loc1_._th13516 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("windows.nickName.lastDescription",_fg1060.data.name);
         }
         else
         {
            _loc1_._th13516 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("windows.nickName.description",_fg1060.data.name);
            _loc2_["warning"].visible = false;
         }
         _loc1_._ca4412 = "windows.nickName.question";
         _loc1_._xe10297 = _ja3764.BOTTOM_LEFT;
         _loc1_._ay2315(_ja3764.TOP,24,40,17774,18,-55);
         _wj9062._lt3848(_loc1_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _fg1060.data._je8982 = 0;
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ql11306:
               if(param2 == _pm4313._dh1979)
               {
                  this._ea7450 = new _dj3826(_cw8295("NickNameInputWindow") as MovieClip,_hl13626,_gn3649._cq16064);
                  this._ea7450.addEventListener(_nk9893._fc11100,this._gr16099);
                  this._ea7450.description = "windows.nickName.nuevoNombre";
                  this._ea7450._pg7024 = "windows.nickName.warning";
                  this._ea7450._oi4498();
                  this._ea7450._xe10297 = _ja3764.BOTTOM_LEFT;
                  this._ea7450._ay2315(_ja3764.TOP,24,40,17774,18,-55);
                  _wj9062._lt3848(this._ea7450);
               }
               return;
            case _hl13626:
               if(param3 != null)
               {
                  this._ry8643 = param3 as String;
                  if(this._hw5941 == _wk9182)
                  {
                     this._ae9284 = true;
                  }
                  else if(this._hw5941 == _dd11322)
                  {
                     this._qf10564(this._ry8643);
                  }
               }
               return;
            default:
               return;
         }
      }
      
      private function _qf10564(param1:String) : void
      {
         var _loc2_:_rj10079 = new _rj10079(_cw8295("SendingDataCardMini") as MovieClip,_of6230);
         _loc2_.text = "windows.checkingSecurityKey";
         _loc2_._oi4498();
         _loc2_._xe10297 = _ja3764.BOTTOM_LEFT;
         _loc2_._ay2315(_ja3764.TOP,24,40,17774,18,-55);
         _wj9062._lt3848(_loc2_);
         this._ae9284 = false;
         this._hw5941 = _wt475;
         _kr10933._xo2736(_te13472._js2213,this._sk542);
         _vv145._sp2002(param1);
      }
      
      private function _gr16099(param1:_nk9893) : void
      {
         this._hw5941 = _wk9182;
         _kr10933._xo2736(_te13472._js2213,this._sk542);
         _vv145._dm10335(param1.name);
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(param1._qp16092(0));
         var _loc4_:int = int(param1._qp16092(1));
         if(_loc3_ == _te13472._js2213)
         {
            _kr10933._mw12849(_te13472._js2213,this._sk542);
            switch(_loc4_)
            {
               case _te13472._yq12633:
                  _loc2_ = int(param1.items[0]);
                  switch(_loc2_)
                  {
                     case _vv145._dm4177:
                        this._ea7450._ca1167(_gn3649.STATUS_OK);
                        this._hw5941 = _dd11322;
                        if(this._ae9284)
                        {
                           this._qf10564(this._ry8643);
                        }
                        break;
                     case _vv145._ra10685:
                        param1.items.splice(0,1);
                        this._ae9284 = false;
                        this._hw5941 = _wt475;
                        this._ea7450._ca1167(_gn3649._if7748,"windows.nickName.nameExists",param1.items);
                        break;
                     case _kr10933._qj7323:
                        this._ea7450._ca1167(_gn3649._if7748,"serverRespondedWithError");
                        this._hw5941 = _wt475;
                  }
                  break;
               case _te13472._fd4087:
                  _loc2_ = int(param1.items[0]);
                  switch(_loc2_)
                  {
                     case _kr10933._ad11893:
                        this._cj14254();
                        _fg1060.data.name = this._ry8643;
                        _fg1060.data._je8982 = 0;
                        break;
                     case _kr10933._vd12313:
                        this._hw5941 = _wt475;
                        this._ae9284 = false;
                        this._mf12348();
                  }
            }
         }
         if(_loc3_ == _te13472._ai13635)
         {
            if(_loc4_ == _te13472._al13400)
            {
               _loc2_ = int(param1.items[0]);
               if(_loc2_ == _kr10933._ad11893)
               {
                  _pr2018.getInstance().remove(this);
               }
            }
         }
      }
      
      private function _mf12348() : void
      {
         var _loc1_:_rj10079 = new _rj10079(_cw8295("ErrorDataCardMini") as MovieClip,_of6230);
         _loc1_.text = "windows.nickName.wrongChange";
         _loc1_._oi4498();
         _loc1_._xe10297 = _ja3764.BOTTOM_LEFT;
         _loc1_._ay2315(_ja3764.TOP,24,40,17774,18,-55);
         _wj9062._lt3848(_loc1_);
      }
      
      private function _cj14254() : void
      {
         var _loc1_:_rj10079 = new _rj10079(_cw8295("AcceptedDataCardMini") as MovieClip,_of6230);
         _loc1_.text = _fg1060._mn8930._ad13455("windows.nickName.correctChange",this._ry8643);
         _loc1_._oi4498();
         _loc1_._xe10297 = _ja3764.BOTTOM_LEFT;
         _loc1_._ay2315(_ja3764.TOP,24,40,17774,18,-55);
         _wj9062._lt3848(_loc1_);
      }
   }
}

