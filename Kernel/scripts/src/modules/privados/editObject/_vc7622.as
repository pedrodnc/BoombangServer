package src.modules.privados.editObject
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.allData.scene._xd7248;
   import src.allData.scene.skins.managerObjectSkineables.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.allData.scene.typeEscenarios._bq10515;
   import src.modules.privados._bx10683;
   import src.modules.privados.editObject.pastillas.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   import src.utils.fichas._wq1414;
   
   public class _vc7622 extends _wq1414
   {
      
      public static const _ue3469:String = "getMovieClip";
      
      public static const _ac1394:String = "mcFichaSkinBackGround";
      
      public static const _xh10774:String = "mcPastillaSkin";
      
      public static const _sj6102:String = "mcPastillaSkinPart";
      
      public static const _uc5754:String = "mcPastillaCheckBox";
      
      public static const _el7951:String = "mcControlsContainer";
      
      public static const _lh5817:String = "mcButtonOk";
      
      public static const _li2350:String = "mcButtonCancel";
      
      public static const _pl10522:String = "mcMember";
      
      public static const _vv3825:int = 5;
      
      private var _oe6085:MovieClip;
      
      private var _kk13363:MovieClip;
      
      private var _sr7110:_qo7568;
      
      private var _qk10002:_kg183;
      
      private var _mg15141:_kg183;
      
      private var _bl11315:_bq10515;
      
      private var _vp454:_bx10683;
      
      private var _yw3104:_xd7248;
      
      private var _ec3819:_ld6048;
      
      private var _gw315:Array;
      
      private var _nj3299:_ui16110;
      
      private var _cv14097:_ui16110;
      
      private var _ip2529:int;
      
      private var _qs1150:XML;
      
      private var _im12039:_kg13542;
      
      private var _pi16156:Function;
      
      private var _ck9015:_ye9620;
      
      public function _vc7622(param1:_bx10683, param2:MovieClip, param3:_ox15379, param4:Function, param5:MovieClip, param6:_bq10515, param7:XML, param8:_kg13542, param9:Function)
      {
         super(param2,param3,param4);
         this._vp454 = param1;
         this._kk13363 = param5;
         this._bl11315 = param6;
         this._qs1150 = param7;
         this._im12039 = param8;
         this._pi16156 = param9;
         this._oe6085 = param2[_el7951];
         this._qk10002 = new _kg183(param2[_lh5817],this._fw4775);
         this._mg15141 = new _kg183(param2[_li2350],this._wp10139);
         this._sr7110 = new _qo7568(param2[_pl10522],this._qu3615,param8._mf15772);
         this._gw315 = new Array();
         MovieClip(param2[_ac1394]).addEventListener(MouseEvent.MOUSE_DOWN,this._om8205);
      }
      
      public function _om8205(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function _ec4755(param1:_hf3886) : void
      {
         if(param1.member)
         {
            this._ck9015._ec9581();
            this._sr7110._db5584();
         }
         else
         {
            this._ck9015._qn5067();
            this._sr7110._hu12389();
         }
      }
      
      public function _uo14025(param1:int, param2:int, param3:_xd7248) : Boolean
      {
         if(super._db5584(param1,param2))
         {
            this._yw3104 = param3;
            this._db5749();
            return true;
         }
         return false;
      }
      
      override public function _hu12389() : Boolean
      {
         this._co15328();
         return super._hu12389();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         MovieClip(_cw11838[_ac1394]).removeEventListener(MouseEvent.MOUSE_DOWN,this._om8205);
         if(this._qk10002 != null)
         {
            this._qk10002.destroy();
            this._qk10002 = null;
         }
         if(this._mg15141 != null)
         {
            this._mg15141.destroy();
            this._mg15141 = null;
         }
         if(this._sr7110 != null)
         {
            this._sr7110.destroy();
            this._sr7110 = null;
         }
      }
      
      private function _vw3929() : void
      {
         var _loc1_:_ld6048 = this._bl11315._pr16032._pi3785(this._yw3104.name);
         var _loc2_:_ui16110 = this._bl11315._pr16032._nc6280(_loc1_.id);
         var _loc3_:_hf3886 = _loc1_._lt8614(_loc2_._qy4653);
      }
      
      private function _db5749() : void
      {
         this._gw315 = new Array();
         var _loc1_:_ld6048 = this._bl11315._pr16032._pi3785(this._yw3104.name);
         this._ec3819 = _loc1_._iu12125();
         var _loc2_:_ui16110 = this._bl11315._pr16032._nc6280(this._ec3819.id);
         this._nj3299 = _loc2_._iu12125();
         this._cv14097 = _loc2_._iu12125();
         var _loc3_:_hf3886 = this._ec3819._lt8614(this._nj3299._qy4653);
         _loc3_ = _loc3_._iu12125();
         _loc3_.name = this._im12039.CURRENT;
         _loc3_._lx630 = true;
         this._ip2529 = 0;
         this._ec3819._th14761(_loc3_,0);
         var _loc4_:int = int(this._mg13232(this._ip2529));
         this._ei10188(this._ip2529,_loc4_);
         this._ec4755(_loc3_);
      }
      
      private function _mg13232(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc2_:int = _vv3825;
         var _loc3_:Array = this._ec3819._cv8567();
         while(_loc4_ < _loc3_.length)
         {
            if(this._qs1150.attribute(_loc3_[_loc4_]).toString() != "")
            {
               _loc3_[_loc4_] = this._qs1150.attribute(_loc3_[_loc4_]);
            }
            _loc4_++;
         }
         this._ck9015 = new _ye9620(this._gw315.length,this._kk13363[_ue3469](_xh10774),_loc3_,param1,this._sm16011,"");
         this._oe6085.addChild(this._ck9015);
         this._gw315.push(this._ck9015);
         this._ck9015.x = (_cw11838.width - this._ck9015.width) / 2;
         this._ck9015.y = _loc2_;
         return _loc2_ + (_vv3825 + this._ck9015.height);
      }
      
      public function _sm16011(param1:int, param2:int) : void
      {
         this._ip2529 = param2;
         this._tp9516();
         var _loc3_:_hf3886 = _hf3886(this._ec3819.templates[this._ip2529]);
         this._ec4755(_loc3_);
         if(_loc3_._lx630)
         {
            this._cv14097 = this._nj3299._iu12125();
         }
         else
         {
            this._cv14097 = _ui16110._qe13252(this._ec3819,_loc3_.id);
         }
         this._bl11315._vh5033(this._cv14097);
         var _loc4_:int = _vv3825 * 2 + _di3958(this._gw315[0]).height;
         this._ei10188(this._ip2529,_loc4_);
      }
      
      private function _ei10188(param1:int, param2:int) : int
      {
         var _loc3_:String = null;
         var _loc4_:_di3958 = null;
         var _loc5_:_gi15767 = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc12_:int = 0;
         var _loc10_:int = param2;
         var _loc11_:_hf3886 = _hf3886(this._ec3819.templates[param1]);
         while(_loc12_ < _loc11_.elements.length)
         {
            _loc5_ = _gi15767(_loc11_.elements[_loc12_]);
            switch(_loc5_.type)
            {
               case _th15565._cp10522:
                  _loc6_ = 0;
                  if(param1 == 0)
                  {
                     _loc8_ = int(this._nj3299._fq13299(_loc5_.id));
                     if(_loc8_ != -1)
                     {
                        _loc6_ = _loc5_._vr14801(_loc8_);
                     }
                  }
                  _loc3_ = this._qs1150.attribute(_loc5_._pr9381);
                  _loc4_ = new _ye9620(this._gw315.length,this._kk13363[_ue3469](_sj6102),_loc5_._cs15075(),_loc6_,this._ut8844,_loc3_);
                  this._oe6085.addChild(_loc4_);
                  this._gw315.push(_loc4_);
                  _loc4_.x = (_cw11838.width - _loc4_.width) / 2;
                  _loc4_.y = _loc10_;
                  _loc10_ += _vv3825 + _loc4_.height;
                  break;
               case _th15565._wb3038:
                  _loc7_ = 0;
                  if(param1 == 0)
                  {
                     _loc9_ = int(this._nj3299._fq13299(_loc5_.id));
                     if(_loc9_ != -1)
                     {
                        _loc7_ = _loc5_._vr14801(_loc9_);
                     }
                  }
                  _loc3_ = this._qs1150.attribute(_loc5_._pr9381);
                  _loc4_ = new _ll1034(this._gw315.length,this._kk13363[_ue3469](_uc5754),_loc5_._cs15075(),_loc7_,this._ut8844,_loc3_);
                  this._oe6085.addChild(_loc4_);
                  this._gw315.push(_loc4_);
                  _loc4_.x = (_cw11838.width - _loc4_.width) / 2;
                  _loc4_.y = _loc10_;
                  _loc10_ += _vv3825 + _loc4_.height;
                  break;
               case _th15565._nb9799:
                  _loc4_ = new _di3958(0,new MovieClip(),0,null);
                  this._oe6085.addChild(_loc4_);
                  this._gw315.push(_loc4_);
            }
            _loc12_++;
         }
         return _loc10_;
      }
      
      private function _tp9516() : void
      {
         var _loc1_:_di3958 = null;
         var _loc2_:int = this._gw315.length - 1;
         while(_loc2_ > 0)
         {
            _loc1_ = _di3958(this._gw315[_loc2_]);
            _loc1_.destroy();
            this._oe6085.removeChild(_loc1_);
            this._gw315.splice(_loc2_,1);
            _loc2_--;
         }
      }
      
      private function _co15328() : void
      {
         var _loc1_:_di3958 = null;
         var _loc2_:int = this._gw315.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = _di3958(this._gw315[_loc2_]);
            _loc1_.destroy();
            this._oe6085.removeChild(_loc1_);
            this._gw315.splice(_loc2_,1);
            _loc2_--;
         }
      }
      
      private function _ut8844(param1:int, param2:int) : void
      {
         var _loc4_:int = param1 - 1;
         var _loc5_:_hf3886 = _hf3886(this._ec3819.templates[this._ip2529]);
         var _loc6_:_gi15767 = _gi15767(_loc5_.elements[_loc4_]);
         var _loc7_:_am1056 = _am1056(_loc6_.skins[param2]);
         var _loc8_:Array = _loc7_._st1257();
         if(_loc5_._lx630)
         {
            var _loc3_:int = int(this._nj3299._fq13299(_loc6_.id));
            if(0 == _loc7_.id)
            {
               _loc8_ = this._nj3299._ng1767(_loc6_.id);
            }
         }
         this._cv14097._os7047(_loc6_.id,_loc7_.id,_loc8_);
         this._bl11315._vh5033(this._cv14097);
      }
      
      private function _qs9692(param1:int, param2:int) : void
      {
      }
      
      private function _fw4775() : void
      {
         var _loc1_:_hf3886 = this._ec3819._lt8614(this._cv14097._qy4653);
         if(_loc1_.member && !_hv12530.getInstance().member)
         {
            this._qu3615();
            this._wp10139();
         }
         else
         {
            this._bl11315._vh5033(this._cv14097);
            this._vp454._gr14049(this._cv14097);
            this._hu12389();
         }
      }
      
      public function _wp10139() : void
      {
         this._bl11315._vh5033(this._nj3299);
         this._hu12389();
      }
      
      private function _qu3615() : void
      {
         this._wp10139();
         this._pi16156();
      }
   }
}

