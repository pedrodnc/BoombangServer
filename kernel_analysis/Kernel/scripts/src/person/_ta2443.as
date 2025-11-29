package src.person
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import src.*;
   import src.allData.*;
   import src.allData.color._qm1392;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects._pn6073;
   import src.logs.*;
   import src.modules.interfaz._je14031;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.person.animations.*;
   import src.person.pociones.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.movement._ww13428;
   import src.utils.*;
   
   public class _ta2443 extends _pn6073
   {
      
      public static const _dt3039:int = 2;
      
      public static const _yj3530:int = 3;
      
      public static const _md13017:int = 4;
      
      public static const _tn15810:int = 5;
      
      public static const _vo9918:int = 6;
      
      public static const _vp4764:int = 7;
      
      public static const _qf6937:int = 8;
      
      public static const _vf3479:int = 9;
      
      public static const _mm16149:int = 10;
      
      public static const _dy11061:int = 11;
      
      public static const _qj6010:int = 12;
      
      public static const _el2440:int = 13;
      
      public static const _vr2581:int = 14;
      
      public static const _rq2856:int = 15;
      
      public static const _ad6867:int = 16;
      
      private const _fq11133:uint = 16737792;
      
      private const _en10708:uint = 10027199;
      
      private const _ey157:uint = 16763904;
      
      private const _mf8853:String = "mcVotesKeko";
      
      private const _ao11319:String = "mcOnomatopeya";
      
      private const _su13233:String = "play";
      
      private var _jf6199:uint;
      
      private var _mj9923:_je4353;
      
      private var _me14044:_um8624;
      
      private var _mv15335:Boolean;
      
      private var _state:int;
      
      private var _cn7800:int;
      
      private var _pa10256:_ga7956;
      
      private var _vj14087:_il6324;
      
      private var _dw1205:Boolean;
      
      private var _yv6807:_rn15283;
      
      private var _tv3848:MovieClip;
      
      private var _dk14093:MovieClip;
      
      private var _os7165:MovieClip;
      
      private var _xu1711:MovieClip;
      
      private var _yg491:MovieClip;
      
      private var _xc6216:MovieClip;
      
      private var _ti5036:MovieClip;
      
      private var _hi2472:MovieClip;
      
      private var _qa7825:Array;
      
      private var _hr14603:int;
      
      private var _id7378:int;
      
      private var _tm7422:_qn13596;
      
      private var _pb5683:int;
      
      private var _ba14007:_ql8928;
      
      private var _wp13295:_je14031;
      
      private var _ad3566:_ca11681;
      
      public function _ta2443(param1:_um8624, param2:_il6324, param3:Boolean)
      {
         super();
         this._me14044 = param1;
         this._mv15335 = param3;
         this._pa10256 = _ga7956.getInstance();
         this._vj14087 = param2;
         this._qa7825 = _ga7956._qc8808[param1._jn11596];
         this._pb5683 = -1;
         this._tm7422 = _qn13596.getInstance();
         this._vw4235();
      }
      
      public function get isSelected() : Boolean
      {
         return this._dw1205;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._dw1205 = param1;
         if(this._yv6807)
         {
            this._yv6807.selected = param1;
         }
      }
      
      public function _gj9864(param1:_ta2443) : Boolean
      {
         var _loc2_:Point = this._me14044._gn15250;
         var _loc3_:Point = param1._me14044._gn15250;
         return _loc2_.x == _loc3_.x + 1 && _loc2_.y == _loc3_.y + 1 || _loc2_.x == _loc3_.x - 1 && _loc2_.y == _loc3_.y - 1;
      }
      
      public function loop() : void
      {
         if(this._mj9923 != null)
         {
            this._mj9923.loop();
         }
         if(this._ad3566 != null)
         {
            this._ad3566.x = x;
            this._ad3566.y = y + 20;
         }
         if(this._mv15335)
         {
            _xw1367.getInstance()._ut10346(new Point(x,y));
         }
      }
      
      private function _rf5803(param1:int) : void
      {
         this._gq627();
         this._hr14603 = param1;
         this._state = _dt3039;
         this._mj9923 = new _je4353(this._me14044,this._tv3848,this._hr14603,_ga7956._sp1959,this._rf5803);
      }
      
      private function _nu12681() : void
      {
         var _loc1_:Point = _il6324.getPlotXY(this._me14044._gn15250);
         this.x = _loc1_.x;
         this.y = _loc1_.y;
         this._tv3848.x = 0;
         this._tv3848.y = 0;
         this._dk14093.x = 0;
         this._dk14093.y = 0;
      }
      
      public function _rk14068() : void
      {
         if(this._ba14007 != null)
         {
            this._ba14007._qm1808();
         }
      }
      
      public function _gq627() : void
      {
         if(this._mj9923 != null)
         {
            this._mj9923.destroy();
            this._mj9923 = null;
         }
         this._nu12681();
      }
      
      public function _yt3158() : MovieClip
      {
         var _loc1_:MovieClip = null;
         if(this._mj9923 != null)
         {
            _loc1_ = this._mj9923._mf2390();
            _loc1_.mouseEnabled = false;
            _loc1_.mouseChildren = false;
         }
         return _loc1_;
      }
      
      public function _vl13266() : int
      {
         return this._ba14007._ep13455;
      }
      
      public function _ys15659() : void
      {
         if(this._ba14007 != null)
         {
            this._ba14007.destroy();
         }
         this._gq627();
         if(this._yv6807 != null)
         {
            this._yv6807.destroy();
            this._yv6807.removeEventListener(MouseEvent.MOUSE_OVER,this._to10453);
            this._yv6807.removeEventListener(MouseEvent.MOUSE_OUT,this._to10453);
            this._yv6807 = null;
         }
         if(this._ad3566 != null)
         {
            _xw1367.getInstance()._na10792(this._ad3566,_xw1367._kg5042);
            this._ad3566.destroy();
            this._ad3566 = null;
         }
         this._tv3848 = null;
         this._dk14093 = null;
      }
      
      public function _os12895(param1:int, param2:int, param3:Array) : void
      {
         this._nu12681();
         this._rf5803(this._me14044.orientation);
         this._ba14007._ql9411(param1,param2,param3,1);
      }
      
      public function _al12408(param1:int) : void
      {
         if(this._me14044._ta15622 != -1)
         {
            this._nu12681();
            this._rf5803(this._me14044.orientation);
            this._ba14007._al12408(param1);
         }
      }
      
      public function _dl12997(param1:_je14031) : void
      {
         this._wp13295 = param1;
         this._ba14007._hs4850(param1);
      }
      
      public function _jc6052() : void
      {
         if(this._me14044._ta15622 != -1)
         {
            if(this._me14044._ta15622 == _td11801._di14258 || this._me14044._ta15622 == _td11801._oi13669)
            {
               this._me14044._ta15622 = -1;
               return;
            }
            this._ba14007._ql9411(this._me14044._ta15622,this._me14044._ta15622,[],_td11801._eq4750);
         }
         else
         {
            this._me14044._bo414 = true;
            this._me14044._mr3266 = true;
            this._me14044._lc2476 = true;
            this._me14044._wf5053 = true;
            this._me14044._vl6015 = true;
            this._me14044._le185 = true;
            this._me14044._bj11164 = true;
         }
      }
      
      public function _yc2612(param1:String) : void
      {
         if(this._su11409())
         {
            return;
         }
         if(this._state != _dt3039)
         {
            return;
         }
         this._gq627();
         this._state = _yj3530;
         this._rk14068();
         this._gq627();
         this._mj9923 = new _ed4977(this._me14044,this._vj14087,this._tv3848,this._hr14603,_ga7956._iu9590,this._rf5803,param1);
      }
      
      public function _hv9874(param1:_ww13428) : void
      {
         this._gq627();
         this._state = _md13017;
         this._rk14068();
         this._gq627();
         this._mj9923 = new _fl10554(this._me14044,this._vj14087,this._tv3848,_ga7956._ei6715,this._rf5803,this,param1);
      }
      
      public function _dx16108() : void
      {
         this._sk14601(_ga7956._ec13605);
      }
      
      public function _qw8700() : void
      {
         this._sk14601(_ga7956._gh4713);
      }
      
      public function _sk14601(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this._su11409())
         {
            return;
         }
         switch(param1)
         {
            case _ga7956._ek5093:
            case _ga7956._es3562:
            case _ga7956._rk4717:
            case _ga7956._kg3070:
            case _ga7956._dl10072:
            case _ga7956._ur9005:
            case _ga7956._aq5881:
            case _ga7956._ib10191:
            case _ga7956._rm14308:
            case _ga7956._gc7475:
            case _ga7956._rm16010:
            case _ga7956._ua15232:
               this._dq6221(param1 - _ga7956._ek5093 + 1);
               return;
            case _ga7956._gd13066:
            case _ga7956._hh6084:
            case _ga7956._lx10506:
            case _ga7956._ft11477:
            case _ga7956._pq3567:
            case _ga7956._li10585:
            case _ga7956._lo13715:
               _loc2_ = int(this._mj9923._go9677());
               this._gq627();
               this._state = _tn15810;
               this._rk14068();
               this._gq627();
               this._mj9923 = new _xk11626(this._me14044,this._vj14087,this._tv3848,this._hr14603,param1,this._rf5803,_loc2_);
               return;
            case _ga7956._ec13605:
            case _ga7956._gh4713:
               this._gq627();
               this._state = _tn15810;
               this._rk14068();
               this._gq627();
               this._mj9923 = new _xk11626(this._me14044,this._vj14087,this._tv3848,this._hr14603,param1,this._rf5803);
               return;
            case _ga7956._we2906:
               if(this._yi6398())
               {
                  this._gq627();
                  this._state = _vo9918;
                  this._rk14068();
                  this._gq627();
                  this._mj9923 = new _yy5886(this._me14044,this._vj14087,this._tv3848,this._hr14603,param1,this._rf5803,this._xc6216);
               }
               return;
            default:
               this._tm7422._kp3815(new _sy12041(_qn13596._dj10628,"Person.setEmoticon","idAction incorrect=" + param1));
               return;
         }
      }
      
      public function _ke8853(param1:int) : void
      {
         this._gq627();
         this._me14044._cj5718 = param1;
         this._rf5803(this._me14044.orientation);
         this._wp12919();
      }
      
      public function _sj12712() : void
      {
         this._ke8853(0);
      }
      
      private function _vo12892() : void
      {
         this._yg491 = _xr3315._ju6982("Humo");
         _xv14798._vb14910(this._yg491);
         this._dk14093.addChild(this._yg491);
         this._yg491.x = 0;
         this._yg491.y = 0;
      }
      
      public function _wp12919() : void
      {
         this._yg491.gotoAndPlay(this._su13233);
      }
      
      public function _bt12289(param1:int, param2:_qm1392, param3:Boolean) : void
      {
         this._gq627();
         this._me14044._jn11596 = param1;
         this._me14044.colors = param2;
         this._rf5803(this._me14044.orientation);
         if(param3)
         {
            this._wp12919();
         }
      }
      
      public function _qj6199(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean) : void
      {
         var _loc7_:int = 0;
         this._me14044._gn15250 = new Point(param1,param2);
         this._gq627();
         this._state = _vr2581;
         this._rk14068();
         this._gq627();
         if(param3 > param1)
         {
            _loc7_ = int(_ga7956._md2772);
         }
         else
         {
            _loc7_ = int(_ga7956._xk5541);
         }
         switch(param5)
         {
            case _qb57._oh5695:
               this._mj9923 = new _bf2385(this._me14044,this._vj14087,this._tv3848,_loc7_,_ga7956._og8879,this._me5134);
               if(_loc7_ == _ga7956._xk5541)
               {
                  this._jb4508();
               }
               return;
            case _qb57._ij14791:
               this._mj9923 = new _bf2385(this._me14044,this._vj14087,this._tv3848,_loc7_,_ga7956._pw1399,this._me5134);
               return;
            case _qb57._lj14471:
               if(param6)
               {
                  this._mj9923 = new _bf2385(this._me14044,this._vj14087,this._tv3848,_loc7_,_ga7956._se15099,this._me5134);
               }
               else
               {
                  this._mj9923 = new _bf2385(this._me14044,this._vj14087,this._tv3848,_loc7_,_ga7956._dq20,this._me5134);
               }
               return;
            default:
               return;
         }
      }
      
      private function _me5134(param1:int) : void
      {
         this._rf5803(param1);
         if(this._mv15335)
         {
            this._nj8599();
         }
      }
      
      public function _es4463(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         this._me14044._gn15250 = new Point(param3,param4);
         this._gq627();
         this._state = _qf6937;
         this._rk14068();
         this._gq627();
         if(param3 > param5)
         {
            this._hr14603 = _ga7956._my520[this._me14044._jn11596];
         }
         else
         {
            this._hr14603 = _ga7956._se2811[this._me14044._jn11596];
         }
         this._mj9923 = new _bf2385(this._me14044,this._vj14087,this._tv3848,this._hr14603,_ga7956._ya12466,this._me5134);
      }
      
      public function _yy3392(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         this._me14044._gn15250 = new Point(param3,param4);
         this._gq627();
         this._state = _vf3479;
         this._rk14068();
         this._gq627();
         if(param3 > param5)
         {
            this._hr14603 = _ga7956._gc925[this._me14044._jn11596];
         }
         else
         {
            this._hr14603 = _ga7956._hy3511[this._me14044._jn11596];
         }
         this._mj9923 = new _nq14620(this._me14044,this._vj14087,this._tv3848,this._hr14603,_ga7956._cn5856,this._me5134);
      }
      
      public function _sl11959() : void
      {
         this._gq627();
         this._state = _vf3479;
         this._rk14068();
         this._gq627();
         this._hr14603 = _ga7956._hy3511[this._me14044._jn11596];
         this._mj9923 = new _pf5511(this._me14044,this._vj14087,this._tv3848,this._hr14603,_ga7956._cn5856,this._me5134);
      }
      
      private function _kx1064() : void
      {
         this._os7165 = _xr3315._ju6982("Coco");
         _xv14798._vb14910(this._os7165);
         this._dk14093.addChild(this._os7165);
         this._os7165.x = 0;
         this._os7165.y = 0;
      }
      
      public function _rw12419(param1:int) : void
      {
         this._gq627();
         this._state = _mm16149;
         this._rk14068();
         this._gq627();
         this._mj9923 = new _iu1130(this._me14044,this._vj14087,this._tv3848,this._hr14603,_ga7956._oj5574,this._me5134,this,this._os7165,param1);
      }
      
      public function _xj5785() : void
      {
         this._gq627();
         this._state = _vp4764;
         this._rk14068();
         this._gq627();
         this._mj9923 = new _bb16156(this._me14044,this._vj14087,this._tv3848,this._hr14603,_ga7956._wp1607,this._me5134);
      }
      
      public function _lt4457() : Boolean
      {
         if((this._state == _dt3039 || this._state == _yj3530) && Boolean(_hv12530.getInstance()._bj11164))
         {
            return true;
         }
         return false;
      }
      
      public function _ip6834(param1:Point) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Point = _il6324.getPlotXY(this._me14044._gn15250);
         var _loc5_:Point = _il6324.getPlotXY(param1);
         if(_loc4_.x == _loc5_.x)
         {
            _loc2_ = 0;
         }
         else if(_loc5_.x > _loc4_.x)
         {
            _loc2_ = 1;
         }
         else
         {
            _loc2_ = 2;
         }
         if(_loc4_.y == _loc5_.y)
         {
            _loc3_ = 0;
         }
         else if(_loc5_.y > _loc4_.y)
         {
            _loc3_ = 1;
         }
         else
         {
            _loc3_ = 2;
         }
         return this._pa10256._ip6834(_loc2_,_loc3_);
      }
      
      public function _cu5001(param1:int, param2:int, param3:int) : void
      {
         if(this._su11409())
         {
            return;
         }
         this._me14044._gn15250 = new Point(param2,param3);
         this._rf5803(param1);
      }
      
      private function _lg13966() : void
      {
         this._xc6216 = _xr3315._ju6982("Corazon");
         _xv14798._vb14910(this._xc6216);
         this._dk14093.addChild(this._xc6216);
         this._xc6216.x = 0;
         this._xc6216.y = -110;
      }
      
      private function _dh506() : void
      {
         this._ti5036 = _xr3315._ju6982("Votos");
         _xv14798._vb14910(this._ti5036);
         this._dk14093.addChild(this._ti5036);
         this._ti5036.x = 0;
         this._ti5036.y = -110;
      }
      
      public function _vs3267(param1:int) : void
      {
         this._ti5036[this._mf8853 + 1].gotoAndPlay(this._su13233);
         this._ti5036[this._mf8853 + 2].gotoAndPlay(this._su13233);
         this._ti5036[this._mf8853 + 3].gotoAndPlay(this._su13233);
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = _ga7956._qm14410[param1];
         this._ti5036[this._mf8853 + 2].transform.colorTransform = _loc2_;
         _loc2_.blueMultiplier = -1;
         _loc2_.redMultiplier = -1;
         _loc2_.greenMultiplier = -1;
         this._ti5036[this._mf8853 + 1].transform.colorTransform = _loc2_;
      }
      
      private function _qg8427() : void
      {
         this._xu1711 = _xr3315._ju6982("Onomatopeyas");
         _xv14798._vb14910(this._xu1711);
         this._dk14093.addChild(this._xu1711);
         this._xu1711.x = 0;
         this._xu1711.y = -90;
      }
      
      public function _dq6221(param1:int) : void
      {
         this._pb5683 = param1;
         MovieClip(this._xu1711[this._ao11319 + this._pb5683]).gotoAndPlay(this._su13233);
      }
      
      private function _ms5194() : void
      {
         this._hi2472 = _xr3315._ju6982("CorazonBesosSanValentin");
         _xv14798._vb14910(this._hi2472);
         this._dk14093.addChild(this._hi2472);
         this._hi2472.x = 0;
         this._hi2472.y = -70;
      }
      
      public function _jb4508() : void
      {
         if(this._hi2472 == null)
         {
            this._ms5194();
         }
         this._hi2472.gotoAndPlay(this._su13233);
         this._hi2472.x = -40;
      }
      
      public function _am12322(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Point = _il6324.getPlotXY(new Point(param1,param2));
         this.x = _loc4_.x;
         this.y = _loc4_.y;
         this._me14044._gn15250 = new Point(param1,param2);
         this._rf5803(param3);
      }
      
      public function _su11409() : Boolean
      {
         if(this._state == _vp4764 || this._state == _qf6937 || this._state == _vf3479 || this._state == _mm16149 || this._state == _vr2581)
         {
            return true;
         }
         return false;
      }
      
      public function _yi6398() : Boolean
      {
         if(this._state == _dt3039 || this._state == _yj3530)
         {
            return true;
         }
         return false;
      }
      
      public function _nj8599() : void
      {
         dispatchEvent(new _ir15723(_ir15723._aa5196,_ir15723._jg8566));
      }
      
      public function _fl1743() : Boolean
      {
         if(this._state == _vp4764 || this._state == _qf6937 || this._state == _vf3479 || this._state == _mm16149)
         {
            return false;
         }
         return true;
      }
      
      public function _gh13396() : Boolean
      {
         if(this._state == _qf6937 || this._state == _vf3479)
         {
            return true;
         }
         return false;
      }
      
      public function _tg4140() : void
      {
         this._yv6807._tg4140();
      }
      
      public function _dj6068() : void
      {
         this._yv6807._dj6068();
      }
      
      public function _ai3755() : void
      {
         this._yv6807._ai3755();
      }
      
      protected function _vb8756(param1:MouseEvent) : void
      {
         this.filters = [];
         if(this._ad3566)
         {
            this._ad3566.visible = false;
         }
      }
      
      protected function _to10453(param1:MouseEvent) : void
      {
         this.filters = [new GlowFilter(this._jf6199,1,4,4,20)];
         if(this._ad3566)
         {
            this._ad3566.visible = true;
         }
      }
      
      private function _vw4235() : void
      {
         if(this._me14044._lk2235.indexOf("[1]") >= 0)
         {
            this._jf6199 = 13290186;
         }
         else if(this._me14044._lk2235.indexOf("[2]") >= 0)
         {
            this._jf6199 = 16711680;
         }
         else if(this._me14044._lk2235.indexOf("[3]") >= 0)
         {
            this._jf6199 = this._en10708;
         }
         else if(this._me14044._lk2235.indexOf("[4]") >= 0)
         {
            this._jf6199 = 3947580;
         }
         else if(this._me14044.name == "" || this._me14044.name == "")
         {
            this._jf6199 = 15173137;
         }
         else if(this._me14044._vm2039 == 11)
         {
            this._jf6199 = 11513775;
         }
         else if(this._me14044._vm2039 == 10)
         {
            this._jf6199 = 10354688;
         }
         else if(this._me14044._vm2039 == 9)
         {
            this._jf6199 = 1474628;
         }
         else if(this._me14044._vm2039 == 8)
         {
            this._jf6199 = 1677512;
         }
         else if(this._me14044._vm2039 == 7)
         {
            this._jf6199 = 12804608;
         }
         else if(this._me14044._vm2039 == 6)
         {
            this._jf6199 = 13050777;
         }
         else if(this._me14044.name == "" || this._me14044.name == "" || this._me14044.name == "")
         {
            this._jf6199 = 15173137;
         }
         else if(this._me14044._vm2039 >= 12)
         {
            this._jf6199 = this._ey157;
         }
         else if(this._me14044.member == 1)
         {
            this._jf6199 = this._en10708;
         }
         else if(this._me14044.member == 2)
         {
            this._jf6199 = 3947580;
         }
         else
         {
            this._jf6199 = this._fq11133;
         }
         this._dk14093 = new MovieClip();
         this._yv6807 = new _rn15283(this._jf6199);
         this._yv6807.addEventListener(MouseEvent.MOUSE_OVER,this._to10453,false,0,true);
         this._yv6807.addEventListener(MouseEvent.MOUSE_OUT,this._vb8756,false,0,true);
         addChild(this._yv6807);
         this._tv3848 = new MovieClip();
         this._tv3848.mouseEnabled = false;
         this._tv3848.mouseChildren = false;
         this._dk14093.addChild(this._tv3848);
         var _loc1_:MovieClip = new MovieClip();
         addChild(_loc1_);
         addChild(this._dk14093);
         this._dk14093.x = 0;
         this._dk14093.y = 0;
         var _loc2_:MovieClip = new MovieClip();
         addChild(_loc2_);
         var _loc3_:MovieClip = new MovieClip();
         addChild(_loc3_);
         this._ba14007 = new _ql8928(this,this._tv3848,this._yv6807,_loc2_,_loc3_,_loc1_,this._me14044,this._pa10256,this._bt12289);
         this._kx1064();
         this._lg13966();
         this._dh506();
         this._qg8427();
         this._vo12892();
         this._rf5803(this._me14044.orientation);
         this._nu12681();
         this.width *= this._vj14087._go7360;
         this.height *= this._vj14087._go7360;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ad3566 = new _ca11681();
         this._ad3566.text = this._me14044.name;
         this._ad3566.fontSize = 11;
         this._ad3566._xe10297 = _wk9007.TOP;
         this._ad3566.padding = 0;
         this._ad3566.backgroundColor = this._jf6199;
         this._ad3566.textColor = 16777215;
         this._ad3566.mouseEnabled = false;
         this._ad3566.mouseChildren = false;
         this._ad3566.visible = false;
         this._ad3566._sl14850();
         _xw1367.getInstance()._uc3178(this._ad3566,_xw1367._kg5042,false);
      }
      
      public function _na13725(param1:Number, param2:Number) : Number
      {
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         if(this._dk14093 != null)
         {
            _loc3_ = this._dk14093.localToGlobal(new Point(0,0));
            return Math.sqrt(Math.pow(param1 - _loc3_.x,2) + Math.pow(param2 - _loc3_.y,2));
         }
         return Number.MAX_VALUE;
      }
      
      public function _aa6815(param1:Number, param2:Number) : Boolean
      {
         if(this._dk14093 != null)
         {
            if(this._dk14093.hitTestPoint(param1,param2,true))
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ey9519() : Point
      {
         if(this._dk14093 != null)
         {
            return this._dk14093.localToGlobal(new Point(0,0));
         }
         return null;
      }
      
      public function _mt10880() : int
      {
         return this._hr14603;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function get _md8722() : _um8624
      {
         return this._me14044;
      }
      
      public function set _md8722(param1:_um8624) : void
      {
         this._me14044 = param1;
      }
      
      public function get _cp3023() : Boolean
      {
         return this._mv15335;
      }
      
      public function set _cp3023(param1:Boolean) : void
      {
         this._mv15335 = param1;
      }
   }
}

