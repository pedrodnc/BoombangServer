package src.person.pociones
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.*;
   import src.events.*;
   import src.modules.interfaz._je14031;
   import src.person._fl12537;
   import src.person._ga7956;
   import src.person._um8624;
   import src.utils.*;
   
   public class _td11801 extends _lg6571
   {
      
      public static var _gf968:int;
      
      public static const _id5353:String = "step_ready";
      
      public static const _eh1023:int = 1;
      
      public static const _ng9645:int = 2;
      
      public static const _eq4750:int = 3;
      
      public static const _cc5175:int = 4;
      
      public static const _ar6424:String = "frame_init";
      
      public static const _da7167:String = "frame_end";
      
      public static const _ta10541:int = 1;
      
      public static const _xj5884:int = 2;
      
      public static const _hw6128:int = 3;
      
      public static const _qr991:int = 4;
      
      public static const _yc3082:int = 5;
      
      public static const _cm1087:int = 6;
      
      public static const _tu11277:int = 7;
      
      public static const _go2727:int = 8;
      
      public static const _ol13023:int = 9;
      
      public static const _gr5098:int = 10;
      
      public static const _qx10216:int = 11;
      
      public static const _yp9294:int = 12;
      
      public static const _ct12376:int = 13;
      
      public static const _et12848:int = 14;
      
      public static const _uf9693:int = 15;
      
      public static const _iq6367:int = 16;
      
      public static const _sp655:int = 17;
      
      public static const _me11526:int = 18;
      
      public static const _vo9545:int = 19;
      
      public static const _di14258:int = 20;
      
      public static const _jg2825:int = 21;
      
      public static const _qc9339:int = 22;
      
      public static const _xl2462:int = 23;
      
      public static const _ui15823:int = 16;
      
      public static const _oi13669:int = 24;
      
      public static const _em7263:int = 25;
      
      public static const _jd4597:int = 26;
      
      public static const _an13215:int = 27;
      
      public static const _gn4816:int = 28;
      
      public static const _td3002:int = 29;
      
      public static const _yn14849:int = 30;
      
      public static const _pw11124:int = 31;
      
      public static const _tq12301:int = 32;
      
      public static const _gc11914:int = 33;
      
      public static const _ey7598:int = 34;
      
      public static const _xf2480:int = 35;
      
      public static const _fr11009:int = 36;
      
      public static const _ju1187:int = 37;
      
      public static const _uy161:int = 38;
      
      public static const _qy9715:int = 39;
      
      public static const _sh13884:int = 40;
      
      public static const _fh4819:int = 41;
      
      public static const _ja1986:int = 42;
      
      public static const _qb9358:int = 43;
      
      public static const _tt4788:int = 44;
      
      public static const _ts8560:int = 45;
      
      public static const _rh2730:int = 46;
      
      public static const _yr5241:int = 47;
      
      public static const _wd2197:int = 48;
      
      public static const _ux1648:int = 49;
      
      protected var _py12359:_um8624;
      
      protected var _gm13290:_ga7956;
      
      protected var _ym6664:MovieClip;
      
      protected var _js7773:_je14031;
      
      protected var _et2976:Function;
      
      protected var _on2519:_cj12538;
      
      protected var _dq696:MovieClip;
      
      protected var _cb14550:MovieClip;
      
      protected var _sk8948:MovieClip;
      
      protected var _bx3898:MovieClip;
      
      protected var _su4934:MovieClip;
      
      protected var _dg4724:_hv12530;
      
      protected var _ql1858:int;
      
      protected var _to12492:int;
      
      protected var _bw7551:Array;
      
      protected var _fk15228:MovieClip;
      
      protected var _ap13346:MovieClip;
      
      protected var _ks10059:MovieClip;
      
      protected var _ij6149:MovieClip;
      
      protected var _xn8532:_fl12537;
      
      protected var _sm1766:int;
      
      public function _td11801()
      {
         this._dg4724 = _hv12530.getInstance();
         super();
         this._sm1766 = -1;
      }
      
      public static function _ok7277(param1:int) : _td11801
      {
         _gf968 = param1;
         switch(_gf968)
         {
            case _ja1986:
            case _qb9358:
            case _tt4788:
            case _ts8560:
            case _rh2730:
            case _yr5241:
               return new _aw13100();
            case _ol13023:
               return new _xk12000();
            case _ct12376:
               return new _cg7206();
            case _gr5098:
               return new _jm11796();
            case _ta10541:
               return new _lh16027();
            case _xj5884:
               return new _pv14754();
            case _hw6128:
               return new _ku13222();
            case _tu11277:
               return new _he915();
            case _yc3082:
               return new _vg7882();
            case _cm1087:
               return new _tx9831();
            case _qr991:
               return new _jt7613();
            case _go2727:
            case _uf9693:
               return new _dw6753();
            case _et12848:
               return new _ld6946();
            case _qx10216:
               return new _ox12638();
            case _yp9294:
               return new _nt9951();
            case _iq6367:
               return new _ph4360();
            case _sp655:
               return new _wp15022();
            case _me11526:
               return new _ak13881();
            case _vo9545:
               return new _wr7796();
            case _di14258:
               return new _rc8901();
            case _jg2825:
               return new _xk11262();
            case _qc9339:
               return new _dx5370();
            case _xl2462:
               return new _bg11514();
            case _oi13669:
               return new _vo2278();
            case _an13215:
               return new _pi15372();
            case _pw11124:
               return new _jb3177();
            case _yn14849:
               return new _rq3184();
            case _em7263:
               return new _om6007();
            case _gn4816:
               return new _nf3619();
            case _jd4597:
               return new _nf7062();
            case _td3002:
               return new _ff5433();
            case _xf2480:
               return new _yd11477();
            case _ey7598:
               return new _ru1625();
            case _tq12301:
               return new _ro4391();
            case _gc11914:
               return new _ov2709();
            case _fr11009:
               return new _ac5939();
            case _ju1187:
               return new _fw6611();
            case _uy161:
               return new _ac4023();
            case _qy9715:
               return new _ra12033();
            case _sh13884:
               return new _nr14816();
            case _fh4819:
               return new _lh3778();
            case _wd2197:
            case _ux1648:
               return new _fu1294();
            default:
               return null;
         }
      }
      
      public function get _va9360() : int
      {
         return _gf968;
      }
      
      public function get _tx2113() : int
      {
         return this._ql1858;
      }
      
      public function _nc15336(param1:_um8624, param2:_ga7956, param3:_je14031, param4:Function, param5:MovieClip, param6:MovieClip, param7:MovieClip, param8:MovieClip, param9:MovieClip, param10:Array, param11:_fl12537) : void
      {
         this._py12359 = param1;
         this._gm13290 = param2;
         this._js7773 = param3;
         this._et2976 = param4;
         this._bw7551 = param10;
         this._dq696 = param5;
         this._cb14550 = param6;
         this._sk8948 = param7;
         this._bx3898 = param8;
         this._su4934 = param9;
         this._xn8532 = param11;
         this._sm1766 = this._xn8532._fs1054;
         this._ym6664 = this._gm13290._hc2180();
         if(this._py12359.id == _hv12530.getInstance().id)
         {
            this._py12359._bo414 = false;
            this._py12359._mr3266 = false;
            this._py12359._lc2476 = true;
            this._py12359._wf5053 = false;
            this._py12359._vl6015 = false;
            this._py12359._le185 = false;
            this._py12359._bj11164 = false;
            this._js7773._dc14886._eo493();
            this._js7773._dc14886._ch6820();
            this._js7773._dc14886._ha10019();
         }
      }
      
      override public function _fk1405(param1:int, param2:int) : void
      {
         this._ql1858 = param1;
         this._to12492 = param2;
         switch(param1)
         {
            case _eh1023:
            case _ng9645:
            case _eq4750:
               this._hp9614();
               break;
            case _cc5175:
               this._bx10099();
               this._ui5649();
         }
         this._qv5456();
      }
      
      protected function _bx10099() : void
      {
         try
         {
            this._ap13346.gotoAndStop(1);
            this._on2519._yf7634(_da7167);
            this._on2519._yf7634(_ar6424);
         }
         catch(e:Error)
         {
         }
         this._on2519 = null;
      }
      
      override public function destroy(param1:Boolean = false) : void
      {
         this._bx10099();
         this._py12359._bo414 = true;
         this._py12359._mr3266 = true;
         this._py12359._lc2476 = true;
         this._py12359._wf5053 = true;
         this._py12359._vl6015 = true;
         this._py12359._le185 = true;
         this._py12359._bj11164 = true;
         if(this._py12359.id == _hv12530.getInstance().id && this._js7773._dc14886 != null)
         {
            this._js7773._dc14886._hv107();
            this._js7773._dc14886._ch6820();
            this._js7773._dc14886._ha10019();
         }
         this._py12359._ta15622 = -1;
         if(this._ql1858 == _cc5175)
         {
            if(this is _nt9951 || this is _ox12638)
            {
               this._et2976.apply(this,[this._py12359._ly10773,this._py12359._ll5517,false]);
               this._js7773._dc14886._hm9534(this._py12359.id,false,true);
            }
         }
         this._ap13346 = null;
         this._on2519 = null;
         if(param1)
         {
            dispatchEvent(new _xb9814(_id5353));
         }
      }
      
      protected function _hp9614() : void
      {
      }
      
      protected function _ui5649() : void
      {
      }
      
      protected function _uw8020() : void
      {
         var _loc1_:ColorTransform = null;
         switch(this._sm1766)
         {
            case _tu11277:
               this._ij6149.blendMode = BlendMode.LAYER;
               if(this._py12359.id == this._dg4724.id)
               {
                  this._ij6149.alpha = 0.1;
               }
               else
               {
                  this._ij6149.alpha = 0;
               }
               return;
            case _et12848:
               _loc1_ = new ColorTransform();
               _loc1_.redMultiplier = 0.5;
               _loc1_.greenMultiplier = 0.5;
               _loc1_.blueMultiplier = 0.5;
               this._ij6149.transform.colorTransform = _loc1_;
               return;
            case _xj5884:
            case _ta10541:
               this._ap13346.scaleX = this._ap13346.scaleY = this._dq696.scaleX;
               return;
            default:
               return;
         }
      }
      
      protected function _fj12172() : void
      {
         this._on2519 = new _cj12538(this._fk15228);
         this._on2519._ah6327(_da7167,this._pl13205);
         this._sk8948.addChild(this._fk15228);
         this._fk15228.gotoAndPlay(_ar6424);
      }
      
      protected function _pl13205() : void
      {
         if(Boolean(this._fk15228) && Boolean(this._on2519))
         {
            this._fk15228.stop();
            this._on2519._yf7634(_da7167);
            this._on2519 = null;
            if(this._sk8948.contains(this._fk15228))
            {
               this._sk8948.removeChild(this._fk15228);
            }
            this._ql1858 = _ng9645;
            this._qv5456();
         }
      }
      
      protected function _lp2409() : void
      {
         this._on2519 = new _cj12538(this._ap13346);
         this._on2519._ah6327(_da7167,this._pm8497);
         this._ap13346.gotoAndPlay(_ar6424);
      }
      
      protected function _pm8497() : void
      {
         if(this._ap13346 != null)
         {
            this._ap13346.stop();
         }
         if(this._on2519 != null)
         {
            this._on2519._yf7634(_da7167);
            this._on2519 = null;
         }
         if(this._py12359.id == _hv12530.getInstance().id)
         {
            this._js7773._dc14886._hv107();
            this._js7773._dc14886._ch6820();
            this._js7773._dc14886._ha10019();
         }
         this._ql1858 = _eq4750;
      }
      
      protected function _ys2213() : void
      {
         this._py12359._bo414 = true;
         this._py12359._mr3266 = true;
         this._py12359._lc2476 = true;
         this._py12359._wf5053 = true;
         this._py12359._vl6015 = true;
         this._py12359._le185 = true;
         this._py12359._bj11164 = true;
         if(this._py12359.id == _hv12530.getInstance().id)
         {
            this._js7773._dc14886._hv107();
            this._js7773._dc14886._ch6820();
            this._js7773._dc14886._ha10019();
         }
         this._ap13346.gotoAndStop(_da7167);
      }
      
      protected function _mb610() : void
      {
         this._on2519 = new _cj12538(this._ap13346);
         this._on2519._ah6327(_da7167,this._vf2910);
         this._ap13346.gotoAndPlay(_ar6424);
         this._ql1858 = _cc5175;
      }
      
      protected function _vf2910() : void
      {
         this._py12359._bo414 = true;
         this._py12359._mr3266 = true;
         this._py12359._lc2476 = true;
         this._py12359._wf5053 = true;
         this._py12359._vl6015 = true;
         this._py12359._le185 = true;
         this._py12359._bj11164 = true;
         if(this._py12359.id == _hv12530.getInstance().id)
         {
            this._js7773._dc14886._hv107();
            this._js7773._dc14886._ch6820();
            this._js7773._dc14886._ha10019();
         }
         dispatchEvent(new _xb9814(_id5353));
      }
      
      protected function _qv5456() : void
      {
         switch(this._ql1858)
         {
            case _eh1023:
               this._fj12172();
               return;
            case _ng9645:
               this._lp2409();
               return;
            case _eq4750:
               this._ys2213();
               return;
            case _cc5175:
               this._mb610();
               return;
            default:
               return;
         }
      }
   }
}

