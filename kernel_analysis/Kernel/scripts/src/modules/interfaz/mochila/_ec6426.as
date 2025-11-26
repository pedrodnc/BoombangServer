package src.modules.interfaz.mochila
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import src.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.mochila.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.config.*;
   import src.modules.interfaz._je14031;
   import src.modules.interfaz.baseChat.*;
   import src.modules.interfaz.mochila.buttons.*;
   import src.modules.objetos._wc3183;
   import src.person._um8624;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components._rn8936;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.*;
   
   public class _ec6426 extends _rn8936
   {
      
      private static const _uo15281:int = 9;
      
      private static const _ma5978:int = 1;
      
      private static const _rj8907:String = "mcFondo";
      
      private static const _va3758:String = "mcMochila";
      
      private static const _ns12859:String = "mcFichaFiltro";
      
      private static const _st11616:String = "mcPanelAdvertencia";
      
      private static const _rs6887:String = "mcHelpMochila";
      
      private static const _pu7146:String = "mcIngresarTextoPocion";
      
      private static const _jj4855:String = "mcCloseButton";
      
      private static const _wi14285:String = "mcBotonScrollMas";
      
      private static const _bb8496:String = "mcBotonScrollMenos";
      
      private static const _sw1667:String = "tfPaginas";
      
      private static const _je571:String = "tfObjetos";
      
      private static const _sg15247:String = "mcObjeto";
      
      private static const _aa1143:String = "mcAvance";
      
      private static const _ic8737:String = "mcBotonMochOpen";
      
      private static const _cq3006:String = "mcBotonMochAll";
      
      private static const _nq5680:String = "mcBotonVolver";
      
      private static const _jf5276:String = "mcIconoSel";
      
      private static const _ll6102:String = "mcPastillaIngCant";
      
      private static const _vo3241:String = "mcButtonHelp";
      
      private static var _qf8183:int = 1;
      
      private var _gs15605:MovieClip;
      
      private var _ut4648:MovieClip;
      
      private var _qp11131:MovieClip;
      
      private var _lp469:_je14031;
      
      private var _im12039:_vu9089;
      
      private var _jt14572:_ug2640;
      
      private var _hl8190:_mg605;
      
      private var _jm3064:_wc3183;
      
      private var _rr3911:_kg183;
      
      private var _ip5122:_kg183;
      
      private var _as14930:_kg183;
      
      private var _aq2335:_te400;
      
      private var _fm13027:_te400;
      
      private var _tq4681:_qo7568;
      
      private var _sx14285:_qp15684;
      
      private var _ko12366:TextField;
      
      private var _sp3999:TextField;
      
      private var _dl3635:MovieClip;
      
      private var _qo8046:MovieClip;
      
      private var _yn12087:_kg183;
      
      private var _xw12338:MovieClip;
      
      private var _fe14377:MovieClip;
      
      private var _gs13409:Array;
      
      private var _vw10006:Array;
      
      private var _dm16168:Array;
      
      private var _mg728:int = 1;
      
      private var _bl5830:int = 0;
      
      private var _bl11315:_il6324;
      
      private var _cj15290:_um8624;
      
      private var _ue10183:int;
      
      private var _av6681:_xu11531;
      
      private var _eu3708:_wq1414;
      
      private var _op3134:_wq1414;
      
      private var _eo14794:_xq1301;
      
      private var _bp12479:MovieClip;
      
      private var _lv11502:Boolean;
      
      private var _nf13965:int;
      
      private var _dr12719:_rm10993;
      
      public function _ec6426(param1:MovieClip, param2:_je14031, param3:_il6324, param4:_wc3183)
      {
         super();
         this._gs15605 = param1[_va3758];
         this._ut4648 = param1[_ns12859];
         this._qp11131 = param1[_st11616];
         this._xw12338 = param1[_rs6887];
         this._fe14377 = param1[_pu7146];
         this._lp469 = param2;
         this._gs15605.visible = false;
         this._hl8190 = _mg605.getInstance();
         this._jm3064 = param4;
         this._qo8046 = MovieClip(this._gs15605[_jf5276]);
         this._ko12366 = TextField(this._gs15605[_sw1667]);
         this._sp3999 = TextField(this._gs15605[_je571]);
         this._dl3635 = param1[_aa1143];
         this._bl11315 = param3;
         this._lv11502 = false;
         this.init();
      }
      
      private function init() : void
      {
         this._im12039 = new _vu9089();
         this._jt14572 = new _ug2640(this,this._im12039,this._ut4648);
         this._eu3708 = new _wq1414(this._xw12338,new _ox15379(this._im12039._pq3280,this._im12039._di350),null,false);
         this._eo14794 = new _xq1301(this._vu7497,this._fe14377,new _ox15379(this._im12039._qw8374,["",""]),this._im12039);
         this._op3134 = new _wq1414(this._qp11131,new _ox15379(this._im12039._mi15528,[this._im12039._bc3358]),null,false);
         _gb14411.getInstance()._rr2446 = _gb14411._nd6891;
         _gb14411.getInstance()._rl15912 = this;
         this._rr3911 = new _kg183(this._gs15605[_jj4855],this._hu12389);
         this._ip5122 = new _kg183(this._gs15605[_wi14285],this._by2486);
         this._as14930 = new _kg183(this._gs15605[_bb8496],this._aj2155);
         this._ip5122._qk12405 = 0.5;
         this._as14930._qk12405 = 0.5;
         this._aq2335 = new _te400(this._gs15605[_ic8737],this._xx6163,this._im12039._jt11415);
         this._fm13027 = new _te400(this._gs15605[_cq3006],this._el14704,this._im12039._is780);
         this._tq4681 = new _qo7568(this._gs15605[_nq5680],this._qy10459,this._im12039.VOLVER);
         this._tq4681._hu12389();
         this._yn12087 = new _kg183(this._gs15605[_vo3241],this._gt9649);
         this._sx14285 = new _qp15684(this._gs15605[_ll6102],this._wb12770,this._im12039);
         this._av6681 = new _xu11531();
         this._vw10006 = new Array();
         this._dm16168 = new Array();
         this._bp12479 = MovieClip(this._gs15605[_rj8907]);
         this._dr12719 = new _rm10993();
         this._dr12719.addEventListener(_rm10993._tl5266,this._un8979);
         this._bp12479.addEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
         addChild(this._gs15605);
         addChild(this._jt14572._lx15907);
         _np5723 = new Point(1,1);
         _wg2951 = new Point(-5,-100);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._hu12389();
         this._rd497();
         this._dr12719.removeEventListener(_rm10993._tl5266,this._un8979);
         this._dr12719.destroy();
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
         if(this._ip5122 != null)
         {
            this._ip5122.destroy();
            this._ip5122 = null;
         }
         if(this._as14930 != null)
         {
            this._as14930.destroy();
            this._as14930 = null;
         }
         if(this._aq2335 != null)
         {
            this._aq2335.destroy();
            this._aq2335 = null;
         }
         if(this._fm13027 != null)
         {
            this._fm13027.destroy();
            this._fm13027 = null;
         }
         if(this._tq4681 != null)
         {
            this._tq4681.destroy();
            this._tq4681 = null;
         }
         if(this._jt14572 != null)
         {
            this._jt14572.destroy();
            this._jt14572 = null;
         }
         if(this._sx14285 != null)
         {
            this._sx14285.destroy();
            this._sx14285 = null;
         }
         if(this._yn12087 != null)
         {
            this._yn12087.destroy();
            this._yn12087 = null;
         }
         if(this._eu3708 != null)
         {
            this._eu3708.destroy();
            this._eu3708 = null;
         }
         if(this._eo14794 != null)
         {
            this._eo14794.destroy();
            this._eo14794 = null;
         }
         if(this._op3134 != null)
         {
            this._op3134.destroy();
            this._op3134 = null;
         }
         this._bp12479.removeEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
         _gb14411.getInstance()._rl15912 = null;
      }
      
      private function _rd497() : void
      {
         var _loc1_:_ta9461 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._dm16168.length)
         {
            _loc1_ = this._dm16168[_loc2_] as _ta9461;
            if(_loc1_ != null)
            {
               _loc1_.destroy();
               _loc1_ = null;
            }
            _loc2_++;
         }
         this._dm16168.length = 0;
      }
      
      private function _af170() : void
      {
         var _loc1_:_ta9461 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._dm16168.length)
         {
            _loc1_ = _ta9461(this._dm16168[_loc2_]);
            if(_loc1_ != null && _loc1_ is _dg12631)
            {
               _dg12631(_loc1_)._yu10990();
            }
            _loc2_++;
         }
      }
      
      private function _cu16108() : void
      {
         var _loc1_:_ta9461 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._dm16168.length)
         {
            _loc1_ = _ta9461(this._dm16168[_loc2_]);
            if(_loc1_ != null && _loc1_ is _dg12631)
            {
               _dg12631(_loc1_)._cj15290 = this._cj15290;
               _dg12631(_loc1_)._bl5830 = this._bl5830;
            }
            _loc2_++;
         }
      }
      
      public function _qk2324(param1:Boolean, param2:_um8624 = null) : void
      {
         this._cj15290 = param2;
         if(param1)
         {
            this._bl5830 = _yp4182._pv6259;
         }
         else if(this._bl11315._ih5473())
         {
            this._bl5830 = _yp4182._vj11806;
         }
         else
         {
            this._bl5830 = _yp4182._jw4744;
         }
         if(this._gs15605.visible)
         {
            this._ya1271();
         }
         this._av6681.reset();
         this._cu16108();
      }
      
      private function _rf15581(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      public function _hu12389() : void
      {
         if(this._gs15605.visible == true)
         {
            this._mg728 = 1;
            this._gs15605.visible = false;
            _xw1367.getInstance()._na10792(this,_xw1367._wa4051);
            this._af170();
            this._rd497();
            if(this._jt14572 != null)
            {
               this._jt14572._hu12389();
            }
         }
      }
      
      public function _db5584() : void
      {
         if(this._gs15605.visible == false)
         {
            this._gs15605.visible = true;
            _xw1367.getInstance()._uc3178(this,_xw1367._wa4051);
            _qf8183 = 1;
            this._lw9732(true);
            this._jt14572._hu12389();
            this._jt14572._ma13571();
            if(_do5953.activate)
            {
               _do5953._vo14571(_vk15050._wh2737);
            }
            this._sx14285._hu12389();
         }
      }
      
      public function _lr8283() : Boolean
      {
         return this._gs15605.visible;
      }
      
      private function _cp4161() : void
      {
         _qf8183 = _ma5978;
      }
      
      private function _ya1271() : void
      {
         this._bk31();
         this._dv5499();
      }
      
      private function _bk31() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:Boolean = false;
         var _loc4_:_ta9461 = null;
         var _loc5_:_gl6654 = null;
         var _loc6_:int = 0;
         this._af170();
         this._rd497();
         this._dm16168 = new Array();
         if(_qf8183 > this._ex15966())
         {
            this._cp4161();
         }
         while(_loc6_ < _uo15281)
         {
            _loc1_ = _loc6_ + (_qf8183 - 1) * _uo15281;
            _loc2_ = this._gs15605[_sg15247 + _loc6_];
            _loc3_ = this._gs13409 != null && _loc1_ < this._gs13409.length;
            if(_loc3_)
            {
               _loc5_ = _gl6654(this._gs13409[_loc1_]);
               if(_loc5_._sl11700._au2864)
               {
                  switch(this._ue10183)
                  {
                     case _sf4063.NORMAL:
                        _loc4_ = new _fd4423(_loc2_,this._dr12719._kv2038,this._dr12719._mw11730,_loc5_,this._dl3635,this._wv11035,this._av6681,this._bl11315,this._im12039);
                        break;
                     case _sf4063._fh12057:
                        _loc4_ = new _mw9921(_loc2_,this._wb11783,_loc5_,this._dl3635,this._bl11315,this._wv11035,this._av6681);
                  }
                  _dg12631(_loc4_)._xj8555 = this._im12039._sq5437;
                  _dg12631(_loc4_)._dh14737 = this._im12039._tb8790;
                  _dg12631(_loc4_)._bl5830 = this._bl5830;
               }
               else if(_loc5_._sl11700._dv13852 == _uq7753._fx1727 || _loc5_._sl11700._dv13852 == _uq7753._am4910 || _loc5_._sl11700._dv13852 == _uq7753._xl121)
               {
                  _loc4_ = new _se7910(_loc2_,this._xg11688,this._qo11602,_loc5_,this._dl3635,this._wv11035,this._av6681,this._bl11315);
                  _se7910(_loc4_)._dh14737 = this._im12039._tb8790;
                  _se7910(_loc4_)._bl5830 = this._bl5830;
               }
               else
               {
                  _loc4_ = new _ig12540(_loc2_,this._wb11783,_loc5_,this._dl3635,this._wv11035,this._av6681,this._bl11315);
                  _ig12540(_loc4_)._dh14737 = this._im12039._tb8790;
                  _ig12540(_loc4_)._bl5830 = this._bl5830;
               }
            }
            else
            {
               _loc4_ = new _yf10821(_loc2_,null,this._im12039._ra14588);
            }
            this._dm16168.push(_loc4_);
            _loc6_++;
         }
         this._cu16108();
      }
      
      private function _qo11602(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         while(_loc3_ < _uo15281)
         {
            _loc2_ = this._gs15605[_sg15247 + _loc3_];
            if(_loc2_ == param1)
            {
               this._gs15605.setChildIndex(param1,this._gs15605.numChildren - 1);
            }
            _loc3_++;
         }
      }
      
      private function _dv5499() : void
      {
         var _loc1_:int = int(this._ex15966());
         _yq8362._xl9503(this._sp3999,this._gs13409.length + " " + this._im12039._aq1419);
         _yq8362._xl9503(this._ko12366,_qf8183 + "/" + _loc1_);
         if(_qf8183 <= _ma5978)
         {
            this._as14930._dy867 = false;
         }
         else
         {
            this._as14930._dy867 = true;
         }
         if(_qf8183 >= _loc1_)
         {
            this._ip5122._dy867 = false;
         }
         else
         {
            this._ip5122._dy867 = true;
         }
      }
      
      private function _ex15966() : int
      {
         return Math.abs((this._gs13409.length - 1) / _uo15281) + 1;
      }
      
      private function _un8979(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:_px10602 = this._dr12719._dc14957.objInstantied;
         if(Boolean(this._dr12719._na1482) && this._bl5830 == _yp4182._pv6259)
         {
            return;
         }
         if(!this._bl11315._ie14377(_loc3_._sl11700._fv13476,_loc3_._sl11700._ou11620) && this._bl5830 != _yp4182._pv6259)
         {
            this._pu8961();
            _loc2_ = this._im12039._bc3358;
            if(_loc3_._sl11700._ou11620.indexOf(_cf9831._hj11698) == -1)
            {
               _loc2_ = this._im12039._ag11421;
            }
            this._op3134._yl6609([_loc2_]);
            this._op3134._db5584(-410,-235);
            addChild(this._op3134._ie7655());
            return;
         }
         this._mg728 = _qf8183;
         this._pu8961();
         if(_gb14411.getInstance()._mw3161(_loc3_._rm6352))
         {
            this._rt7374(_gb14411._mg8184,_loc3_._rm6352);
            if(!this._dr12719._na1482)
            {
               this._ue10183 = _sf4063._fh12057;
               this._cp4161();
               this._ya1271();
               this._tg4743();
            }
            else
            {
               this._dr12719._dc14957 = null;
               this._wb11783(this._gs13409[0]);
            }
         }
         else if(!this._dr12719._na1482)
         {
            _cp9761._il2415(_loc3_._rm6352);
         }
         else
         {
            this._dr12719._dc14957 = null;
            this._wb11783(_loc3_);
         }
      }
      
      public function _fn11952(param1:int) : void
      {
         if(!this._dr12719._na1482 && this._dr12719._dc14957 && this._dr12719._dc14957.objInstantied._rm6352 == param1)
         {
            this._ue10183 = _sf4063._fh12057;
            this._is11991(_gb14411._mg8184,param1);
            this._eu383();
            this._tg4743();
         }
      }
      
      private function _wb11783(param1:_px10602) : void
      {
         this._mg728 = _qf8183;
         if(this._bl11315._xn7478)
         {
            this._hl8190._rv11337(_gl6654(param1));
         }
      }
      
      private function _xg11688(param1:_px10602) : void
      {
         var _loc2_:Point = null;
         var _loc3_:_um8624 = null;
         this._mg728 = _qf8183;
         if(param1._sl11700._dv13852 == _uq7753._am4910)
         {
            if(this._lp469 != null && this._lp469._xx1581 != null)
            {
               _loc2_ = _il6324.getPlotXY(_hv12530.getInstance()._gn15250);
               this._lp469._xx1581._kg10630(this._im12039._by8495,null,_cc7688._wc13865 / 2,_loc2_.y,_db131._kl8694);
            }
            this._lv11502 = true;
            this._nf13965 = param1._rm6352;
         }
         else if(param1._sl11700._dv13852 == _uq7753._xl121)
         {
            this._pu8961();
            addChild(this._eo14794._ie7655());
            this._eo14794._db5584(-410,-235);
            this._nf13965 = param1._rm6352;
         }
         else
         {
            _loc3_ = this._lp469._pg15744();
            if(_loc3_ != null)
            {
               this._jm3064._sn16102(_loc3_.id,param1._rm6352);
            }
         }
      }
      
      public function _vu7497(param1:String) : void
      {
         var _loc2_:_um8624 = this._lp469._pg15744();
         if(_loc2_ != null)
         {
            this._jm3064._ve3136(_loc2_.id,this._nf13965,param1);
            this._eo14794._hu12389();
            removeChild(this._eo14794._ie7655());
         }
      }
      
      public function _fv10557(param1:int, param2:int) : Boolean
      {
         var _loc3_:_um8624 = null;
         if(this._lv11502)
         {
            _loc3_ = this._lp469._pg15744();
            this._lv11502 = false;
            if(_loc3_ != null)
            {
               this._jm3064._ov7112(_loc3_.id,this._nf13965,param1,param2);
            }
            return false;
         }
         return true;
      }
      
      private function _wv11035(param1:_gl6654) : void
      {
         var _loc2_:Boolean = Boolean(this._lp469._rr6481._jc12333());
         if(!_loc2_)
         {
            return;
         }
         if(param1._sl11700._au2864)
         {
            this._lp469._ht10080(param1,1);
         }
         else
         {
            this._sx14285._db5584(param1,this._av6681._xq15842(param1));
         }
      }
      
      public function _ke4252(param1:int, param2:int, param3:int) : void
      {
         this._av6681._gd15941(param1,param2,param3);
         this._bk31();
      }
      
      private function _wb12770(param1:_gl6654, param2:int) : void
      {
         if(this._av6681._as10156(param1,param2))
         {
            this._av6681.add(param1,param2);
            this._lp469._ht10080(param1,param2);
            this._sx14285._hu12389();
            this._bk31();
         }
      }
      
      public function _fh8876() : void
      {
         this._av6681._fh8876();
      }
      
      private function _gt9649() : void
      {
         this._pu8961();
         this._eu3708._db5584(-410,-233);
         addChild(this._eu3708._ie7655());
      }
      
      private function _pu8961(param1:* = null) : void
      {
         if(param1 != this._jt14572)
         {
            this._jt14572._hu12389();
         }
         this._eu3708._hu12389();
         this._eo14794._hu12389();
         this._op3134._hu12389();
      }
      
      private function _by2486() : void
      {
         this._as14930._iv1460();
         if(this._ue10183 == _sf4063.NORMAL)
         {
            this._is11991(_gb14411.getInstance()._dy15716(),-1);
         }
         var _loc1_:int = int(this._ex15966());
         ++_qf8183;
         if(_qf8183 > _loc1_)
         {
            _qf8183 = _loc1_;
         }
         else
         {
            this._ya1271();
         }
      }
      
      private function _aj2155() : void
      {
         this._ip5122._iv1460();
         if(this._ue10183 == _sf4063.NORMAL)
         {
            this._is11991(_gb14411.getInstance()._dy15716(),-1);
         }
         --_qf8183;
         if(_qf8183 < 1)
         {
            this._cp4161();
         }
         else
         {
            this._ya1271();
         }
      }
      
      private function _xx6163(param1:_te400) : void
      {
         this._pu8961(this._jt14572);
         this._jt14572._db5584();
      }
      
      private function _el14704(param1:_te400) : void
      {
         this._is11991(_gb14411._mg8184,-1);
         this._eu383();
         this._jt14572._ca9900();
      }
      
      private function _qy10459() : void
      {
         this._lw9732();
      }
      
      private function _tg4743() : void
      {
         this._aq2335._hu12389();
         this._fm13027._hu12389();
         this._tq4681._db5584();
      }
      
      private function _fb8604() : void
      {
         this._aq2335._db5584();
         this._fm13027._db5584();
         this._tq4681._hu12389();
      }
      
      public function _eu383() : void
      {
         if(this._gs15605.visible == true)
         {
            this._ya1271();
         }
      }
      
      public function _am11997() : void
      {
         if(this._gs15605.visible == true)
         {
            if(this._ue10183 == _sf4063.NORMAL)
            {
               this._lw9732();
            }
            this._ya1271();
         }
      }
      
      public function _lw9732(param1:Boolean = false) : void
      {
         this._ue10183 = _sf4063.NORMAL;
         if(param1)
         {
            this._mg728 = 1;
            _qf8183 = 1;
            this._is11991(_gb14411._mg8184,-1);
         }
         else
         {
            _qf8183 = this._mg728;
            this._is11991(_gb14411.getInstance()._dy15716(),-1);
         }
         this._eu383();
         this._fb8604();
      }
      
      public function _ro8783(param1:int) : void
      {
         this._qo8046.gotoAndStop(1 + _ug2640._iw12439(param1));
      }
      
      public function _is11991(param1:int, param2:int) : void
      {
         if(param2 == -1)
         {
            this._ue10183 = _sf4063.NORMAL;
         }
         this._gs13409 = _gb14411.getInstance()._ks8566(param1,this._ue10183,param2,this._bl11315);
         this._ro8783(param1);
      }
      
      public function _rt7374(param1:int, param2:int) : void
      {
         this._gs13409 = _gb14411.getInstance()._ks8566(param1,_sf4063._fh12057,param2,this._bl11315);
         this._ro8783(param1);
      }
      
      public function _ja12969(param1:int) : void
      {
         var _loc2_:_gl6654 = null;
         var _loc3_:int = 0;
         if(this._gs13409 == null)
         {
            return;
         }
         while(_loc3_ < this._gs13409.length)
         {
            _loc2_ = _gl6654(this._gs13409[_loc3_]);
            if(_loc2_._hw14129 == param1)
            {
               _qf8183 = 1 + int(_loc3_ / _uo15281);
               this._ya1271();
               return;
            }
            _loc3_++;
         }
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         return this._gs15605.hitTestPoint(param1,param2,param3);
      }
      
      override public function get x() : Number
      {
         return this._gs15605.x;
      }
      
      override public function get visible() : Boolean
      {
         return this._gs15605.alpha > 0.5;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            this._gs15605.alpha = 1;
         }
         else
         {
            this._gs15605.alpha = 0.2;
         }
      }
   }
}

