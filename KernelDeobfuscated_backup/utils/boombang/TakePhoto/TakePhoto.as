package src.utils.boombang.TakePhoto
{
   import flash.display.MovieClip;
   import flash.media.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.modules.enterScene._yc4848;
   import src.person.*;
   import src.tv.boombang.core.datatypes.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class TakePhoto
   {
      
      private static const _je8391:String = "mcBotonCamaraSimple";
      
      private static const _en15300:int = 0;
      
      private static const _pu3012:int = 1;
      
      private static const _yh1978:int = 2;
      
      private static const _oj3546:int = 3;
      
      private static const _pn8357:int = 4;
      
      private static const _ty4420:int = 5;
      
      private static const _ar12152:int = 6;
      
      public static const _at13592:int = 1;
      
      public static const _tk309:int = 2;
      
      public static const _hl13182:int = 3;
      
      public static const _hj4439:String = "OK";
      
      public static const _no16018:String = "ERROR";
      
      private static const _nr3911:int = 550;
      
      private static const _jj12423:int = 6;
      
      private static const _dk12958:int = 22;
      
      private static const _ii2316:String = "https://takephoto.boombang.tv/";
      
      private static const _ns8156:String = "upload.php";
      
      private static const _uy7191:String = "images/";
      
      private static const _ma8656:int = 12;
      
      private var _dv13640:MovieClip;
      
      private var status:int = 0;
      
      private var _lj2502:_kg183;
      
      private var _nq6110:_ri2997;
      
      private var _fy9450:_gw14011;
      
      private var _bx5649:_ky6263;
      
      private var _ne10819:_me11909;
      
      private var _ov7748:_ae15172;
      
      private var _bd6198:int;
      
      private var enterScene:_yc4848;
      
      private var photo_name:String = "";
      
      public function TakePhoto(param1:MovieClip)
      {
         super();
         this._dv13640 = param1;
         this.init();
         this._jr5664(_en15300);
         this._hu12389();
         this.start();
      }
      
      private function init() : void
      {
         var _loc1_:_qs10251 = null;
         _xw1367.getInstance()._uc3178(this._dv13640,_xw1367._iw3373);
         _loc1_ = new _qs10251();
         this._lj2502 = new _kg183(this._dv13640[_je8391],this._ha8267);
         this._nq6110 = new _ri2997(this._dv13640,_loc1_,this._ko1350,this._pl2599);
         this._fy9450 = new _gw14011(this._dv13640,_loc1_,this._xt1091,this._ko1350);
         this._bx5649 = new _ky6263(this._dv13640,_loc1_,this._ec7091);
         this._ne10819 = new _me11909(this._dv13640,_loc1_,this._es4427,this._ko1350);
         this._ov7748 = new _ae15172(this._dv13640,_loc1_,this._ko1350);
         this._um5405();
      }
      
      private function _um5405() : void
      {
         this._dv13640.x = _nr3911;
         this._dv13640.y = _jj12423;
      }
      
      public function destroy() : void
      {
         if(this._lj2502 != null)
         {
            this._lj2502.destroy();
            this._lj2502 = null;
         }
         if(this._nq6110 != null)
         {
            this._nq6110.destroy();
            this._nq6110 = null;
         }
         if(this._fy9450 != null)
         {
            this._fy9450.destroy();
            this._fy9450 = null;
         }
         if(this._bx5649 != null)
         {
            this._bx5649.destroy();
            this._bx5649 = null;
         }
         if(this._ne10819 != null)
         {
            this._ne10819.destroy();
            this._ne10819 = null;
         }
         if(this._ov7748 != null)
         {
            this._ov7748.destroy();
            this._ov7748 = null;
         }
         _xw1367.getInstance()._na10792(this._dv13640,_xw1367._iw3373);
         this._dv13640 = null;
         this.enterScene = null;
      }
      
      private function _jr5664(param1:int) : void
      {
         this._md6714();
         switch(param1)
         {
            case _pu3012:
               this._lj2502._db5584();
               break;
            case _yh1978:
               this._nq6110._db5584();
               break;
            case _oj3546:
               this._fy9450._db5584();
               break;
            case _pn8357:
               this._bx5649._db5584();
               break;
            case _ty4420:
               this._ne10819._db5584();
               break;
            case _ar12152:
               this._ov7748._db5584();
         }
         this.status = param1;
      }
      
      public function _hu12389() : void
      {
         if(this._dv13640.visible)
         {
            this._dv13640.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._dv13640.visible)
         {
            this._dv13640.visible = true;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this._dv13640.visible;
      }
      
      private function _md6714() : void
      {
         this._lj2502._hu12389();
         this._nq6110._hu12389();
         this._fy9450._hu12389();
         this._bx5649._hu12389();
         this._ne10819._hu12389();
         this._ov7748._hu12389();
      }
      
      private function _ha8267() : void
      {
         this._jr5664(_yh1978);
      }
      
      private function _ko1350() : void
      {
         this._jr5664(_pu3012);
      }
      
      private function _pl2599() : void
      {
         this._jr5664(_oj3546);
      }
      
      private function _xt1091() : void
      {
         this._jr5664(_pn8357);
         this._ar9153();
      }
      
      private function _ec7091() : void
      {
         this._jr5664(_ty4420);
      }
      
      private function _cg12576() : void
      {
         this._jr5664(_ar12152);
      }
      
      public function start() : void
      {
         switch(this.status)
         {
            case _ar12152:
            case _ty4420:
            case _pn8357:
               return;
            default:
               this._jr5664(_pu3012);
               return;
         }
      }
      
      private function _ar9153() : void
      {
         _eq14922._iq4270(Sound(this._dv13640.cameraRewind));
         var _loc1_:ByteArray = _ch8896._ae15158(1);
         var _loc2_:String = _ii2316 + _ns8156;
         this._kb9211(_loc1_,_loc2_);
      }
      
      public function _kb9211(param1:ByteArray, param2:String) : void
      {
         var _loc3_:ByteArray = param1;
         var _loc4_:ByteArray = new ByteArray();
         _loc4_ = this._aj1627(_loc4_);
         _loc4_.writeBytes(_loc3_,0,_loc3_.length);
         _kg15251._dd8786(param2,_loc4_,this._yw2650);
      }
      
      private function _aj1627(param1:ByteArray) : ByteArray
      {
         var _loc3_:_um8624 = null;
         var _loc2_:Array = this._dn1820();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ != null)
            {
               param1.writeUTFBytes(_loc3_.id + ",");
            }
         }
         param1.writeUTFBytes(_loc3_.id + ";");
         return param1;
      }
      
      private function _ph1281(param1:ByteArray) : ByteArray
      {
         var _loc2_:_um8624 = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc6_:int = 0;
         var _loc5_:uint = uint(_at13592);
         var _loc7_:Array = this._dn1820();
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.writeUnsignedInt(_loc5_);
         _loc8_.writeUTFBytes(_ly14211._ns12055);
         _loc6_ = 0;
         while(_loc6_ < _ma8656)
         {
            if(_loc7_.length > _loc6_)
            {
               _loc2_ = _loc7_[_loc6_] as _um8624;
               _loc3_ = _loc2_.id;
            }
            else
            {
               _loc3_ = 0;
            }
            _loc8_.writeUnsignedInt(_loc3_);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _ma8656)
         {
            if(_loc7_.length > _loc6_)
            {
               _loc2_ = _loc7_[_loc6_] as _um8624;
               _loc4_ = _loc2_.name;
            }
            else
            {
               _loc4_ = "";
            }
            while(_loc4_.length < _dk12958)
            {
               _loc4_ = " " + _loc4_;
            }
            _loc8_.writeUTFBytes(_loc4_);
            _loc6_++;
         }
         _loc8_.writeBytes(param1,0,param1.length);
         return _loc8_;
      }
      
      private function _dn1820() : Array
      {
         var _loc1_:_ta2443 = null;
         var _loc2_:_um8624 = null;
         var _loc3_:int = int(_hv12530.getInstance().id);
         var _loc5_:Array = new Array();
         var _loc6_:_tl4091 = this.enterScene._yp6754();
         var _loc7_:Array = _loc6_._pf8204;
         for each(_loc1_ in _loc7_)
         {
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_._md8722 as _um8624;
               if(_loc2_.id == _loc3_)
               {
                  _loc5_.unshift(_loc2_);
               }
               else
               {
                  _loc5_.push(_loc2_);
               }
            }
         }
         return _loc5_;
      }
      
      private function _yw2650(param1:String) : void
      {
         if(param1 != _no16018)
         {
            this.photo_name = param1;
            this._bd6198 = int(param1);
            this._ec7091();
         }
         else
         {
            this._bd6198 = 0;
            this._cg12576();
         }
      }
      
      private function _es4427() : void
      {
         var _loc1_:String = _ii2316 + _uy7191 + this.photo_name;
         _kg15251.openPopup(_loc1_);
      }
      
      public function _iw5858(param1:_yc4848) : void
      {
         this.enterScene = param1;
         var _loc2_:_tl4091 = param1._yp6754();
         var _loc3_:Array = _loc2_._pf8204;
      }
   }
}

