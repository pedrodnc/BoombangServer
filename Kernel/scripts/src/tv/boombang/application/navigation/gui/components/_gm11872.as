package src.tv.boombang.application.navigation.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.errors.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _gm11872 extends _wa1146
   {
      
      private static var _lx4130:int;
      
      private static const _vw2808:int = 1;
      
      private static const _kx15871:int = 2;
      
      private static const _jf3748:int = 3;
      
      private static const _qs8757:int = 4;
      
      private var _lv9684:_re14376;
      
      private var _ig1323:_re14376;
      
      private var _ll9878:_re14376;
      
      private var _hj430:_re14376;
      
      private var _pn1028:_va5249;
      
      private var _nq12936:_cy1767;
      
      private var _er8393:_xr7952;
      
      public function _gm11872(param1:MovieClip, param2:int)
      {
         var _loc3_:_xr7952 = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:int = 0;
         super(param1,param2);
         if(!_lx4130)
         {
            _lx4130 = _vw2808;
         }
         this._lv9684 = new _re14376(_xo6614["allIslandButton"] as MovieClip,"navigationMenu.buttons.allIslands");
         this._lv9684.addEventListener(MouseEvent.MOUSE_DOWN,this._xr694,false,0,true);
         this._ig1323 = new _re14376(_xo6614["myIslandsButton"] as MovieClip,"navigationMenu.buttons.myIslands");
         this._ig1323.addEventListener(MouseEvent.MOUSE_DOWN,this._wl12946,false,0,true);
         this._ll9878 = new _re14376(_xo6614["favoriteButton"] as MovieClip,"navigationMenu.buttons.favouriteIslands");
         this._ll9878.addEventListener(MouseEvent.MOUSE_DOWN,this._dp15792,false,0,true);
         this._hj430 = new _re14376(_xo6614["specialEventsButton"] as MovieClip,"navigationMenu.buttons.specialIslands");
         this._hj430.addEventListener(MouseEvent.CLICK,this._lg1061,false,0,true);
         this._pn1028 = new _va5249(_xo6614["createIslandButton"] as MovieClip,"navigationMenu.buttons.createIsland");
         this._pn1028.addEventListener(MouseEvent.CLICK,this._rp11732,false,0,true);
         _gv13912 = new Array(this._lv9684,this._ig1323,this._ll9878,this._hj430);
         _kr10933._xo2736(_te13472._fm3463,this._sk542);
         _kr10933._xo2736(_te13472._ol3812,this._sk542);
         _kr10933._xo2736(_te13472._cd3713,this._sk542);
         _kr10933._xo2736(_te13472._dm14800,this._sk542);
         var _loc6_:Boolean = true;
         var _loc8_:Array = [];
         while(_loc6_)
         {
            _loc4_ = "special.islands." + _loc7_;
            _loc5_ = (_lh7543.get(_dw1395) as _dw1395)._ad13455(_loc4_);
            if(_loc5_ != _loc4_)
            {
               _loc3_ = new _xr7952();
               _loc3_.id = _loc7_.toString();
               _loc3_.name = _loc5_;
               _loc8_.push(_loc3_);
               _loc7_++;
            }
            else
            {
               _loc6_ = false;
            }
         }
         this._nq12936 = new _cy1767(_xo6614["comboBox"],_loc8_,"","special.islands.");
         this._nq12936.visible = false;
         switch(_lx4130)
         {
            case _vw2808:
               this._xr694(null);
               return;
            case _kx15871:
               this._wl12946(null);
               return;
            case _jf3748:
               this._dp15792(null);
               return;
            case _qs8757:
               this._lg1061(null);
               return;
            default:
               return;
         }
      }
      
      private function _qe9199(param1:Event) : void
      {
         if(!isLoading)
         {
            this._er8393 = this._nq12936._nl13210 as _xr7952;
            this._nq12936.close();
            this._wp3955();
            isLoading = true;
            if(!_xo6614.contains(_progress))
            {
               _xo6614.addChild(_progress);
            }
            _progress.visible = true;
            _co12486._sl12767(_tv1901,parseInt(this._er8393.id));
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(0));
         var _loc3_:int = int(param1._qp16092(1));
         var _loc4_:int = int(param1.items[0]);
         var _loc5_:Array = param1.items.slice(1,param1.items.length);
         if(_loc2_ == _te13472._fm3463)
         {
            if(_tv1901 != _loc4_)
            {
               throw new _bc6516("the tab id is not the same that the current tab id");
            }
            if(_loc3_ == _te13472._tf7197)
            {
               _xa14315 = false;
               this._mx2448(_dx15654(_loc5_,_tv1901));
               _nx3753(_loc5_.length);
            }
         }
         else if(_loc2_ == _te13472._ol3812)
         {
            _xa14315 = true;
            this._mx2448(_dx15654(_loc5_,_tv1901));
            _nx3753(_loc5_.length);
         }
         else if(_loc2_ == _te13472._cd3713)
         {
            _xa14315 = false;
            this._mx2448(_dx15654(_loc5_,_tv1901));
            _nx3753(_loc5_.length);
         }
         else if(_loc2_ == _te13472._dm14800)
         {
            _xa14315 = false;
            this._mx2448(_dx15654(_loc5_,_tv1901));
            _nx3753(_loc5_.length);
         }
         isLoading = false;
      }
      
      private function _lg1061(param1:MouseEvent) : void
      {
         if(!isLoading)
         {
            _lx4130 = _qs8757;
            this._nq12936.addEventListener(Event.CHANGE,this._qe9199,false,0,true);
            this._nq12936.visible = true;
            this._nq12936._mv11540(0);
            _ie12514(this._hj430);
         }
      }
      
      private function _xr694(param1:MouseEvent) : void
      {
         if(!isLoading)
         {
            this._wp3955();
            _lx4130 = _vw2808;
            this._nq12936.close();
            this._nq12936.visible = false;
            _rw2194();
            if(!_xo6614.contains(_progress))
            {
               _xo6614.addChild(_progress);
            }
            _progress.visible = true;
            _ie12514(this._lv9684);
         }
      }
      
      private function _wl12946(param1:MouseEvent) : void
      {
         if(!isLoading)
         {
            this._wp3955();
            _lx4130 = _kx15871;
            isLoading = true;
            this._nq12936.close();
            this._nq12936.visible = false;
            if(!_xo6614.contains(_progress))
            {
               _xo6614.addChild(_progress);
            }
            _progress.visible = true;
            _co12486._pr7235(_tv1901);
            _ie12514(this._ig1323);
         }
      }
      
      override protected function _dp15792(param1:MouseEvent) : void
      {
         if(!isLoading)
         {
            this._wp3955();
            _lx4130 = _jf3748;
            this._nq12936.close();
            this._nq12936.visible = false;
            isLoading = true;
            if(!_xo6614.contains(_progress))
            {
               _xo6614.addChild(_progress);
            }
            _progress.visible = true;
            _co12486._eg5711(_tv1901,_hv12530.getInstance().id);
            _ie12514(this._ll9878);
         }
      }
      
      private function _rp11732(param1:MouseEvent) : void
      {
         dispatchEvent(new _pw5334(_pw5334._uk11953));
      }
      
      override protected function _wp3955() : void
      {
         this._yf8727();
         super._wp3955();
      }
      
      override public function _mx2448(param1:Array) : void
      {
         var _loc2_:_in2808 = null;
         var _loc3_:_kn4108 = null;
         var _loc4_:int = 0;
         this._wp3955();
         while(_loc4_ < param1.length)
         {
            _loc2_ = new _in2808();
            _loc3_ = param1[_loc4_];
            _loc2_._os5347 = _loc3_;
            if(_xa14315)
            {
               _loc3_._si7985 = true;
            }
            if(_loc3_._ls5877 == _hj3512._jn8033)
            {
               _loc2_.addEventListener(_pw5334._eu6579,_ap2047,false,0,true);
            }
            else
            {
               _loc2_.addEventListener(_pw5334._dt4861,_qh13554,false,0,true);
            }
            _loc2_.addEventListener(_pw5334._fq13518,_ic5609,false,0,true);
            _loc2_.addEventListener(_pw5334._ga9624,_cl8914,false,0,true);
            _loc2_.y = _loc2_.height * _loc4_ + 2 * _loc4_;
            _items.push(_loc2_);
            _content.addChild(_loc2_);
            _loc4_++;
         }
         update();
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
               _loc2_.removeEventListener(_pw5334._fq13518,_ic5609);
               _loc2_.removeEventListener(_pw5334._ga9624,_cl8914);
               _loc2_.removeEventListener(_pw5334._dt4861,_qh13554);
               _loc2_.destroy();
               if(Boolean(_content) && _content.contains(_loc2_))
               {
                  _content.removeChild(_loc2_);
               }
               _loc2_ = null;
               _loc1_++;
            }
         }
      }
      
      override public function destroy() : void
      {
         this._nq12936.destroy();
         this._yf8727();
         this._lv9684.destroy();
         this._ig1323.destroy();
         this._ll9878.destroy();
         this._pn1028.destroy();
         this._lv9684.removeEventListener(MouseEvent.CLICK,this._xr694);
         this._ig1323.removeEventListener(MouseEvent.CLICK,this._wl12946);
         this._ll9878.removeEventListener(MouseEvent.CLICK,this._dp15792);
         this._pn1028.removeEventListener(MouseEvent.CLICK,this._rp11732);
         _kr10933._mw12849(_te13472._ol3812,this._sk542);
         _kr10933._mw12849(_te13472._fm3463,this._sk542);
         _kr10933._mw12849(_te13472._cd3713,this._sk542);
         super.destroy();
      }
   }
}

