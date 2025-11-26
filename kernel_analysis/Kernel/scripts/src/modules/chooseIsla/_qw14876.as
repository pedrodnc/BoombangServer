package src.modules.chooseIsla
{
   import flash.display.*;
   import flash.events.Event;
   import flash.geom.*;
   import src.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.bpad.*;
   import src.modules.chooseScene.*;
   import src.modules.enterScene._yc4848;
   import src.modules.interfaz.baseChat.*;
   import src.modules.privados.creacion.*;
   import src.modules.ticketManager.*;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   
   public class _qw14876 implements _pk5732
   {
      
      public static var _yw12985:int = 0;
      
      private static const _jn5867:int = 500;
      
      private static const _ta5296:int = 6000;
      
      public static const _ai7182:int = 0;
      
      public static const _nu6936:int = 1;
      
      public static const _yw14660:int = 2;
      
      public static const _ub13729:int = 3;
      
      public static const _ui9633:int = 1;
      
      public static const _yt7211:int = 2;
      
      public static const _ew2582:int = 3;
      
      public static const _wb16051:int = 300;
      
      public static const _cb4359:int = 120;
      
      private var _ck11238:MovieClip;
      
      private var _rj9894:MovieClip;
      
      private var _an11806:MovieClip;
      
      private var container:MovieClip;
      
      private var _kj13550:MovieClip;
      
      private var _fx4250:MovieClip;
      
      private var _uf9866:MovieClip;
      
      private var _dw5377:_dv12508;
      
      public var _sr10163:_fh3873;
      
      private var _xb8030:_by3345;
      
      private var _rq10493:_lk14481;
      
      private var _gb4951:_jv13391;
      
      private var _cs11070:_db12795;
      
      private var _wc743:_uo16117;
      
      private var _jb3891:_id1792;
      
      private var _ij5909:Array;
      
      private var _mf15324:int = 0;
      
      private var _as2737:int = 0;
      
      public var _wv14295:_gb11119;
      
      public var _vb10246:Boolean;
      
      private var _ju13599:int;
      
      private var _tu3772:_nt7035;
      
      private var _fv14977:_yc4848;
      
      private var logs:_qn13596;
      
      public var _hp11587:_hk11848;
      
      private var status:int;
      
      public var _iq1199:Boolean;
      
      private var _wm2439:Boolean;
      
      private var _pn8869:_rn8936;
      
      private var _pa8893:_rn8936;
      
      public function _qw14876(param1:_yc4848)
      {
         super();
         this._tu3772 = new _nt7035();
         this._tu3772.addEventListener(_jc9263._pt2805,this._bw11981);
         param1.addEventListener(_kq15543._uy12608,this._dv5381);
         this._jd12664 = _ai7182;
         this._jb3891 = _id1792._np546;
         this.logs = _qn13596.getInstance();
         this._wv14295 = new _gb11119();
         this._vb10246 = false;
         this._fv14977 = param1;
      }
      
      public function destroy() : void
      {
         if(this._pn8869)
         {
            this._pn8869.destroy();
         }
         if(this._tu3772 != null)
         {
            this._tu3772.removeEventListener(_jc9263._pt2805,this._bw11981);
            this._tu3772.destroy();
            this._tu3772 = null;
         }
         this._fv14977.removeEventListener(_kq15543._uy12608,this._dv5381);
         if(this.container == null)
         {
            return;
         }
         this._ck11238 = null;
         this._rj9894 = null;
         this._kj13550 = null;
         this.logs = null;
         this._wv14295 = null;
         this._hp11587 = null;
         this._jb3891._hu12389();
         if(this._pa8893)
         {
            this._pa8893.destroy();
         }
         if(this._cs11070 != null)
         {
            this._cs11070.destroy();
            this._cs11070 = null;
         }
         if(this._dw5377 != null)
         {
            this._dw5377.destroy();
            this._dw5377 = null;
         }
         if(this._sr10163 != null)
         {
            this._sr10163.destroy();
            this._sr10163 = null;
         }
         if(this._xb8030 != null)
         {
            this._xb8030.destroy();
            this._xb8030 = null;
         }
         if(this._rq10493 != null)
         {
            this._rq10493.destroy();
            this._rq10493 = null;
         }
         if(this._gb4951 != null)
         {
            this._gb4951.destroy();
            this._gb4951 = null;
         }
         if(this._wc743 != null)
         {
            this._wc743.destroy();
            this._wc743 = null;
         }
         while(this.container.numChildren > 0)
         {
            this.container.removeChildAt(0);
         }
         _xw1367.getInstance()._na10792(this.container,_xw1367._wa4051);
         this.container = null;
         this._ij5909 = null;
         this._fv14977 = null;
      }
      
      public function init(param1:Object = null) : void
      {
         var _loc2_:_um8624 = null;
         var _loc3_:int = 0;
         if(param1 == null || !(param1 is Array))
         {
            return;
         }
         this._ck11238 = MovieClip(param1[0]);
         this._kj13550 = MovieClip(param1[1]);
         if(_ui9633 == this.status)
         {
            _loc2_ = _hv12530.getInstance();
         }
         else
         {
            _loc2_ = this._hp11587._hn7664._lp13903;
         }
         this._fx4250 = _xr3315._ku11706(_loc2_,"left_falling");
         this._fx4250.x = _wb16051;
         this._fx4250.y = _cb4359;
         this._rj9894 = MovieClip(param1[3]);
         this._ij5909 = new Array();
         this._ij5909[0] = this._rj9894;
         if(this.status == _ui9633)
         {
            _loc3_ = 1;
            while(_loc3_ < _uw11952._cj6252)
            {
               this._ij5909[_loc3_] = param1[_loc3_ + 3];
               _loc3_++;
            }
         }
         this._cs11070 = new _db12795(this._kj13550,this._oy9976);
         this._pn8869 = new _rn8936();
         this._pn8869._np5723 = new Point(0,1);
         this._pn8869._wg2951 = new Point(0,-45);
         this._pa8893 = new _rn8936();
         this._pa8893._np5723 = new Point(0,1);
         this._pa8893._wg2951 = new Point(480,-45);
         this.container = new MovieClip();
         this.container.addChild(this._rj9894);
         this.container.addChild(this._ck11238);
         this.container.addChild(this._fx4250);
         this.container.addChild(this._pa8893);
         this.container.addChild(this._pn8869);
         this._pn8869.addChild(this._cs11070.movieClip);
         _xw1367.getInstance()._uc3178(this.container,_xw1367._wa4051);
         this._jb3891._so6911(this._pa8893);
         this._jb3891._fo382(_id1792._yk9555);
         this._jb3891._db5584();
         this._oh14316(param1);
      }
      
      private function _oh14316(param1:Object = null) : void
      {
         this._iq1199 = false;
         if(this._dw5377 != null)
         {
            this._dw5377.destroy();
         }
         if(this._rq10493 != null)
         {
            this._rq10493.destroy();
         }
         if(this._gb4951 != null)
         {
            this._gb4951.destroy();
         }
         if(this._wc743 != null)
         {
            this._wc743.destroy();
         }
         this._dw5377 = new _dv12508(this._ck11238,this,this.status == _ew2582);
         this._xb8030 = new _by3345(this._ck11238,this,this.status == _ew2582);
         this._sr10163 = new _fh3873(this._ck11238,this);
         this._rq10493 = new _lk14481(this._ck11238,this,this.status == _ui9633);
         this._gb4951 = new _jv13391(this._ck11238,this);
         this._wc743 = new _uo16117(this._ck11238,this);
         this._cs11070.setPosition();
         switch(this.status)
         {
            case _ui9633:
               this._dw5377._hu12389();
               this._gb4951._hu12389();
               this._rq10493._db5584();
               this._wc743._hu12389();
               this._sr10163._hu12389();
               this._xb8030._hu12389();
               this._fx4250.visible = false;
               return;
            case _ew2582:
               this._gb4951._db5584();
               this._dw5377._db5584();
               this._rq10493._hu12389();
               this._wc743._hu12389();
               this._sr10163._nr9438(this._wv14295._ot6592);
               this._sr10163._db5584();
               this._xb8030._db5584();
               return;
            case _yt7211:
               this._gb4951._hu12389();
               this._dw5377._db5584();
               this._rq10493._hu12389();
               this._wc743._db5584();
               this._sr10163._hu12389();
               this._xb8030._db5584();
               this._fx4250.visible = true;
               return;
            default:
               return;
         }
      }
      
      public function _oy9976(param1:Event = null) : Boolean
      {
         if(this._iq1199)
         {
            this._ju13599 = _nu6936;
            return true;
         }
         return false;
      }
      
      public function _cq15352() : _hk11848
      {
         return this._hp11587;
      }
      
      public function loop() : void
      {
         if(this._dw5377 == null)
         {
            return;
         }
         this._cs11070.loop();
         if(this.status == _ew2582 || this.status == _yt7211)
         {
            this._dw5377.loop();
         }
         else if(this.status == _ui9633)
         {
            this._rq10493.loop();
         }
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
            case _it11308._jt6401:
               if(_xo5398._xh10884(_xo5398._sq1123))
               {
                  this._ju13599 = _yw14660;
               }
               return;
            default:
               return;
         }
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case _nt7035._uw10750:
               if(this._yx1778(_loc3_))
               {
                  this._vv3676(_loc3_);
               }
               else
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ChooseIslaMultiuser.ISLA_ASK_DATA",_loc3_.toString()));
                  this._vb10246 = true;
               }
               return;
            case _nt7035._vx13712:
               if(_loc3_.length != 3)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ChooseIslaMultiuser.ISLA_ALTA_ISLA",_loc3_.toString()));
               }
               else if(int(_loc3_[2]) > 0)
               {
                  this._rq10493._ku5734();
                  this._ph10492(_loc3_[2]);
                  this.status = _ew2582;
                  this._wm2439 = true;
               }
               else
               {
                  this._rq10493._db5584();
               }
               return;
            case _nt7035._ov14259:
               if(_loc3_.length != 3)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ChooseIslaMultiuser.ISLA_CAMBIO_NOMBRE",_loc3_.toString()));
               }
               else if(int(_loc3_[2]) == 1 && this._dw5377._qw2527 != null)
               {
                  this._hp11587.name = this._dw5377._qw2527;
               }
               else
               {
                  this._sr10163._bd7415(this._wv14295._iw8850);
               }
               this._dw5377._qw2527 = null;
               this._dw5377._su15769();
               return;
            case _nt7035._bw3160:
               return;
            case _nt7035._al15004:
               if(_loc3_.length != 3)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"ChooseIslaMultiuser.ISLA_CHECK_PASSWORD",_loc3_.toString()));
               }
               else if(this._dw5377._qw11858 == _dv12508._nv6191)
               {
                  if(int(_loc3_[2]) == 0)
                  {
                     this._sr10163._bd7415(this._wv14295._of3692);
                     this._dw5377._lw13105();
                  }
                  else if(int(_loc3_[2]) == 1)
                  {
                     this._dw5377._ry854();
                  }
               }
               return;
            default:
               this.logs._kp3815(new _ex15859(_qn13596._dj10628,"ChooseIslaModule.reciebeMsg",_loc3_.toString()));
               return;
         }
      }
      
      private function _yx1778(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         if(int(param1[2]) > 0 && param1.length - 2 >= _hk11848._lk13497)
         {
            _loc2_ = int(param1[_hk11848._lk13497 + 2 - 1]);
            if(param1.length - 2 == _jk12339._qs11263 * _loc2_ + _hk11848._lk13497)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
      }
      
      public function get _ud1642() : _bi12161
      {
         return null;
      }
      
      public function set _ud1642(param1:_bi12161) : void
      {
      }
      
      public function _vv3676(param1:Array) : void
      {
         var _loc2_:_jk12339 = null;
         var _loc5_:int = 0;
         param1.shift();
         param1.shift();
         this._hp11587 = new _hk11848();
         this._hp11587.id = int(String(param1[0]));
         this._hp11587.name = String(param1[1]);
         if(this._wm2439)
         {
            this._hp11587.description = this._wv14295._rr15466;
            this._wm2439 = false;
         }
         else
         {
            this._hp11587.description = String(param1[2]);
         }
         this._hp11587._mi6774 = int(param1[3]);
         this._hp11587._wr14763 = Boolean(int(param1[4]));
         var _loc3_:_ay2129 = new _ay2129();
         _loc3_.id = int(param1[5]);
         _loc3_.name = String(param1[6]);
         _loc3_.type = int(param1[7]);
         _loc3_.color = String(param1[8]);
         _loc3_._ey14613();
         this._hp11587._hn7664 = _loc3_;
         var _loc4_:int = 9;
         this._hp11587._sg8660 = param1.slice(_loc4_,_loc4_ + _hk11848._lo12177);
         _loc4_ += _hk11848._lo12177;
         this._hp11587._px16074 = param1.slice(_loc4_,_loc4_ + _hk11848._lo12177);
         _loc4_ += _hk11848._lo12177;
         this._hp11587._af13850 = int(param1[_loc4_]);
         this._hp11587._ah2712 = new Array();
         if(_loc3_.id == _hv12530.getInstance().id && this._hp11587.description == " ")
         {
            this._hp11587.description = this._wv14295._rr15466;
         }
         while(_loc5_ < this._hp11587._af13850)
         {
            _loc2_ = new _jk12339();
            _loc2_._jq10252 = int(param1[_loc4_ + 1]);
            _loc2_._kb5211 = int(param1[_loc4_ + 2]);
            _loc2_.id = int(param1[_loc4_ + 3]);
            _loc2_._rk2372 = int(param1[_loc4_ + 4]);
            _loc2_.name = String(param1[_loc4_ + 5]);
            _loc2_._ds2683 = int(param1[_loc4_ + 6]);
            _loc2_._pi6393 = int(param1[_loc4_ + 7]);
            _loc2_._cq350 = int(param1[_loc4_ + 8]);
            _loc2_._mc1774 = int(param1[_loc4_ + 9]);
            _loc2_._af9900 = int(param1[_loc4_ + 10]);
            _loc2_._uy8617 = int(param1[_loc4_ + 11]);
            _loc2_._hw3203 = Boolean(int(param1[_loc4_ + 12]));
            _loc4_ += 12;
            this._hp11587._ah2712.push(_loc2_);
            _loc5_++;
         }
         if(this._ck11238 != null)
         {
            this._oh14316();
         }
      }
      
      public function _ph10492(param1:int) : void
      {
         _yw12985 = param1;
         this._tu3772._ph10492(_yw12985);
      }
      
      public function _px13297(param1:String, param2:int, param3:Boolean) : void
      {
         this._tu3772._px13297(param1,param2,param3);
      }
      
      public function _ji5185(param1:Array) : void
      {
         this._tu3772._ji5185(param1,this._hp11587.id);
      }
      
      public function _ae12832(param1:Array) : void
      {
         this._tu3772._ae12832(param1,this._hp11587.id);
      }
      
      public function _mf2353(param1:Boolean) : void
      {
         this._tu3772._mf2353(param1,this._hp11587.id);
      }
      
      public function _le13027() : void
      {
         this._tu3772._le13027(this._hp11587.id);
      }
      
      public function _px11595(param1:String) : void
      {
         this._tu3772._px11595(param1,this._hp11587.id);
      }
      
      public function _rl13441(param1:String) : void
      {
         this._tu3772._rl13441(param1,this._hp11587.id);
      }
      
      public function _gi11354(param1:int) : void
      {
         this._tu3772._gi11354(param1);
      }
      
      public function _ri1919(param1:String, param2:int, param3:int) : void
      {
         this._tu3772._ri1919(param1,param2,param3);
      }
      
      public function _tr5645(param1:int, param2:int, param3:String) : void
      {
         this._tu3772._tr5645(param1,param2,param3);
      }
      
      public function _dm14699(param1:String, param2:int) : void
      {
         this._tu3772._dm14699(param1,param2);
      }
      
      public function _xt15702() : void
      {
         this._ju13599 = _ub13729;
      }
      
      public function _jr5664(param1:int) : void
      {
         switch(param1)
         {
            case _ew2582:
               this.status = param1;
               return;
            case _yt7211:
            case _ui9633:
               this.status = param1;
               return;
            default:
               return;
         }
      }
      
      public function _uh9249(param1:int) : void
      {
         if(this._ij5909 == null || this._ij5909.length <= 1)
         {
            return;
         }
         this.container.removeChild(this._rj9894);
         this._rj9894 = this._ij5909[param1 - 1];
         this.container.addChildAt(this._rj9894,0);
      }
      
      public function enterScene(param1:int, param2:String = "") : void
      {
         var _loc3_:_jk12339 = _jk12339(this._hp11587._ah2712[param1]);
         var _loc4_:_kn4108 = new _kn4108();
         _loc4_._ls5877 = _hj3512._bn928(_loc3_._jq10252);
         _loc4_._kb5211 = _rj12650._bn928(_loc3_._kb5211);
         _loc4_._vn12441 = this._hp11587.id;
         _loc4_._un6586 = _loc3_.id;
         _loc4_._eb11619 = _loc3_._rk2372;
         _loc4_._fq658 = _loc3_._ds2683;
         _loc4_.name = _loc3_.name;
         if(_xo5398._xm12587(_xo5398._sq1123))
         {
            this._fv14977._ql13733(_loc4_,param2);
         }
      }
   }
}

