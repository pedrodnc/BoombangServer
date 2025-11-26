package src.tv.boombang.application.navigation.gui.components
{
   import flash.display.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.errors.*;
   
   public class _cu13655 extends _wa1146 implements _jk15536
   {
      
      public function _cu13655(param1:MovieClip, param2:int)
      {
         super(param1,param2);
         _kr10933._xo2736(_te13472._fm3463,this._sk542);
         _kr10933._xo2736(_te13472._uv13397,this._sk542);
         _rw2194();
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc6_:int = int(param1._qp16092(0));
         var _loc7_:int = int(param1._qp16092(1));
         var _loc8_:int = int(param1.items[0]);
         var _loc9_:Array = param1.items.slice(1,param1.items.length);
         if(_loc6_ == _te13472._fm3463)
         {
            if(_tv1901 != _loc8_)
            {
               throw new _bc6516("the tab id is not the same that the current tab id");
            }
            if(_loc7_ == _te13472._tf7197)
            {
               this._mx2448(_dx15654(_loc9_,_tv1901));
               _nx3753(_loc9_.length);
            }
            else if(_loc7_ == _te13472._mh16033)
            {
               var _loc2_:Array = _dx15654(_loc9_,_tv1901);
               var _loc3_:_hj3512 = (null[0] as _kn4108)._ls5877;
               var _loc4_:_rj12650 = (null[0] as _kn4108)._kb5211;
               var _loc5_:int = int((null[0] as _kn4108)._lh4996);
               this._vd5721(_dx15654(_loc9_,_tv1901),0,null,null);
            }
            isLoading = false;
         }
      }
      
      private function _oc8886(param1:_pw5334) : void
      {
         if(!isLoading)
         {
            isLoading = true;
            _co12486._eu10042(_tv1901,param1.data._kb5211.id,param1.data._lh4996);
         }
      }
      
      private function _ay3373(param1:_pw5334) : void
      {
         this._bo9303(param1.target as _in2808);
         _qc8281();
      }
      
      protected function _bv7748(param1:_pw5334) : void
      {
         dispatchEvent(new _pw5334(_pw5334._vt105));
         if(_tw12356 == _cd9992._ja3630._tv1901)
         {
            _ia12312._fs11949("enterGameMenu");
         }
         else
         {
            _ia12312._fs11949("enterAreaMenu");
         }
         _co12486._qe13663(param1.data._kb5211.id,param1.data._lh4996);
      }
      
      override protected function _ap2047(param1:_pw5334) : void
      {
         if(param1.type == _pw5334._eu6579)
         {
            dispatchEvent(new _pw5334(_pw5334._eu6579,param1.data));
         }
         else if(param1.type == _pw5334._eh6046)
         {
            dispatchEvent(new _pw5334(_pw5334._vt105,param1.data));
         }
         if(_tw12356 == _cd9992._ja3630._tv1901)
         {
            _ia12312._fs11949("enterGameMenu");
         }
         else
         {
            _ia12312._fs11949("enterAreaMenu");
         }
         _co12486._pl13792(param1.data._kb5211.id,param1.data._eb11619);
      }
      
      override protected function _wp3955() : void
      {
         this._yf8727();
         super._wp3955();
      }
      
      override public function _mx2448(param1:Array) : void
      {
         var _loc2_:_in2808 = null;
         var _loc3_:int = 0;
         this._wp3955();
         while(_loc3_ < param1.length)
         {
            _loc2_ = new _in2808();
            _loc2_.addEventListener(_pw5334._ql15838,this._oc8886,false,0,true);
            _loc2_.addEventListener(_pw5334._qk12217,this._ay3373,false,0,true);
            _loc2_.addEventListener(_pw5334._ha16012,this._bv7748,false,0,true);
            _loc2_._os5347 = param1[_loc3_];
            _loc2_.y = _loc2_.height * _loc3_ + 2 * _loc3_;
            _items.push(_loc2_);
            _content.addChild(_loc2_);
            _loc3_++;
         }
         update();
      }
      
      override public function _vd5721(param1:Array, param2:int, param3:_rj12650, param4:_hj3512) : void
      {
         var _loc5_:_nh909 = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc6_:_in2808 = this._sn10052(param2,param3,param4);
         var _loc7_:Sprite = new Sprite();
         var _loc8_:Array = new Array();
         while(_loc10_ < param1.length)
         {
            _loc5_ = new _nh909();
            _loc5_.addEventListener(_pw5334._eh6046,this._ap2047,false,0,true);
            _loc5_._os5347 = param1[_loc10_];
            _loc5_.y = _loc5_.height * _loc10_ + 2 * _loc10_;
            _loc8_.push(_loc5_);
            _loc9_ += _loc5_._os5347._sc1342;
            _loc7_.addChild(_loc5_);
            _loc10_++;
         }
         _loc6_._lv11754(_loc8_,_loc7_);
         _loc6_._wc12632 = _loc9_.toString();
         _qc8281();
      }
      
      private function _sn10052(param1:int, param2:_rj12650, param3:_hj3512) : _in2808
      {
         var _loc4_:_in2808 = null;
         var _loc5_:int = 0;
         while(_loc5_ < _items.length)
         {
            _loc4_ = _items[_loc5_];
            if(_loc4_._os5347._lh4996 == param1 && _loc4_._os5347._kb5211 == param2 && _loc4_._os5347._ls5877 == param3)
            {
               return _loc4_;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      protected function _bo9303(param1:_in2808) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_nh909 = null;
         var _loc4_:Array = param1._mg4710;
         var _loc5_:Sprite = param1._ab7902;
         if(_loc4_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc4_.length)
            {
               _loc3_ = _loc4_[_loc2_];
               _loc5_.removeChild(_loc3_);
               if(_loc3_)
               {
                  _loc3_.removeEventListener(_pw5334._eh6046,this._ap2047);
                  _loc3_.destroy();
                  _loc3_ = null;
               }
               _loc2_++;
            }
            param1._km4596();
         }
      }
      
      protected function _yf8727() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_in2808 = null;
         if(_items)
         {
            _loc1_ = 0;
            while(_loc1_ < _items.length)
            {
               _loc2_ = _items[_loc1_];
               this._bo9303(_loc2_);
               _loc2_.removeEventListener(_pw5334._ql15838,this._oc8886);
               _loc2_.removeEventListener(_pw5334._qk12217,this._ay3373);
               _loc2_.removeEventListener(_pw5334._ha16012,this._bv7748);
               _loc2_.destroy();
               _content.removeChild(_loc2_);
               _loc2_ = null;
               _loc1_++;
            }
         }
      }
      
      override public function destroy() : void
      {
         _kr10933._mw12849(_te13472._fm3463,this._sk542);
         _kr10933._mw12849(_te13472._uv13397,this._sk542);
         this._yf8727();
         super.destroy();
      }
   }
}

