package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.*;
   import src.allData.color._pn12847;
   import src.allData.scene.*;
   import src.allData.scene.skins.nodeTagsSkins._ld6048;
   import src.allData.scene.skins.nodeTagsSkins._sy9767;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects._hl15578;
   import src.modules.privados._bx10683;
   import src.modules.privados._xq2402;
   import src.modules.privados.creacion.*;
   import src.modules.privados.editObject.editableElements.*;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class _se7088
   {
      
      public static const _ue3469:String = "getMovieClip";
      
      public static const _js12704:String = "mcTip";
      
      public static const _qv14476:String = "mcSelObject";
      
      public static const _en5637:String = "mcSelChangeTam";
      
      public static const _uo13258:String = "mcSelEditColor";
      
      public static const _tn4216:String = "mcSelChangeColor";
      
      public static const _kx11720:String = "mcFichaSkin";
      
      private static const _eg3535:String = "tfTextoTip";
      
      private static const _qh11016:int = 804;
      
      private static const _cj11822:int = 357;
      
      public static const _cy15219:int = -1;
      
      public static const _vo11995:int = 1;
      
      public static const _xt7926:int = 2;
      
      public static const _tq3850:int = 3;
      
      public static const _ry5427:int = 4;
      
      public static const _dj4147:int = 1;
      
      public static const _nm13279:int = 2;
      
      private var _re3848:int = -1;
      
      private var _ey9718:MovieClip;
      
      private var _ho11988:MovieClip;
      
      private var _sb9768:MovieClip;
      
      private var _mb398:_wq1414;
      
      private var _fb15680:_tc4557;
      
      private var _yw3104:_xd7248;
      
      private var _tb12411:_xq2402;
      
      private var _bl11315:_bq10515;
      
      private var _vp454:_bx10683;
      
      private var _gq14088:_vc7622;
      
      private var _im12039:_kg13542;
      
      private var _md10334:_xr16162;
      
      private var _kg11770:_hl15578;
      
      private var _mb2454:MovieClip;
      
      private var _yl5610:_sy9767;
      
      private var _wy2643:MovieClip;
      
      private var _io6762:_pn12847;
      
      private var _qs1150:XML;
      
      public function _se7088(param1:MovieClip, param2:MovieClip, param3:_bx10683, param4:_xq2402, param5:_bq10515, param6:XML)
      {
         super();
         this._ey9718 = param1;
         this._vp454 = param3;
         this._tb12411 = param4;
         this._bl11315 = param5;
         this._sb9768 = param2;
         this._qs1150 = param6;
         this._ho11988 = param1[_ue3469](_js12704);
         _xw1367.getInstance()._uc3178(this._ho11988,_xw1367._iw3373);
         this._ho11988.mouseEnabled = false;
         this._ho11988.mouseChildren = false;
         this._ho11988.visible = false;
         this._im12039 = new _kg13542();
         this._md10334 = new _xr16162();
         this._wi4019();
      }
      
      public function _bx9675() : _kg13542
      {
         return this._im12039;
      }
      
      public function destroy() : void
      {
         this._hf3468();
         if(this._kg11770)
         {
            this._kg11770._yo15753();
         }
         _xw1367.getInstance()._na10792(this._ho11988,_xw1367._iw3373);
         this._hu12389();
      }
      
      private function _fl8245() : void
      {
         if(this._mb398 != null)
         {
            if(this._kg11770)
            {
               this._kg11770._yo15753();
            }
            this._mb398.destroy();
            this._mb398 = null;
         }
      }
      
      public function _ce12925(param1:MovieClip) : void
      {
         this._wy2643 = param1;
      }
      
      public function get _ed14076() : _hl15578
      {
         return this._kg11770;
      }
      
      public function _ah9037(param1:_hl15578) : void
      {
         if(this._gq14088.isVisible())
         {
            return;
         }
         this._fb15680 = new _tb12838(param1,this._vp454);
         if(this._kg11770)
         {
            this._kg11770._yo15753();
         }
         this._kg11770 = param1;
         this._db5584();
         this._kg11770._hu6963();
      }
      
      public function _ff3307(param1:_xd7248, param2:_sy9767) : void
      {
         if(this._gq14088.isVisible())
         {
            return;
         }
         this._yw3104 = param1;
         this._yl5610 = param2;
         var _loc3_:_ld6048 = this._bl11315._pr16032._pi3785(param1.name);
         var _loc4_:String = param2.name;
         var _loc5_:String = this._qs1150.attribute(_loc4_);
         this._fb15680 = new _xy631(_loc5_,this._bl11315,_loc3_,param2,this._vp454);
         this._db5584();
      }
      
      public function _dd931(param1:MovieClip, param2:_xd7248) : void
      {
         if(this._gq14088.isVisible())
         {
            return;
         }
         this._mb2454 = param1;
         this._yw3104 = param2;
         var _loc3_:String = _mq2583._qi4067(this._bl11315._ir13656,param2._un11300);
         var _loc4_:String = this._md10334[_loc3_.toUpperCase()];
         this._fb15680 = new _bf13578(_loc4_,this._bl11315,param1,param2,this._vp454);
         this._db5584();
      }
      
      private function _db5584() : void
      {
         if(this._mb398 is _fb1435)
         {
            _fb1435(this._mb398)._ql12680();
         }
         this._xo11249(_vo11995);
      }
      
      public function _hu12389() : void
      {
         this._yw9505();
         if(this._mb398 is _fb1435)
         {
            _fb1435(this._mb398)._ql12680();
         }
         this._xo11249(_cy15219);
      }
      
      private function _vy13247() : void
      {
         this._yw9505();
         var _loc1_:MovieClip = this._ey9718[_ue3469](_qv14476);
         var _loc2_:_ox15379 = new _ox15379("",[]);
         this._mb398 = new _vm6538(_loc1_,_loc2_,this._hu12389,this._fb15680,this._xn1856,this._un10538,this._la6196,this._lf3054,this._gr1722,this._uj10964,this._mu1989,this._yw9505,this._ja12248,this._im12039,this._aj12749);
         this._mb398._db5584(_qh11016,_cj11822);
      }
      
      private function _xn1856() : void
      {
         if(this._fb15680._ds11280())
         {
            this._xo11249(_xt7926);
         }
         else
         {
            this._io6762 = this._fb15680._tw11867();
            this._xo11249(_ry5427);
         }
      }
      
      private function _un10538() : void
      {
         if(this._kg11770 != null)
         {
            this._hu12389();
            _mg605.getInstance().block();
            this._vp454._xd9525(this._kg11770._hw14129);
         }
      }
      
      private function _la6196() : void
      {
         this._gv6143();
      }
      
      private function _lf3054() : void
      {
         this._xo11249(_tq3850);
      }
      
      private function _aj12749() : void
      {
         this._gq14088._uo14025(10,270,this._yw3104);
         this._hu12389();
      }
      
      private function _wi4019() : void
      {
         this._gq14088 = new _vc7622(this._vp454,this._sb9768[_ue3469](_kx11720),new _ox15379("",[]),this._jt13498,this._sb9768,this._bl11315,this._qs1150,this._im12039,this._tb12411._lp469._aa3338);
      }
      
      private function _hf3468() : void
      {
         if(this._gq14088 != null)
         {
            this._gq14088.destroy();
            this._gq14088 = null;
         }
      }
      
      private function _jt13498() : void
      {
      }
      
      private function _dy4058() : void
      {
         this._yw9505();
         var _loc1_:MovieClip = this._ey9718[_ue3469](_en5637);
         var _loc2_:_ox15379 = new _ox15379("",[]);
         this._mb398 = new _ii11976(_loc1_,_loc2_,this._hu12389,this._fb15680,this._kg11770,this._as12451,this._iy8692,this._im12039);
         this._mb398._db5584(_qh11016,_cj11822);
      }
      
      private function _iy8692(param1:int) : void
      {
         var _loc2_:String = null;
         if(_mg605.getInstance()._do11186())
         {
            return;
         }
         this._bl11315._ca9348(this._kg11770._vf11740);
         var _loc3_:Point = _il6324._bi7400(new Point(this._kg11770.x,this._kg11770.y));
         if(Boolean(this._kg11770._sl11700._kv11464()) || Boolean(this._bl11315._qe12871(this._kg11770._sl11700._vf11740[param1],_loc3_,this._kg11770._iy10701,this._kg11770._sl11700._fv13476)))
         {
            _loc2_ = this._bl11315._qm13780(_loc3_,this._kg11770._sl11700._vf11740[param1],this._kg11770._iy10701);
            this._vp454._sf11716(this._kg11770._hw14129,this._kg11770._rm6352,this._kg11770.x,this._kg11770.y,_loc2_,param1,this._kg11770._iy10701);
            _mg605.getInstance().block();
         }
         this._bl11315._in8371(this._kg11770._vf11740,this._kg11770._sl11700._vm6245);
      }
      
      private function _iu4243() : void
      {
         this._yw9505();
         var _loc1_:MovieClip = this._ey9718[_ue3469](_uo13258);
         var _loc2_:_ox15379 = new _ox15379("",[]);
         if(this._fb15680 is _tb12838)
         {
            this._mb398 = new _ti14597(_loc1_,_loc2_,this._hu12389,this._fb15680,this._kg11770,this._as12451,this._rm6064,this._mu1989,this._yw9505,this._ja12248,this._im12039,this._vp454);
         }
         else if(this._fb15680 is _xy631)
         {
            this._mb398 = new _ae8391(_loc1_,_loc2_,this._hu12389,this._fb15680,this._yl5610,this._as12451,this._rm6064,this._mu1989,this._yw9505,this._ja12248,this._im12039,this._qs1150,this._vp454);
         }
         this._mb398._db5584(_qh11016,_cj11822);
      }
      
      private function _rm6064(param1:_pn12847) : void
      {
         this._io6762 = param1;
         this._xo11249(_ry5427);
      }
      
      private function _qg1654() : void
      {
         this._yw9505();
         var _loc1_:MovieClip = this._ey9718[_ue3469](_tn4216);
         var _loc2_:_ox15379 = new _ox15379("",[]);
         this._mb398 = new _fb1435(_loc1_,_loc2_,this._hu12389,this._fb15680,this._io6762,this._qv15754,this._lh4081,this._im12039);
         this._mb398._db5584(_qh11016,_cj11822);
      }
      
      private function _qv15754() : void
      {
         if(this._fb15680._ds11280())
         {
            this._xo11249(_xt7926);
         }
         else
         {
            this._xo11249(_vo11995);
         }
      }
      
      public function _lh4081() : void
      {
         if(_do5953.activate)
         {
            _do5953._vo14571(_vk15050._sv13894);
         }
         this._fb15680._lh4081();
         if(this._fb15680._ds11280())
         {
            this._xo11249(_xt7926);
         }
         else
         {
            this._xo11249(_vo11995);
         }
      }
      
      private function _as12451() : void
      {
         this._xo11249(_vo11995);
      }
      
      public function _xo11249(param1:int) : void
      {
         this._fl8245();
         this._re3848 = param1;
         switch(param1)
         {
            case _cy15219:
               return;
            case _vo11995:
               this._vy13247();
               return;
            case _xt7926:
               this._iu4243();
               return;
            case _tq3850:
               this._dy4058();
               return;
            case _ry5427:
               this._qg1654();
               return;
            default:
               return;
         }
      }
      
      private function _gr1722() : void
      {
         this._fb15680._gr1722();
      }
      
      private function _uj10964() : void
      {
         this._fb15680._uj10964();
      }
      
      private function _mu1989(param1:int, param2:int, param3:String) : void
      {
         this._ho11988.visible = true;
         _yq8362._xl9503(this._ho11988[_eg3535],param3);
         this._ja12248(param1,param2);
      }
      
      private function _ja12248(param1:int, param2:int) : void
      {
         this._ho11988.x = _qh11016 + param1;
         this._ho11988.y = _cj11822 + param2;
      }
      
      private function _yw9505() : void
      {
         this._ho11988.visible = false;
      }
      
      private function _gv6143() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(_mg605.getInstance()._do11186())
         {
            return;
         }
         if(this._kg11770._iy10701 == 0)
         {
            _loc1_ = 1;
         }
         else
         {
            _loc1_ = 0;
         }
         var _loc3_:Point = _il6324._bi7400(new Point(this._kg11770.x,this._kg11770.y));
         this._bl11315._ca9348(this._kg11770._vf11740);
         if(Boolean(this._kg11770._sl11700._kv11464()) || Boolean(this._bl11315._qe12871(this._kg11770._sl11700._vf11740[this._kg11770._vw12711],_loc3_,_loc1_,this._kg11770._sl11700._fv13476)))
         {
            _loc2_ = this._bl11315._qm13780(_loc3_,this._kg11770._sl11700._vf11740[this._kg11770._vw12711],_loc1_);
            this._vp454._fb6596(this._kg11770._hw14129,this._kg11770._rm6352,this._kg11770.x,this._kg11770.y,_loc2_,this._kg11770._vw12711,_loc1_);
            _mg605.getInstance().block();
         }
         this._bl11315._in8371(this._kg11770._vf11740,this._kg11770._sl11700._vm6245);
      }
      
      public function _xu12766(param1:int) : void
      {
         if(this._mb398 is _vm6538 && this._kg11770 != null && (Boolean(this._kg11770._hw14129 = param1)))
         {
            this._fb15680._rx12234(_vm6538(this._mb398)._qm2195());
         }
      }
   }
}

