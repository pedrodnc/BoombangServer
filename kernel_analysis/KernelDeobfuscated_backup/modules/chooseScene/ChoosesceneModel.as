package src.modules.chooseScene
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.ExternalInterface;
   import flash.geom.*;
   import flash.media.*;
   import src.*;
   import src.allData.*;
   import src.allData.country.*;
   import src.allData.scene.typeEscenarios.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.antitimos._aq7621;
   import src.modules.baneos.*;
   import src.modules.bpad.*;
   import src.modules.chooseIsla.*;
   import src.modules.chooseScene.ManagerPaneles.*;
   import src.modules.chooseScene.managerBanners.*;
   import src.modules.chooseScene.managerSkinChooseScene.*;
   import src.modules.chooseScene.panelInferior.*;
   import src.modules.chooseScene.panelMariquita.*;
   import src.modules.creditos._nr1168;
   import src.modules.creditos._sd10289;
   import src.modules.enterScene._yc4848;
   import src.modules.login.*;
   import src.modules.member._ef2682;
   import src.modules.notificaciones._uv13537;
   import src.modules.ticketManager.*;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   import src.person.*;
   import src.tv.boombang.application.delayed_gift.controller.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.missions.gui.windows.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.application.navigation.gui.windows.*;
   import src.tv.boombang.application.payments.gui.windows.*;
   import src.tv.boombang.application.user.gui.windows.*;
   import src.tv.boombang.application.user.gui.windows.activateKey.*;
   import src.tv.boombang.application.user.gui.windows.cancelDeactivation.*;
   import src.tv.boombang.application.user.gui.windows.changeEmail.*;
   import src.tv.boombang.application.user.gui.windows.changeNickName.*;
   import src.tv.boombang.application.user.gui.windows.changePassword.*;
   import src.tv.boombang.application.user.gui.windows.deactivateKey.*;
   import src.tv.boombang.application.user.gui.windows.deleteAccount.*;
   import src.tv.boombang.application.user.gui.windows.editConnections.*;
   import src.tv.boombang.application.user.gui.windows.manageSubscriptions.*;
   import src.tv.boombang.application.user.gui.windows.userOptions.*;
   import src.tv.boombang.application.user.gui.windows.validateEmail.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.popup.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   import src.utils.boombang.*;
   
   public class _tj14068 implements _pk5732
   {
      
      private static var _uu6907:int;
      
      private static var _gm11498:Boolean;
      
      private static var _sl12580:_cd9992;
      
      private static var _rj7691:Boolean;
      
      private static const _ok2229:String = "mcElement";
      
      private static const _xs14420:String = "mcPerson";
      
      private static const _kr8514:String = "mcLogo";
      
      private static const _lh4911:String = "mcLogoChile";
      
      private static const _qm7106:String = "mcLogoIngles";
      
      public static const _je11002:int = 687;
      
      public static const _oa4617:int = 11;
      
      public static const _yd4719:int = 677;
      
      public static const _du16160:int = 673;
      
      public static const _wb13076:int = 751;
      
      public static const _bo338:int = 817;
      
      public static const _ab5760:int = 455;
      
      public static const _gt9434:int = 448;
      
      public static const _da10834:int = 5;
      
      public static const _sv3640:int = 1000;
      
      public static const _oc8004:int = 14;
      
      public static const _xk5405:int = 211;
      
      public static const _um4118:int = 615;
      
      public static const _sb16001:int = 0;
      
      public static const _og9910:int = 27;
      
      public static const _wm6831:int = 25;
      
      public static const _lr3093:int = 465;
      
      public static const _dy10666:int = 340;
      
      private static const _eu9441:String = "normal";
      
      private static const _co14458:String = "caida";
      
      private static const _lf16174:String = "impactoPersonaje";
      
      private static const _uu7912:String = "florDetenida";
      
      private static const _pl15463:String = "baneo";
      
      private static const _fr6610:String = "comienzo";
      
      private static const _dh14720:String = "fin";
      
      public static const _ai7182:int = 0;
      
      public static const _qt10717:int = 1;
      
      public static const _ih6214:int = 2;
      
      public static const _ef11790:int = 3;
      
      public static const _du15451:int = 4;
      
      public static const _mf6462:int = 5;
      
      public static const _rw10592:int = 6;
      
      private static const _mq10576:int = 2;
      
      public static const _mx3949:int = 0;
      
      public static const _yh7642:int = 1;
      
      public static const _ee8439:int = 2;
      
      public static const _hl4426:int = 3;
      
      public static const _wy10387:int = 4;
      
      public static const _ig3408:int = 5;
      
      public static const _vx8442:int = 6;
      
      public static const _rt10916:int = 7;
      
      private static var _nm751:int = 0;
      
      private static var _cv5415:int = 0;
      
      private static var _hy504:int = 0;
      
      private static var _bx7660:int = 0;
      
      private static var _ry1435:int = 350 + 92;
      
      private static var _xu9733:int = 250 + 137;
      
      private static var _sa5279:int = -400 + 137;
      
      private static var _kl906:int = _xu9733 + 50;
      
      private static var _eb4836:int = 0;
      
      private var _qt15626:_la15609;
      
      private var _nt7956:MovieClip;
      
      private var _ju13599:int;
      
      private var _dn9880:_bi12161;
      
      private var _vc10957:_ij15863;
      
      private var _hd13280:_aq7621;
      
      private var _jb3891:_id1792;
      
      private var _fv14977:_yc4848;
      
      private var _gy10361:_nw11343;
      
      private var _pg10414:_ty11551;
      
      public var _fd7907:_am5321;
      
      private var _dq1230:_if9447;
      
      private var _ko15136:_db15471;
      
      private var _qm4970:_oo3091;
      
      private var _wc6296:_al12382;
      
      private var logs:_qn13596;
      
      private var _aa9438:Boolean;
      
      private var _gg7070:_od6763;
      
      private var _lt10352:MovieClip;
      
      private var _jf8323:MovieClip;
      
      private var _rj9894:MovieClip;
      
      private var _tu12453:MovieClip;
      
      private var _vy1314:MovieClip;
      
      private var _pt4387:MovieClip;
      
      private var _xc3420:MovieClip;
      
      private var _ed9532:MovieClip;
      
      private var _ee15533:MovieClip;
      
      private var _te16060:MovieClip;
      
      private var _xq15076:MovieClip;
      
      private var _wa8626:_er995;
      
      private var _su2721:Array;
      
      private var _vt566:Array;
      
      private var _xd1506:Array;
      
      private var _xe10392:_ef2682;
      
      private var _bg10415:_nr1168;
      
      private var _tl7614:_uv13537;
      
      private var _tl9155:_sd10289;
      
      private var _ql14855:_iw14805;
      
      private var _tr9195:_vd9631;
      
      private var _of15040:_rp11988;
      
      private var _nv14017:_sl13397;
      
      private var _ja5278:int = 0;
      
      public function _tj14068(param1:_aq7621, param2:_yc4848, param3:MovieClip, param4:MovieClip, param5:Array, param6:Array, param7:_ef2682, param8:_nr1168, param9:_uv13537, param10:_sd10289)
      {
         var _loc11_:_be1002 = null;
         var _loc12_:String = null;
         super();
         if(_cc7688._bd8175)
         {
            _xu9733 = 250 + 137 + 20;
            _kl906 = _xu9733 + 30;
         }
         if(!_sl12580)
         {
            _sl12580 = _cd9992._as7636;
         }
         this._dn9880 = new _ij15863();
         this._vc10957 = _ij15863(this._dn9880);
         this._vc10957.addEventListener(_kq15543._th860,this._bw11981);
         this._hd13280 = param1;
         this._vc10957.addEventListener(_tc13553._tf16043,this._bw11981);
         this._fv14977 = param2;
         this._nt7956 = param3;
         this._jb3891 = _id1792._np546;
         this._jb3891.addEventListener(_id1792._ll7983,this._fj10106,false,0,true);
         this._xq15076 = param4;
         this._su2721 = param5;
         this._vt566 = param6;
         this._xd1506 = _xh11245._iq14018();
         this._xe10392 = param7;
         this._bg10415 = param8;
         this._tl7614 = param9;
         this._fv14977.addEventListener(_kq15543._uy12608,this._dv5381);
         this._tl9155 = param10;
         this._aa9438 = false;
         this._jd12664 = _ai7182;
         this.logs = _qn13596.getInstance();
         if(_cv5415 == 0)
         {
            _loc11_ = _be1002.getInstance();
            if(_hv12530.getInstance()._jr10446 >= 20)
            {
               _loc12_ = "+20";
            }
            else
            {
               _loc12_ = _hv12530.getInstance()._jr10446.toString();
            }
            (_lh7543.get(_wl11587) as _wl11587)._mc9894(1,"connections_count",_loc12_,2);
            (_lh7543.get(_wl11587) as _wl11587)._mc9894(2,"lang",_cc7688._yg212,2);
            _rj7691 = true;
         }
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/flower_power");
         ExternalInterface.call("OutArea");
         _kr10933._xo2736(_te13472._dt8491,this._of1737);
      }
      
      public static function get _of1435() : int
      {
         return _cv5415;
      }
      
      public function destroy() : void
      {
         _pr2018.getInstance().removeAll();
         if(this._nv14017)
         {
            this._nv14017.removeEventListener(_sl13397._wc11086,this._we1942);
         }
         _kr10933._mw12849(_te13472._dt8491,this._of1737);
         this._gu3152();
         this._wa8626.destroy();
         this._bb1926();
         if(this._tr9195 != null)
         {
            this._tr9195.removeEventListener(_pw5334._rr2751,this._yy993);
            this._tr9195.removeEventListener(_pw5334._uk11953,this._hl11318);
            this._tr9195.removeEventListener(_pw5334._dt4861,this._hk7303);
            this._tr9195.destroy();
            this._tr9195 = null;
         }
         if(this._ko15136 != null)
         {
            this._ko15136.destroy();
            this._ko15136 = null;
         }
         this._vc10957.removeEventListener(_kq15543._th860,this._bw11981);
         this._vc10957.removeEventListener(_tc13553._tf16043,this._bw11981);
         this._fv14977.removeEventListener(_kq15543._uy12608,this._dv5381);
         this._vc10957.destroy();
         this._vc10957 = null;
         this._dn9880 = null;
         this._jb3891.removeEventListener(_id1792._ll7983,this._fj10106);
         this._jb3891._hu12389();
         _xv14798._ff5056(this._jf8323);
         ExternalInterface.call("function(){InArea();}");
         _gx6661.getInstance().hide();
         this._fs12715();
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function _ep5216(param1:int) : void
      {
         ++_cv5415;
         this._ja5278 = param1;
         if(_cc7688._qs3725 == _cc7688._gk8815)
         {
         }
         if(this._gy10361 == null)
         {
            this._gy10361 = new _nw11343();
         }
         this._yv3159();
         this._wa8626 = new _er995(this._su2721,this._aa181,this._gy10361,this._vc10957,this._pg10414,this._hd13280,this._xe10392,this._bg10415,this._rr13443);
         this._ko15136 = new _db15471(this,this._vc10957);
         _xv14798._dp2863(this._jf8323,this._aj11016);
         if(this._ja5278 == _ee8439 || this._ja5278 == _vx8442)
         {
            _gm11498 = true;
         }
         switch(this._ja5278)
         {
            case _mx3949:
            case _yh7642:
               this._rb2419();
               this._jf8323.gotoAndStop(_eu9441);
               return;
            case _hl4426:
               this._ud2033();
               this._jf8323.gotoAndStop(_eu9441);
               return;
            case _rt10916:
            case _ig3408:
            case _ee8439:
               this._ud2033();
               this._es11222();
               this._jf8323.gotoAndPlay(_co14458);
               return;
            case _wy10387:
               this._ud2033();
               this._jf8323.gotoAndStop(_pl15463);
               return;
            default:
               return;
         }
      }
      
      private function _ew5863() : void
      {
         var _loc1_:Boolean = false;
         if(_fg1060.data._je8982 > 0)
         {
            this._ql14855 = new _iw14805(_fg1060.data._je8982);
            _pr2018.getInstance().add(this._ql14855,440,535);
         }
         if(_fg1060.data._uf6036 == _hv12530._kr15451 && _fg1060.data._jr10446 >= 10)
         {
            if((_cv5415 - 1) % _da10834 == 0)
            {
               this._qt15626 = new _la15609();
               this._qt15626.addEventListener(_pm4313._dh1979,this._vg8488);
               _pr2018.getInstance().add(this._qt15626,_bo338,_gt9434);
            }
         }
         else if(_fg1060.data._uf6036 == _hv12530._lb6305)
         {
            if((_cv5415 - 1) % _da10834 == 0)
            {
               _pr2018.getInstance().add(new _jr4051(),_bo338,_ab5760);
            }
         }
         if(_fg1060.data._jr10446 == 0)
         {
            this._os10562();
         }
         if(Boolean(_rj7691) && !PopUpManagerImpl.getInstance()._yy14935)
         {
            if(_gx6661.getInstance().show())
            {
               _loc1_ = true;
               this._vh4126(true);
            }
            if(!_loc1_)
            {
               this._oq5692();
            }
         }
      }
      
      public function _ow9881() : void
      {
         if(this._ko15136 != null)
         {
            this._ko15136.init();
         }
      }
      
      public function _vo2826() : Boolean
      {
         return this._aa9438;
      }
      
      private function _xo11848(param1:Boolean) : void
      {
         this._aa9438 = param1;
      }
      
      private function _aj11016() : void
      {
         switch(this._jf8323.currentLabel)
         {
            case _eu9441:
               switch(this._ja5278)
               {
                  case _ee8439:
                  case _mx3949:
                  case _vx8442:
                     this._xo11848(true);
                     break;
                  case _ig3408:
                  case _yh7642:
                     this._yd10125();
                     this._ja5278 = _mx3949;
                     break;
                  case _rt10916:
                     this._lf3520();
               }
               this._jf8323.stop();
               return;
            case _co14458:
               return;
            case _pl15463:
               return;
            default:
               return;
         }
      }
      
      private function _yv3159() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._xd1506.length)
         {
            _loc1_ = int(_fw8399(this._xd1506[_loc3_])._dd11486);
            _loc2_ = MovieClip(this._vt566[_loc3_]).getChildByName(_ok2229) as MovieClip;
            if(_loc2_ != null)
            {
               _xw1367.getInstance()._uc3178(_loc2_,_xw1367._wa4051);
            }
            switch(_loc1_)
            {
               case _wd12279._us12458:
                  this._rj9894 = _loc2_;
                  break;
               case _wd12279._bk8340:
                  this._tu12453 = _loc2_;
                  _xw1367.getInstance()._uc3178(this._xq15076,_xw1367._wa4051);
                  break;
               case _wd12279._ia9886:
                  this._lt10352 = _loc2_;
                  break;
               case _wd12279._lj14471:
                  this._jf8323 = _loc2_;
                  this._vy1314 = _loc2_[_xs14420];
                  break;
               case _wd12279._ec7628:
                  this._pt4387 = _loc2_;
                  break;
               case _wd12279._oi8987:
                  this._xc3420 = _loc2_;
                  this._pg10414 = new _ty11551(_loc2_);
                  break;
               case _wd12279._ww15446:
                  this._ed9532 = _loc2_;
                  this._fd7907 = new _am5321(this,_loc2_,this._gy10361,this._vc10957,this._tl7614,this._tl9155);
                  break;
               case _wd12279._yx5044:
                  this._ee15533 = _loc2_;
                  this._qm4970 = new _oo3091(_loc2_,this._gy10361,this._vc10957);
                  break;
               case _wd12279._cv4958:
                  this._te16060 = _loc2_;
                  this._dq1230 = new _if9447(_loc2_);
            }
            _loc3_++;
         }
      }
      
      private function _bb1926() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         this._fs12715();
         while(_loc3_ < this._xd1506.length)
         {
            _loc1_ = int(_fw8399(this._xd1506[_loc3_])._dd11486);
            _loc2_ = null;
            switch(_loc1_)
            {
               case _wd12279._us12458:
                  _xw1367.getInstance()._na10792(this._rj9894,_xw1367._wa4051);
                  MovieClip(this._vt566[_loc3_]).addChild(this._rj9894);
                  break;
               case _wd12279._bk8340:
                  _xw1367.getInstance()._na10792(this._tu12453,_xw1367._wa4051);
                  MovieClip(this._vt566[_loc3_]).addChild(this._tu12453);
                  _xw1367.getInstance()._na10792(this._xq15076,_xw1367._wa4051);
                  break;
               case _wd12279._ia9886:
                  _xw1367.getInstance()._na10792(this._lt10352,_xw1367._wa4051);
                  MovieClip(this._vt566[_loc3_]).addChild(this._lt10352);
                  break;
               case _wd12279._lj14471:
                  _xw1367.getInstance()._na10792(this._jf8323,_xw1367._wa4051);
                  MovieClip(this._vt566[_loc3_]).addChild(this._jf8323);
                  break;
               case _wd12279._oi8987:
                  if(this._pg10414 != null)
                  {
                     this._pg10414.destroy();
                     this._pg10414 = null;
                  }
                  MovieClip(this._vt566[_loc3_]).addChild(this._xc3420);
                  break;
               case _wd12279._ww15446:
                  if(this._fd7907 != null)
                  {
                     this._fd7907.destroy();
                     this._fd7907 = null;
                  }
                  MovieClip(this._vt566[_loc3_]).addChild(this._ed9532);
                  break;
               case _wd12279._yx5044:
                  if(this._qm4970 != null)
                  {
                     this._qm4970.destroy();
                     this._qm4970 = null;
                  }
                  MovieClip(this._vt566[_loc3_]).addChild(this._ee15533);
                  break;
               case _wd12279._cv4958:
                  if(this._dq1230 != null)
                  {
                     this._dq1230.destroy();
                     this._dq1230 = null;
                  }
                  MovieClip(this._vt566[_loc3_]).addChild(this._te16060);
            }
            _loc3_++;
         }
      }
      
      protected function _ul8765() : void
      {
         if(this._wc6296 == null)
         {
            this._wc6296 = new _al12382();
            this._wc6296.addEventListener(Event.COMPLETE,this._qx4232,false,0,true);
            this._wc6296._np5723 = new Point(0,1);
            this._wc6296._wg2951 = new Point(125,0);
            _xw1367.getInstance()._uc3178(this._wc6296,_xw1367._wa4051,true);
         }
      }
      
      protected function _fs12715() : void
      {
         if(this._wc6296 != null)
         {
            _xw1367.getInstance()._na10792(this._wc6296,_xw1367._wa4051);
            this._wc6296.destroy();
            this._wc6296.removeEventListener(Event.COMPLETE,this._qx4232);
            this._wc6296 = null;
         }
      }
      
      protected function _qx4232(param1:Event) : void
      {
         this._fs12715();
         this._ul8765();
      }
      
      private function _is4059() : void
      {
         var _loc1_:Boolean = false;
         if(this._gg7070 != null)
         {
            this._gg7070.destroy();
            this._gu3152();
         }
         if(_cc7688._bd8175)
         {
            _loc1_ = true;
         }
         this._gg7070 = new _od6763(this._nt7956,_hv12530.getInstance(),_loc1_);
         this._vy1314.addChild(this._gg7070);
      }
      
      private function _gu3152() : void
      {
         this._vy1314.removeChild(this._gg7070);
      }
      
      private function _rb2419() : void
      {
         this._is4059();
         this._gg7070._rb2419(_ry1435,_xu9733);
      }
      
      private function _es11222() : void
      {
         this._is4059();
         var _loc1_:int = int(_xv14798._tm12465(this._jf8323,_lf16174));
         var _loc2_:int = int(_xv14798._tm12465(this._jf8323,_uu7912));
         this._gg7070._es11222(_ry1435,_sa5279,_kl906,_xu9733,_loc1_,_loc2_);
      }
      
      public function _ud2033() : void
      {
         if(this._lt10352 != null)
         {
            if(_cv5415 == 1)
            {
               this._lt10352.gotoAndPlay(_fr6610);
            }
            else
            {
               this._lt10352.gotoAndStop(_dh14720);
            }
         }
      }
      
      public function _wt9529() : void
      {
         this._yd10125();
      }
      
      private function _yd10125() : void
      {
         this._fd7907._db5584();
         this._qm4970._db5584();
         this._dq1230._db5584();
         this._jb3891._re2071();
         this._jb3891._fo382(_id1792._vr11364);
         this._jb3891._db5584();
         this._ul8765();
         if(this._tr9195)
         {
            _pr2018.getInstance().remove(this._tr9195);
         }
         this._tr9195 = new _vd9631(_sl12580);
         this._tr9195.addEventListener(_pw5334._rr2751,this._yy993,false,0,true);
         this._tr9195.addEventListener(_pw5334._uk11953,this._hl11318,false,0,true);
         this._tr9195.addEventListener(_pw5334._dt4861,this._hk7303,false,0,true);
         _pr2018.getInstance().add(this._tr9195,5,30);
         this._nv14017 = new _sl13397();
         _pr2018.getInstance().add(this._nv14017,460,200);
         this._nv14017.addEventListener(_sl13397._wc11086,this._we1942,false,0,true);
         this._ew5863();
      }
      
      private function _we1942(param1:Event) : void
      {
         this._vh4126();
      }
      
      private function _yy993(param1:_pw5334) : void
      {
         _sl12580 = this._tr9195._rv12413;
      }
      
      private function _hk7303(param1:_pw5334) : void
      {
         this._jd12664 = _ih6214;
         _qw14876._yw12985 = param1.data._vn12441;
      }
      
      public function _hl11318(param1:_pw5334 = null) : void
      {
         this._jd12664 = _ef11790;
      }
      
      public function _fj10106(param1:Event) : void
      {
         _ia12312._fs11949("openBPad");
      }
      
      private function _oq5692() : void
      {
         if(_fg1060.data._jr10446 != 0)
         {
            if(!_gx6661.getInstance()._um6205())
            {
               if(_cc7688._qs3725 == _cc7688._uo6813)
               {
                  this._ok14568();
               }
               else if(_cc7688._qs3725 == _cc7688._gl650)
               {
                  this._vg5958();
               }
               else if(_hv12530.getInstance()._my547.toUpperCase() == _mu10856._we10670)
               {
                  this._lb3765();
               }
               else
               {
                  this._fa13059();
               }
            }
         }
         ++_hy504;
      }
      
      private function _os10562() : void
      {
         switch(_hy504 % 5)
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
               this._wa8626._db5584(_mk16025._mx2623,_yd4719,_oa4617);
               return;
            default:
               return;
         }
      }
      
      private function _ok14568() : void
      {
         switch(_hy504 % 2)
         {
            case 0:
               this._aa181();
               return;
            case 1:
               if(this._wa8626._db5584(_mk16025._qt11621,_du16160,_oa4617) == false)
               {
                  this._wa8626._db5584(_mk16025._am15224,_yd4719,_oa4617);
               }
               return;
            default:
               return;
         }
      }
      
      private function _vg5958() : void
      {
         switch(_hy504 % 2)
         {
            case 0:
               this._aa181();
               return;
            case 1:
               if(this._wa8626._db5584(_mk16025._qt11621,_du16160,_oa4617) == false)
               {
                  this._wa8626._db5584(_mk16025._am15224,_yd4719,_oa4617);
               }
               return;
            default:
               return;
         }
      }
      
      private function _lb3765() : void
      {
         switch(_hy504 % 1)
         {
            case 0:
               this._aa181();
               return;
            default:
               return;
         }
      }
      
      private function _fa13059() : void
      {
         if(_hv12530.getInstance()._my547.toUpperCase() == _mu10856._pu2140)
         {
            switch(_hy504 % 2)
            {
               case 0:
                  this._aa181();
                  break;
               case 1:
                  if(this._wa8626._db5584(_mk16025._qt11621,_du16160,_oa4617) == false)
                  {
                     this._wa8626._db5584(_mk16025._am15224,_yd4719,_oa4617);
                  }
            }
         }
         else
         {
            switch(_hy504 % 2)
            {
               case 0:
                  this._aa181();
                  return;
               case 1:
                  if(this._wa8626._db5584(_mk16025._qt11621,_du16160,_oa4617) == false)
                  {
                     this._wa8626._db5584(_mk16025._am15224,_yd4719,_oa4617);
                  }
                  return;
            }
         }
      }
      
      private function _ns5458() : void
      {
         var _loc1_:String = null;
         if(_cc7688._qs3725 == _cc7688._uo6813)
         {
            _loc1_ = "https://www.chilevision.cl/boombang/videochat.php?id=" + int(Math.random() * 5000);
            _kg15251._uq5146(_loc1_,this._ih7027);
         }
      }
      
      public function _ih7027(param1:String) : void
      {
         if(param1 != null)
         {
            param1 = param1.slice(0,param1.indexOf("j"));
         }
         _mr16168.info("answerPHP" + param1);
         switch(param1)
         {
            case "ACTIVO":
               if(_cc7688._bc15601)
               {
                  this._dk7428();
               }
               return;
            case "INACTIVO":
            default:
               return;
         }
      }
      
      public function _dk7428() : void
      {
         var _loc1_:Object = new Object();
         _loc1_._jo6704 = this._fj15389;
         _loc1_._ye3690 = false;
         this._wa8626._db5584(_mk16025._no13425,277,-6,_loc1_);
      }
      
      private function _fj15389(param1:MouseEvent) : void
      {
         _ef10972._iu2197();
      }
      
      private function _jh4528() : void
      {
         this._ko15136.load(966,"https://www.preuniversitariopedrodevaldivia.cl/ppv3.php?nom_pag==su_experience/index.php","300x250.swf");
      }
      
      public function _rt1841() : void
      {
         this._vh4126();
         this._wa8626._db5584(_mk16025._am15224,_yd4719,_oa4617);
      }
      
      public function _yu4776() : void
      {
         _ia12312._fs11949("openVipMember");
         this._vh4126();
         this._wa8626._db5584(_mk16025._sr9067,0,0,null);
      }
      
      public function _uf6521() : void
      {
         _ia12312._fs11949("openNews");
         this._vh4126();
         this._wa8626._db5584(_mk16025._mk7923,0,0,null);
      }
      
      public function _pt9271(param1:MovieClip) : void
      {
         this._wa8626._ar9865(_mk16025._mk7923,param1);
      }
      
      public function _rr13443() : void
      {
         this._vh4126();
         _ia12312._fs11949("openCoins");
         if(this._of15040)
         {
            _pr2018.getInstance().remove(this._of15040);
         }
         this._of15040 = new _rp11988();
         _pr2018.getInstance().add(this._of15040,440,10);
      }
      
      public function _kc8213() : void
      {
         _ia12312._fs11949("openOptions");
         this._vh4126();
         this._pg10414._hu12389();
         _pr2018.getInstance().add(new _xy4433(this),270,375);
      }
      
      public function _um14837() : void
      {
         this._vh4126();
         if(_hv12530.getInstance()._uf6036 != _hv12530._lb6305)
         {
            _pr2018.getInstance().add(new _ms3955(),_sv3640,_oa4617);
         }
         else
         {
            _pr2018.getInstance().add(new _ho2030("windows.cancelDeactivateKey.changeEmailDescription"),_sv3640,_oa4617);
         }
      }
      
      public function _sa14733() : void
      {
         this._vh4126();
         _pr2018.getInstance().add(new _qb4293(),_sv3640,_oa4617);
      }
      
      public function _pw2317() : void
      {
         this._vh4126();
         if(_hv12530.getInstance()._uf6036 != _hv12530._lb6305)
         {
            _pr2018.getInstance().add(new _my2463(),_sv3640,_oa4617);
         }
         else
         {
            _pr2018.getInstance().add(new _ho2030("windows.cancelDeactivateKey.changePasswordDescription"),_sv3640,_oa4617);
         }
      }
      
      public function _io12503() : void
      {
         this._vh4126();
         if(_hv12530.getInstance()._uf6036 != _hv12530._lb6305)
         {
            _pr2018.getInstance().add(new _pj1345(),_sv3640,_oa4617);
         }
         else
         {
            _pr2018.getInstance().add(new _ho2030("windows.cancelDeactivateKey.deleteAccountDescription"),_sv3640,_oa4617);
         }
      }
      
      public function _lf3520() : void
      {
         this._wa8626._db5584(_mk16025._jd11660,_lr3093,_dy10666);
      }
      
      public function _dw4554() : void
      {
         this._vh4126();
         _pr2018.getInstance().add(new _mg401(),_sv3640,_oa4617);
      }
      
      public function _ei1076() : void
      {
         this._vh4126();
         if(_hv12530.getInstance()._uf6036 != _hv12530._lb6305)
         {
            _pr2018.getInstance().add(new _gd6593(),_sv3640,_oa4617);
         }
         else
         {
            _pr2018.getInstance().add(new _ho2030("windows.cancelDeactivateKey.editConnectionsDescription"),_sv3640,_oa4617);
         }
      }
      
      public function _vg8488(param1:Event = null) : void
      {
         this._vh4126();
         _pr2018.getInstance().add(new _vv13897(),_sv3640,_oa4617);
      }
      
      public function _ym1355() : void
      {
         this._vh4126();
         _pr2018.getInstance().add(new _rc964(),_sv3640,_oa4617);
      }
      
      public function _sf13434() : void
      {
         this._vh4126();
         _pr2018.getInstance().add(new _ho2030(),_sv3640,_oa4617);
      }
      
      public function _aa181() : void
      {
         if(!_gx6661.getInstance()._um6205())
         {
            this._wa8626._ip1589();
            this._wa8626._db5584(_mk16025._ar13594,_je11002,_oa4617);
         }
      }
      
      public function _id13318() : void
      {
         this._vh4126();
         this._ko15136._db5584();
      }
      
      public function _jv4274() : void
      {
         this._ko15136._hu12389();
      }
      
      public function _fp2870() : void
      {
         this._ko15136._eu2368();
      }
      
      private function _of1737(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1.flags[0]);
         var _loc3_:int = int(param1._qp16092(1));
         if(_loc3_ == _te13472._ig8486 || _loc3_ == _te13472._pi10410)
         {
            this._vh4126();
         }
      }
      
      public function _vh4126(param1:Boolean = false) : void
      {
         this._ko15136._hu12389();
         if(this._ql14855 != null)
         {
            _pr2018.getInstance()._ig10757([this._ql14855,this._tr9195,this._nv14017]);
         }
         else
         {
            _pr2018.getInstance()._ig10757([this._tr9195,this._nv14017]);
         }
         if(param1 == false)
         {
            _gx6661.getInstance().hide();
         }
         this._wa8626._ip1589();
         this._wa8626._hu12389(_mk16025._ar13594);
      }
      
      public function _np14165(param1:int) : void
      {
         this._ep5216(param1);
         this._ow9881();
      }
      
      public function _ca10610() : void
      {
         this._jd12664 = _du15451;
      }
      
      public function _ac9678() : void
      {
         this._jd12664 = _mf6462;
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
      }
      
      public function get _ud1642() : _bi12161
      {
         return this._dn9880;
      }
      
      public function set _ud1642(param1:_bi12161) : void
      {
         this._dn9880 = param1;
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc7_:Array = param1._lv9976;
         var _loc8_:uint = uint(String(_loc7_[0]).charCodeAt(0));
         switch(_loc8_)
         {
            case _jl5367._bl4651:
               var _loc2_:uint = uint(String(_loc7_[1]).charCodeAt(0));
               switch(0)
               {
                  case _qd13741._kb2862:
                     if(_loc7_.length >= 3)
                     {
                        var _loc3_:Boolean = Boolean(int(_loc7_[2]));
                        if(!_hv12530.getInstance()._wb8182())
                        {
                           if(this._kt9910())
                           {
                              _rj7691 = true;
                           }
                        }
                     }
               }
               return;
            default:
               return;
         }
      }
      
      private function _kt9910() : Boolean
      {
         var _loc1_:Boolean = false;
         ++_nm751;
         if(_nm751 <= 8)
         {
            _loc1_ = true;
         }
         else
         {
            ++_bx7660;
            if(_bx7660 <= 2)
            {
               _loc1_ = true;
            }
            else
            {
               _loc1_ = false;
               _bx7660 = 0;
            }
         }
         return _loc1_;
      }
      
      private function _dv5381(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:int = int(_loc2_.shift());
         if(_loc3_ == -1)
         {
            return;
         }
         switch(_loc3_)
         {
            case _it11308._sr6766:
            case _it11308._ar4336:
               if(_xo5398._xh10884(_xo5398._sl14080))
               {
                  this._jd12664 = _qt10717;
               }
               return;
            case _it11308._ii14714:
               this._jd12664 = _rw10592;
               return;
            case _it11308._jt6401:
               this._jd12664 = _ih6214;
               _qw14876._yw12985 = this._fv14977._nr6929._vn12441;
               return;
            case _it11308._ga7038:
               if(_xo5398._xh10884(_xo5398._rb2117))
               {
                  this._jd12664 = _qt10717;
               }
               return;
            default:
               return;
         }
      }
      
      public function loop() : void
      {
         this._qm4970.loop();
         this._ko15136.loop();
         this._fd7907.loop();
      }
      
      public function _mo5919(param1:int, param2:Array) : void
      {
         this._vh4126();
         this._pg10414._hu12389();
         this._fd7907._hu12389();
         this._qm4970._hu12389();
         this._dq1230._hu12389();
         this._fs12715();
         if(this._jb3891 != null)
         {
            this._jb3891._hu12389();
            this._jb3891._wq9363();
         }
         var _loc3_:Object = new Object();
         _loc3_._ji5399 = param1;
         _loc3_._il5468 = param2;
         this._wa8626._db5584(_mk16025._su16035,_og9910,_wm6831,_loc3_);
         if(param1 == _mj624._df2854 && param2[1] == _mj624._lm4443)
         {
            _loc3_._km5026 = this._km5026;
            this._wa8626._db5584(_mk16025._nh7492,_og9910,_wm6831,_loc3_);
         }
      }
      
      public function _km5026() : void
      {
         this._wa8626._hu12389(_mk16025._su16035);
      }
      
      public function _mu10811() : void
      {
         this._vc10957._mu10811();
      }
      
      public function _oh9462() : void
      {
         if(SoundMixer.soundTransform.volume == 0)
         {
            SoundMixer.soundTransform = new SoundTransform(1);
         }
         else
         {
            SoundMixer.soundTransform = new SoundTransform(0);
         }
      }
   }
}

