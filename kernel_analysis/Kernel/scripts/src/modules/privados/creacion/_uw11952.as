package src.modules.privados.creacion
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import flash.ui.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.texts.*;
   import src.logs.*;
   import src.modules._hq14072;
   import src.modules.bpad.*;
   import src.modules.interfaz.baseChat.*;
   import src.modules.privados.*;
   import src.multiuser.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.controlIngTextos.*;
   
   public class _uw11952
   {
      
      private static const _qh11016:int = 11;
      
      private static const _cj11822:int = 555;
      
      public static const _cj6252:int = 5;
      
      public static const _mj9871:Array = [[3,1,2,46],[4,5,6],[9,10,11,45],[12,13,14,44],[37,38,39]];
      
      private static const _rx10218:String = "chooseLocalization";
      
      private static const _jj1707:String = "loading";
      
      private static const _cb9666:String = "noVisible";
      
      private static const _vn757:String = "ingName";
      
      private static const _bv13164:String = "colorice";
      
      private static const _bh13669:String = "press";
      
      private static const _xd5119:String = "mcCreateLoc";
      
      private static const _lx2215:String = "mcBotonPrev";
      
      private static const _gm15302:String = "mcBotonNext";
      
      private static const _uw2471:String = "tfSiguiente";
      
      private static const _cw1144:String = "tfAnterior";
      
      private static const _hg3190:String = "tfAceptar";
      
      private static const _bk9265:String = "mcBotonOk";
      
      private static const _ek7225:String = "mcPaleta";
      
      private static const _se2789:String = "mcCapsulaColor";
      
      private static const _ot2217:String = "mcCapsulaColorCapsula";
      
      private static const _bf4123:String = "tfText";
      
      private static const _ei13322:String = "mcLargoFondo";
      
      private static const _po2792:String = "tfInfo";
      
      private static const _kg2410:String = "inName";
      
      private static const _ls3033:String = "tfEscogeColor";
      
      private static const _uf10763:String = "tfColorPersonalizado";
      
      private static const _tq13821:String = "mcLocacionColor";
      
      private static const _if6990:String = "tfColor";
      
      private static const _uo3435:int = 3394815;
      
      private static const _hl13620:int = 16777215;
      
      private static const _nd54:int = 16777215;
      
      private static const _gh12749:int = 10592673;
      
      private static const _iq1505:int = 10066329;
      
      private static const _xw15479:int = 15461355;
      
      public static const _cy15219:int = -1;
      
      public static const _si13030:int = 1;
      
      public static const _ws2609:int = 2;
      
      public static const _ff11526:int = 3;
      
      public static const _mn14899:int = 4;
      
      public static const _wm9258:int = 0;
      
      public static const _jj9523:int = 1;
      
      public static const _ac2046:int = 2;
      
      public static const _lv3702:int = 3;
      
      public static const _ko10718:int = 4;
      
      public static const _vr7101:int = 5;
      
      public static const _xx2900:int = 6;
      
      private var _re3848:int = -1;
      
      private var _nm5062:MovieClip;
      
      private var _bl11315:_bq10515;
      
      private var _nr1147:_xr16162;
      
      private var _vp454:_bx10683;
      
      private var _te8717:_rl11159;
      
      private var logs:_qn13596;
      
      private var _ut4147:_kn4108;
      
      private var _qu15274:int;
      
      private var _cx15588:int;
      
      private var _jd12664:int;
      
      private var _bc3267:int;
      
      private var _io6762:_pn12847;
      
      private var _cs11070:_db12795;
      
      private var _ea9196:_mc12628;
      
      public function _uw11952(param1:int, param2:int)
      {
         super();
         this._qu15274 = param2;
         this._vp454 = new _bx10683();
         this._vp454.addEventListener(_lb754._ym7408,this._bw11981);
         this._ut4147 = new _kn4108();
         this._ut4147._ls5877 = _hj3512._uq6151;
         this._ut4147._kb5211 = _rj12650._rk11857;
         this._ut4147._vn12441 = param1;
         this._ut4147._un6586 = 0;
         this._ut4147._eb11619 = 0;
         this._ut4147._fq658 = 0;
         this._ut4147.name = "";
         this._nr1147 = new _xr16162();
         this.logs = _qn13596.getInstance();
      }
      
      public function init(param1:MovieClip, param2:XML, param3:MovieClip, param4:MovieClip) : void
      {
         this._nm5062 = param3[_xd5119];
         this._nm5062.visible = false;
         this._jd12664 = _wm9258;
         this._cs11070 = new _db12795(param4,this._oy9976);
         this._nm5062.addChild(this._cs11070.movieClip);
         var _loc5_:Array = _mq2583._aj6505(param2);
         var _loc6_:_dh12601 = new _dh12601(_loc5_[0],_loc5_[1]);
         this._cx15588 = 0;
         this._ut4147._fq658 = _mj9871[this._qu15274][this._cx15588];
         this._bl11315 = new _bq10515(this._ut4147,_cf9831._hj11698,_loc6_,false,_hv12530.getInstance().id,param1,param2,null);
         this._bl11315._pr4733();
         _xv14798._dp2863(this._nm5062,this._mr4379);
         this._hu12389();
      }
      
      public function destroy() : void
      {
         _id1792._np546._db5584();
         this._cs11070.destroy();
         this._jd12664 = _wm9258;
         this._bl11315.destroy();
         _xv14798._ff5056(this._nm5062);
         this._vp454.removeEventListener(_lb754._ym7408,this._bw11981);
         this._vp454.destroy();
         this._vp454 = null;
         this._hu12389();
      }
      
      public function _gj5619(param1:MovieClip, param2:XML) : void
      {
         this._jd12664 = _wm9258;
         this._bl11315._qk13047();
         var _loc3_:Array = _mq2583._aj6505(param2);
         var _loc4_:_dh12601 = new _dh12601(_loc3_[0],_loc3_[1]);
         this._bl11315._dc804(param1,param2,this._ut4147._fq658,_loc4_);
         this._bl11315._pr4733();
         this._xo11249(_si13030);
      }
      
      public function _eb3669() : int
      {
         return this._jd12664;
      }
      
      public function _tl11920() : void
      {
         this._jd12664 = _wm9258;
      }
      
      public function _gs15685() : int
      {
         return _mj9871[this._qu15274][this._cx15588];
      }
      
      public function _ol8098() : _kn4108
      {
         return this._ut4147;
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         _loc2_ = param1._lv9976;
         _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _jl5367._ex12958:
               var _loc4_:uint = uint(String(_loc2_[1]).charCodeAt(0));
               switch(0)
               {
                  case _bx10683._xp12061:
                     if(_loc2_.length < 3)
                     {
                        this.logs._kp3815(new _ex15859(_qn13596._ny10327,"CreateLocalization.reciebeMsg",_loc2_.toString()));
                        this._jd12664 = _ko10718;
                        return;
                     }
                     var _loc5_:int = int(_loc2_[2]);
                     if(_loc5_ > -1)
                     {
                        var _loc6_:int = int(_loc2_[3]);
                        var _loc7_:int = int(_loc2_[4]);
                        var _loc8_:int = int(_loc2_[5]);
                        var _loc9_:int = int(_loc2_[6]);
                        this._ut4147._ls5877 = _hj3512._bn928(0);
                        this._ut4147._kb5211 = _rj12650._bn928(0);
                        this._ut4147._vn12441 = 0;
                        this._ut4147._un6586 = 0;
                        this._ut4147._eb11619 = 0;
                        this._jd12664 = _lv3702;
                        break;
                     }
                     this._jd12664 = _ko10718;
               }
               return;
            default:
               return;
         }
      }
      
      public function _db5584() : void
      {
         if(this._nm5062.visible == false)
         {
            _xw1367.getInstance()._uc3178(this._nm5062,_xw1367._wa4051,true);
            this._nm5062.x = _qh11016;
            this._nm5062.y = _cj11822;
            this._xo11249(_si13030);
            this._nm5062.visible = true;
            this._cs11070.setPosition();
         }
      }
      
      public function _hu12389() : void
      {
         if(this._nm5062.visible == true)
         {
            _xw1367.getInstance()._na10792(this._nm5062,_xw1367._wa4051);
            this._nm5062.visible = false;
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         if(this._re3848 != _cy15219)
         {
            this._cn7511();
         }
         switch(param1)
         {
            case _si13030:
               _mc15002._vt11823(this._nm5062,_rx10218);
               break;
            case _cy15219:
               _mc15002._vt11823(this._nm5062,_cb9666);
               break;
            case _ws2609:
               _mc15002._vt11823(this._nm5062,_jj1707);
               break;
            case _ff11526:
               _mc15002._vt11823(this._nm5062,_vn757);
               break;
            case _mn14899:
               _mc15002._vt11823(this._nm5062,_bv13164);
         }
         this._re3848 = param1;
      }
      
      private function _mr4379() : void
      {
         switch(this._nm5062.currentLabel)
         {
            case _rx10218:
               this._ek8929();
               this._gq8270();
               return;
            case _jj1707:
               this._ek8929();
               this._gq8270();
               return;
            case _vn757:
               this._ek8929();
               this._gq8270();
               return;
            case _bv13164:
               this._gl9113();
               return;
            default:
               return;
         }
      }
      
      private function _gq8270() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         switch(this._re3848)
         {
            case _si13030:
               _yq8362._xl9503(this._nm5062[_po2792],this._nr1147.CHOOSE_LOC);
               _yq8362._xl9503(this._nm5062[_gm15302][_uw2471],this._nr1147._gb1032);
               _yq8362._xl9503(this._nm5062[_lx2215][_cw1144],this._nr1147._xu14798);
               _yq8362._xl9503(this._nm5062[_bk9265][_hg3190],this._nr1147._yn5032);
               TextField(this._nm5062[_po2792]).mouseEnabled = false;
               MovieClip(this._nm5062[_gm15302]).mouseChildren = false;
               MovieClip(this._nm5062[_lx2215]).mouseChildren = false;
               MovieClip(this._nm5062[_bk9265]).mouseChildren = false;
               return;
            case _ws2609:
               TextField(this._nm5062[_po2792]).mouseEnabled = false;
               _yq8362._xl9503(this._nm5062[_po2792],this._nr1147.LOADING);
               return;
            case _ff11526:
               TextField(this._nm5062[_po2792]).mouseEnabled = false;
               _yq8362._xl9503(this._nm5062[_po2792],this._nr1147.NAME_LOC);
               _yq8362._xl9503(this._nm5062[_kg2410],"");
               TextField(this._nm5062[_kg2410]).restrict = _ei10851._gt8202;
               TextField(this._nm5062[_kg2410]).maxChars = _ei10851._bv9896;
               this._nm5062.stage.focus = TextField(this._nm5062[_kg2410]);
               _yq8362._xl9503(this._nm5062[_bk9265][_hg3190],this._nr1147._yn5032);
               MovieClip(this._nm5062[_bk9265]).mouseChildren = false;
               return;
            case _mn14899:
               _yq8362._xl9503(this._nm5062[_po2792],this._nr1147.CUSTOMIZE_LOCATION);
               _yq8362._xl9503(this._nm5062[_gm15302][_uw2471],this._nr1147._gb1032);
               _yq8362._xl9503(this._nm5062[_bk9265][_hg3190],this._nr1147._ln11116);
               TextField(this._nm5062[_po2792]).mouseEnabled = false;
               MovieClip(this._nm5062[_gm15302]).mouseChildren = false;
               MovieClip(this._nm5062[_bk9265]).mouseChildren = false;
               _id1792._np546._hu12389();
               _loc1_ = int(this._bl11315._wy10098._xb15586());
               _loc2_ = 0;
               while(_loc2_ < _vr7101)
               {
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc2_]).mouseChildren = false;
                  if(_loc2_ < _loc1_)
                  {
                     var _loc3_:String = _mq2583._qi4067(this._bl11315._ir13656,_loc2_);
                     _yq8362._xl9503(this._nm5062[_ek7225][_se2789 + _loc2_][_bf4123],this._nr1147[null.toUpperCase()]);
                  }
                  else
                  {
                     MovieClip(this._nm5062[_ek7225][_se2789 + _loc2_]).visible = false;
                  }
                  _loc2_++;
               }
               this._ru5783();
               return;
            default:
               return;
         }
      }
      
      private function _cp4522(param1:KeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            this._wc13970();
         }
      }
      
      private function _wc13970() : void
      {
         if(TextField(this._nm5062[_kg2410]).text.length > 0)
         {
            this._ut4147.name = TextField(this._nm5062[_kg2410]).text;
            this._xo11249(_mn14899);
         }
      }
      
      private function _ru5783() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         if(_loc1_ != _vr7101)
         {
            _loc1_ = int(this._bl11315._wy10098._xb15586());
            _loc2_ = MovieClip(this._nm5062[_ek7225][_se2789 + (_loc1_ - 1)]);
            _loc3_ = MovieClip(this._nm5062[_ek7225][_se2789 + (_vr7101 - 1)]);
            _loc1_ = MovieClip(this._nm5062[_ek7225][_ei13322]).y = MovieClip(this._nm5062[_ek7225][_ei13322]).y + (_loc2_.y - _loc3_.y);
         }
      }
      
      private function _gl9113() : void
      {
         this._ek8929();
         this._gq8270();
         var _loc1_:MovieClip = this._nm5062[_ek7225];
         _yq8362._xl9503(_loc1_[_ls3033],this._nr1147.ESCOGE_COLORES);
         _yq8362._xl9503(_loc1_[_uf10763],this._nr1147.PERSONALIZA_COLORES);
         this._bc3267 = -1;
         this._io6762 = this._bl11315._wy10098._yy6948(0);
         this._te8717 = new _rl11159(_loc1_,this.updateColor,null,false,false,this._io6762,MovieClip(this._nm5062[_ek7225]).x,_xx2900);
         this._te8717.init();
         this._xg13385(0);
         this._pl6982(0);
      }
      
      private function _xg13385(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Array = new Array();
         while(_loc3_ < _xx2900)
         {
            _loc2_.push(_pn12847(_mq2583._rr928(this._bl11315._ir13656,param1,_loc3_)));
            _loc3_++;
         }
         this._te8717._ug12278(_loc2_);
      }
      
      private function _pl6982(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:ColorTransform = new ColorTransform();
         var _loc4_:int = int(this._bl11315._wy10098._xb15586());
         _loc2_ = _vr7101 - _loc4_ + this._bc3267;
         _loc3_.color = 16777215;
         this._bc3267 = param1;
         while(_loc5_ < _loc4_)
         {
            if(_loc5_ != this._bc3267)
            {
               this._vl5121(_loc5_,false);
            }
            else
            {
               this._vl5121(_loc5_,true);
            }
            _loc5_++;
         }
         _loc2_ = _vr7101 - _loc4_ + this._bc3267;
         _loc3_.color = 6710886;
         this._io6762 = this._bl11315._wy10098._yy6948(this._bc3267);
         this._te8717._pm3274(this._io6762);
         this._xg13385(this._bc3267);
         var _loc6_:String = _mq2583._qi4067(this._bl11315._ir13656,this._bc3267);
         _yq8362._xl9503(this._nm5062[_tq13821][_if6990],this._nr1147[_loc6_.toUpperCase()]);
      }
      
      private function _bu9374(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         var _loc3_:String = _loc2_.name;
         var _loc4_:int = int(_loc3_.charAt(_loc3_.length - 1));
         this._vl5121(_loc4_,true);
      }
      
      private function _iu813(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         var _loc3_:String = _loc2_.name;
         var _loc4_:int = int(_loc3_.charAt(_loc3_.length - 1));
         if(this._bc3267 != _loc4_)
         {
            this._vl5121(_loc4_,false);
         }
      }
      
      private function _qr13919(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         var _loc3_:String = _loc2_.name;
         var _loc4_:int = int(_loc3_.charAt(_loc3_.length - 1));
         this._pl6982(_loc4_);
      }
      
      private function _vl5121(param1:int, param2:Boolean) : void
      {
         var _loc3_:MovieClip = MovieClip(this._nm5062[_ek7225][_se2789 + param1]);
         if(param2)
         {
            _xv14798._ts14032(_loc3_[_ot2217],_iq1505);
            _yq8362._np7275(_loc3_[_bf4123],_nd54);
         }
         else
         {
            _xv14798._ts14032(_loc3_[_ot2217],_xw15479);
            _yq8362._np7275(_loc3_[_bf4123],_gh12749);
         }
      }
      
      public function updateColor() : void
      {
         this._bl11315._cp2768(this._io6762);
      }
      
      public function _nv6346(param1:MouseEvent = null) : void
      {
         var _loc2_:int = int(this._bl11315._wy10098._xb15586());
         var _loc3_:int = this._bc3267 + 1;
         if(_loc3_ >= _loc2_)
         {
            _loc3_ = 0;
         }
         this._pl6982(_loc3_);
      }
      
      public function _bh701(param1:MouseEvent = null) : void
      {
         var _loc2_:Array = this._bl11315._or5423();
         this._ut4147._fq658 = this._gs15685();
         this._vp454._dg2398(this._ut4147._vn12441,this._ut4147.name,this._ut4147._fq658,_loc2_[0],_loc2_[1]);
         this._hu12389();
      }
      
      private function _fb686(param1:MouseEvent) : void
      {
         if(MovieClip(param1.currentTarget) == MovieClip(this._nm5062[_gm15302]))
         {
            _yq8362._np7275(this._nm5062[_gm15302][_uw2471],_hl13620);
         }
         else if(MovieClip(param1.currentTarget) == MovieClip(this._nm5062[_lx2215]))
         {
            _yq8362._np7275(this._nm5062[_lx2215][_cw1144],_hl13620);
         }
         this._ew4224(param1);
      }
      
      private function _ud7664(param1:MouseEvent) : void
      {
         if(MovieClip(param1.currentTarget) == MovieClip(this._nm5062[_gm15302]))
         {
            _yq8362._np7275(this._nm5062[_gm15302][_uw2471],_uo3435);
         }
         else if(MovieClip(param1.currentTarget) == MovieClip(this._nm5062[_lx2215]))
         {
            _yq8362._np7275(this._nm5062[_lx2215][_cw1144],_uo3435);
         }
         this._ib13309(param1);
      }
      
      private function _ew4224(param1:MouseEvent) : void
      {
         MovieClip(param1.currentTarget).gotoAndStop(_ax13262._jo8252);
      }
      
      private function _ib13309(param1:MouseEvent) : void
      {
         MovieClip(param1.currentTarget).gotoAndStop(_ax13262._vk6252);
      }
      
      private function _ei374(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         switch(this._re3848)
         {
            case _si13030:
               _loc2_ = [_lx2215,_gm15302,_bk9265];
               _loc3_ = 0;
               for(; _loc3_ < _loc2_.length; _loc3_++)
               {
                  if(MovieClip(param1.currentTarget) != MovieClip(this._nm5062[_loc2_[_loc3_]]))
                  {
                     continue;
                  }
                  switch(_loc3_)
                  {
                     case 0:
                        --this._cx15588;
                        if(this._cx15588 < 0)
                        {
                           this._cx15588 = (_mj9871[this._qu15274] as Array).length - 1;
                        }
                        this._xo11249(_ws2609);
                        this._jd12664 = _jj9523;
                        break;
                     case 1:
                        ++this._cx15588;
                        if(this._cx15588 >= (_mj9871[this._qu15274] as Array).length)
                        {
                           this._cx15588 = 0;
                        }
                        this._xo11249(_ws2609);
                        this._jd12664 = _jj9523;
                        break;
                     case 2:
                        this._xo11249(_ff11526);
                  }
               }
               return;
            case _ff11526:
               _loc2_ = [_bk9265];
               _loc3_ = 0;
               for(; _loc3_ < _loc2_.length; _loc3_++)
               {
                  if(MovieClip(param1.currentTarget) != MovieClip(this._nm5062[_loc2_[_loc3_]]))
                  {
                     continue;
                  }
                  switch(_loc3_)
                  {
                     case 0:
                        this._wc13970();
                  }
               }
               return;
            default:
               return;
         }
      }
      
      private function _oy9976() : void
      {
         if(this._te8717 != null)
         {
            this._te8717.destroy();
            this._te8717 = null;
         }
         this._jd12664 = _ac2046;
      }
      
      public function loop() : void
      {
         if(this._re3848 == _ff11526)
         {
            this._nm5062.stage.focus;
            if(!(this._nm5062.stage.focus is TextField) && TextField(this._nm5062[_kg2410]) != null)
            {
               this._nm5062.stage.focus = TextField(this._nm5062[_kg2410]);
            }
         }
      }
      
      private function _ek8929() : void
      {
         var _loc1_:int = 0;
         switch(this._re3848)
         {
            case _si13030:
               MovieClip(this._nm5062[_lx2215]).addEventListener(MouseEvent.ROLL_OVER,this._fb686);
               MovieClip(this._nm5062[_lx2215]).addEventListener(MouseEvent.ROLL_OUT,this._ud7664);
               MovieClip(this._nm5062[_lx2215]).addEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               MovieClip(this._nm5062[_gm15302]).addEventListener(MouseEvent.ROLL_OVER,this._fb686);
               MovieClip(this._nm5062[_gm15302]).addEventListener(MouseEvent.ROLL_OUT,this._ud7664);
               MovieClip(this._nm5062[_gm15302]).addEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.ROLL_OVER,this._ew4224);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.ROLL_OUT,this._ib13309);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               return;
            case _ws2609:
               return;
            case _ff11526:
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.ROLL_OVER,this._ew4224);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.ROLL_OUT,this._ib13309);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               TextField(this._nm5062[_kg2410]).addEventListener(KeyboardEvent.KEY_DOWN,this._cp4522);
               this._ea9196 = new _mc12628(TextField(this._nm5062[_kg2410]),10);
               return;
            case _mn14899:
               MovieClip(this._nm5062[_gm15302]).addEventListener(MouseEvent.ROLL_OVER,this._fb686);
               MovieClip(this._nm5062[_gm15302]).addEventListener(MouseEvent.ROLL_OUT,this._ud7664);
               MovieClip(this._nm5062[_gm15302]).addEventListener(MouseEvent.MOUSE_DOWN,this._nv6346);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.ROLL_OVER,this._ew4224);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.ROLL_OUT,this._ib13309);
               MovieClip(this._nm5062[_bk9265]).addEventListener(MouseEvent.MOUSE_DOWN,this._bh701);
               _loc1_ = 0;
               while(_loc1_ < _vr7101)
               {
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc1_]).addEventListener(MouseEvent.ROLL_OVER,this._bu9374);
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc1_]).addEventListener(MouseEvent.ROLL_OUT,this._iu813);
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc1_]).addEventListener(MouseEvent.MOUSE_DOWN,this._qr13919);
                  _loc1_++;
               }
               return;
            default:
               return;
         }
      }
      
      private function _cn7511() : void
      {
         var _loc1_:int = 0;
         switch(this._re3848)
         {
            case _si13030:
               MovieClip(this._nm5062[_lx2215]).removeEventListener(MouseEvent.ROLL_OVER,this._fb686);
               MovieClip(this._nm5062[_lx2215]).removeEventListener(MouseEvent.ROLL_OUT,this._ud7664);
               MovieClip(this._nm5062[_lx2215]).removeEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               MovieClip(this._nm5062[_gm15302]).removeEventListener(MouseEvent.ROLL_OVER,this._fb686);
               MovieClip(this._nm5062[_gm15302]).removeEventListener(MouseEvent.ROLL_OUT,this._ud7664);
               MovieClip(this._nm5062[_gm15302]).removeEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.ROLL_OVER,this._ew4224);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.ROLL_OUT,this._ib13309);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               return;
            case _ws2609:
               return;
            case _ff11526:
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.ROLL_OVER,this._ew4224);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.ROLL_OUT,this._ib13309);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.MOUSE_DOWN,this._ei374);
               TextField(this._nm5062[_kg2410]).removeEventListener(KeyboardEvent.KEY_DOWN,this._cp4522);
               if(this._ea9196 != null)
               {
                  this._ea9196.destroy();
                  this._ea9196 = null;
               }
               return;
            case _mn14899:
               MovieClip(this._nm5062[_gm15302]).removeEventListener(MouseEvent.ROLL_OVER,this._fb686);
               MovieClip(this._nm5062[_gm15302]).removeEventListener(MouseEvent.ROLL_OUT,this._ud7664);
               MovieClip(this._nm5062[_gm15302]).removeEventListener(MouseEvent.MOUSE_DOWN,this._nv6346);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.ROLL_OVER,this._ew4224);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.ROLL_OUT,this._ib13309);
               MovieClip(this._nm5062[_bk9265]).removeEventListener(MouseEvent.MOUSE_DOWN,this._bh701);
               _loc1_ = 0;
               while(_loc1_ < _vr7101)
               {
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc1_]).removeEventListener(MouseEvent.ROLL_OVER,this._bu9374);
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc1_]).removeEventListener(MouseEvent.ROLL_OUT,this._iu813);
                  MovieClip(this._nm5062[_ek7225][_se2789 + _loc1_]).removeEventListener(MouseEvent.MOUSE_DOWN,this._qr13919);
                  _loc1_++;
               }
               return;
            default:
               return;
         }
      }
   }
}

