package src.allData.sceneObjects.dataObjects
{
   import flash.display.*;
   import flash.filters.*;
   import flash.geom.*;
   import src.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _hl15578 extends _px10602
   {
      
      public static const _np15275:Number = 34;
      
      public var x:int;
      
      public var y:int;
      
      private var _vv13020:uint = 0;
      
      private var _ae1830:Array;
      
      private var _props:Array;
      
      public var visible:Boolean;
      
      public var _rc6897:MovieClip;
      
      private var _sj5100:Array;
      
      private var _bk1143:Tile;
      
      private var _ng14712:Array;
      
      private var _mi11522:Shape;
      
      private var _dd3064:Boolean = false;
      
      private var _bi12870:Point;
      
      private var _cv12788:MovieClip;
      
      private var _lo4103:MovieClip;
      
      private var _bq827:MovieClip;
      
      private var _rr8914:int;
      
      private var _dl1597:Number;
      
      public function _hl15578(param1:Number, param2:Number, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:Array, param11:Array, param12:_uq7753, param13:String, param14:int)
      {
         this._sj5100 = new Array();
         super(param3,param4,param7,param8,param10,param12,param13);
         this._cs7497 = param11;
         this.visible = false;
         this._dl1597 = param2;
         this._rr8914 = param14;
         _ts12318 = param1;
         this._bk1143 = new Tile(param9[0],param9[1]);
         if(param14 == _uq7753._km4276)
         {
            this._vv13020 = param11[0];
            this._md1784();
         }
         this._td6204(param5,param6,this._bk1143,param7,param8,param9);
      }
      
      private static function _yv4030(param1:*, param2:*) : int
      {
         if(param2.y > param1.y)
         {
            return -1;
         }
         if(param2.y < param1.y)
         {
            return 1;
         }
         return 0;
      }
      
      public function set _dd6502(param1:uint) : void
      {
         if(param1 < this._dl1597 && param1 >= 0)
         {
            this._vv13020 = param1;
            this._td6204(this.x,this.y,this._bk1143,_iy10701,_vw12711,this._ae1830);
         }
      }
      
      public function get _dd6502() : uint
      {
         return this._vv13020;
      }
      
      public function get z() : Number
      {
         return this._vv13020 * _vo2523;
      }
      
      public function get _cs7497() : Array
      {
         return this._props;
      }
      
      public function set _cs7497(param1:Array) : void
      {
         this._props = param1;
      }
      
      public function get _hc15795() : Number
      {
         return this._dl1597;
      }
      
      public function get _vf11740() : Array
      {
         var _loc1_:Tile = null;
         if(this._rm6352 == 471 || this._rm6352 == 481)
         {
            return new Array();
         }
         var _loc2_:Array = new Array();
         for each(_loc1_ in this._ng14712)
         {
            _loc2_.push(_loc1_._ch15801);
            _loc2_.push(_loc1_._oc14271);
         }
         return _loc2_;
      }
      
      public function set _vf11740(param1:Array) : void
      {
         this._ae1830 = param1;
      }
      
      public function get _jl1688() : Array
      {
         return this._ng14712;
      }
      
      public function get _lw13647() : Tile
      {
         return this._bk1143;
      }
      
      public function _iu12125() : _hl15578
      {
         var _loc1_:_hl15578 = new _hl15578(this._dl1597,_ts12318,_hw14129,_rm6352,this.x,this.y,_iy10701,_vw12711,this._vf11740,color,this._cs7497,_sl11700,_uf1803,_sl11700._dv13852);
         if(_pk3182 != null)
         {
            _loc1_.graphics = _xv14798._dx10334(graphics);
         }
         else
         {
            _loc1_.graphics = null;
         }
         _loc1_.visible = false;
         return _loc1_;
      }
      
      private function _nb2638() : void
      {
         var _loc1_:Bitmap = null;
         this._lo4103 = new MovieClip();
         this._bq827 = new MovieClip();
         var _loc2_:Number = this._dl1597 - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = this._rd1942(_sl11700._cg6545[_vw12711] * _ts12318);
            this._bq827.addChild(_loc1_);
            _loc1_.y = -_loc2_ * _vo2523 - _vo2523 / 2;
            _loc2_--;
         }
         this._bq827.alpha = 0.35;
         this._bq827.y = -_vo2523;
         this._lo4103.addChild(this._bq827);
      }
      
      public function _hu6963() : void
      {
         if(this._rr8914 == _uq7753._km4276)
         {
            if(!this._lo4103)
            {
               this._nb2638();
               _xw1367.getInstance()._uc3178(this._lo4103,_xw1367._jf1741,false,_xw1367._if14233);
            }
            this._lo4103.y = this.y;
            this._lo4103.x = this.x;
         }
      }
      
      public function _yo15753() : void
      {
         if(this._lo4103)
         {
            _xw1367.getInstance()._na10792(this._lo4103,_xw1367._jf1741);
            this._lo4103 = null;
         }
      }
      
      public function _td6204(param1:int, param2:int, param3:Tile, param4:int, param5:int, param6:Array) : void
      {
         var _loc7_:Point = null;
         var _loc8_:Point = null;
         var _loc9_:Tile = null;
         var _loc10_:int = 0;
         this._su14118(param4);
         _vw12711 = param5;
         this._ae1830 = param6;
         if(param3 != null)
         {
            this._bk1143.x = param3.x;
            this._bk1143.y = param3.y;
         }
         this._ng14712 = new Array();
         while(_loc10_ + 1 < param6.length)
         {
            this._ng14712.push(new Tile(param6[_loc10_] - param6[0],param6[_loc10_ + 1] - param6[1],this._bk1143));
            _loc10_ += 2;
         }
         if(param1 == -1 && param2 == -1)
         {
            this._dd3064 = true;
         }
         var _loc11_:Point = new Point(param1,param2);
         if(this._dd3064)
         {
            if(!this._bi12870)
            {
               _loc7_ = new Point(0,0);
               for each(_loc9_ in this._ng14712)
               {
                  _loc8_ = _il6324.getPlotXY(new Point(_loc9_._ch15801,_loc9_._oc14271));
                  _loc7_.x += _loc8_.x / this._ng14712.length;
                  _loc7_.y += _loc8_.y / this._ng14712.length;
               }
               _loc11_ = _loc8_ = _il6324.getPlotXY(new Point(this._bk1143._ch15801,this._bk1143._oc14271));
               this._bi12870 = new Point();
               this._bi12870.x = _loc8_.x - _loc7_.x;
               this._bi12870.y = _loc8_.y - _loc7_.y;
            }
            _loc11_.x -= this._bi12870.x;
            _loc11_.y -= this._bi12870.y;
         }
         this.x = _loc11_.x;
         this.y = _loc11_.y;
         _pk3182.x = this.x;
         _pk3182.y = this.y - this.z;
         if(_sl11700._dv13852 == _uq7753._km4276)
         {
            _pk3182.locz = this.z + this._dd6502;
            if(this._lo4103)
            {
               this._lo4103.y = this.y;
               this._lo4103.x = this.x;
            }
            this._cv12788.x = this.x;
            this._cv12788.y = this.y;
            this._cv12788.scaleX = this._cv12788.scaleY = 1.2 - this._dd6502 / 7;
            this._cv12788.alpha = 0.7 - this._dd6502 / 12;
         }
         this._rr14459();
      }
      
      private function _md1784() : void
      {
         var _tg9448:Shape;
         var _local_2:*;
         var filter:BitmapFilter;
         var _lj12196:Array;
         this._cv12788 = new MovieClip();
         _xw1367.getInstance()._gv1977(this._cv12788);
         _tg9448 = new Shape();
         _local_2 = _tg9448.graphics;
         with(_local_2)
         {
            beginFill(0);
            moveTo(-_vo2523,0);
            lineTo(0,-_vo2523 / 2);
            lineTo(_vo2523,0);
            lineTo(0,_vo2523 / 2);
            lineTo(-_vo2523,0);
            endFill();
         }
         _tg9448.alpha = 0.3;
         _tg9448.y = 3;
         filter = new BlurFilter(20,20,BitmapFilterQuality.LOW);
         _lj12196 = new Array();
         _lj12196.push(filter);
         this._cv12788.addChild(_tg9448);
         this._cv12788.filters = _lj12196;
      }
      
      override public function destroy() : void
      {
         if(this._cv12788)
         {
            _xw1367.getInstance()._tt11675(this._cv12788);
         }
         super.destroy();
      }
      
      public function _ji16036(param1:int, param2:int, param3:Tile) : void
      {
         this._td6204(param1,param2,param3,_iy10701,_vw12711,this._ae1830);
      }
      
      public function _sr13322(param1:int, param2:Array) : void
      {
         this._td6204(this.x,this.y,new Tile(param2[0],param2[1]),param1,_vw12711,param2);
      }
      
      public function _ws8711(param1:int, param2:Array) : void
      {
         this._td6204(this.x,this.y,new Tile(param2[0],param2[1]),_iy10701,param1,param2);
      }
      
      public function _qy6918(param1:Array) : void
      {
         this._td6204(this.x,this.y,new Tile(param1[0],param1[1]),_iy10701,_vw12711,param1);
      }
      
      private function _su14118(param1:int) : void
      {
         this._iy10701 = param1;
         if(param1 == 0)
         {
            _pk3182.scaleX = 1;
         }
         else
         {
            _pk3182.scaleX = -1;
         }
         if(_rn2919())
         {
            _gn15451()._BaseObjectsSetFlipped(param1);
         }
      }
      
      public function _ja9923() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         if(_sl11700._kv11464() && !_sl11700._su5362)
         {
            return;
         }
         this._no8983();
         var _loc7_:Array = this._vf11740;
         var _loc8_:Array = new Array();
         _loc2_ = 0;
         while(_loc2_ < int(_loc7_.length / 2))
         {
            _loc3_ = int(_loc7_[_loc2_ * 2]);
            _loc4_ = int(_loc7_[_loc2_ * 2 + 1]);
            _loc8_.push({
               "x":_loc3_,
               "y":_loc4_
            });
            _loc2_++;
         }
         _loc8_.sort(_yv4030);
         if(_loc8_.length > 0)
         {
            for each(_loc5_ in _loc8_)
            {
               _loc1_ = _dp11732.getInstance()._ha6275();
               _loc6_ = _il6324.getPlotXY(new Point(_loc5_.x,_loc5_.y));
               _loc1_.x = _loc6_.x;
               _loc1_.y = _loc6_.y;
               this._sj5100.push(_loc1_);
               _xw1367.getInstance()._uc3178(_loc1_,_xw1367._jf1741,false,_xw1367._if14233);
            }
         }
         else
         {
            _loc1_ = _dp11732.getInstance()._ha6275();
            _loc1_.x = this.x;
            _loc1_.y = this.y;
            _loc1_.scaleX = 0.4;
            _loc1_.scaleY = 0.4;
            this._sj5100.push(_loc1_);
            _xw1367.getInstance()._uc3178(_loc1_,_xw1367._jf1741,false,_xw1367._if14233);
         }
         if(_sl11700._su5362)
         {
            if((_lh7543.get(_hc11274) as _hc11274)._dy7956(_sl11700._le1402))
            {
               this._lu7260();
            }
            else
            {
               (_lh7543.get(_hc11274) as _hc11274)._vv13029([_sl11700._le1402],this._lu7260);
            }
         }
      }
      
      private function _lu7260() : void
      {
         this._rr14459();
         this._sr13322(this._iy10701,this._ae1830);
         _fj8746();
         _mg605.getInstance()._vu11199(this);
      }
      
      public function _uy6526(param1:MovieClip) : void
      {
         this._rc6897 = param1;
         _xv14798._xw3757(param1,color);
      }
      
      override public function _rr14459() : void
      {
         if(_sl11700._kc6805 != null)
         {
            super._rr14459();
         }
         else
         {
            this._ja9923();
         }
         if(this._rc6897 != null)
         {
            _xv14798._xw3757(this._rc6897,color);
         }
      }
      
      override public function _no8983() : void
      {
         var _loc1_:MovieClip = null;
         super._no8983();
         for each(_loc1_ in this._sj5100)
         {
            _xw1367.getInstance()._na10792(_loc1_,_xw1367._jf1741);
         }
         this._sj5100.length = 0;
      }
      
      public function _eo14750() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = int(_sl11700._vf11740[0].length);
         var _loc7_:Array = new Array();
         if(this._vf11740.length > 0)
         {
            _loc1_ = int(this._vf11740[0]);
            _loc2_ = int(this._vf11740[1]);
            _loc3_ = 0;
            while(_loc3_ < _loc6_)
            {
               _loc4_ = int(_sl11700._vf11740[0][_loc3_ * 2]);
               _loc5_ = int(_sl11700._vf11740[0][_loc3_ * 2 + 1]);
               _loc7_.push(_loc1_ + _loc4_);
               _loc7_.push(_loc2_ + _loc5_);
               _loc3_++;
            }
         }
         _mg605.getInstance()._ed8283(_hw14129,0,_loc7_);
         _mg605.getInstance()._bc13845(_hw14129,0,_loc7_);
         this._uc14101();
      }
      
      public function _uc14101() : void
      {
         var _loc1_:_pn12847 = null;
         var _loc2_:Array = new Array();
         for each(_loc1_ in _sl11700.colors)
         {
            _loc2_.push(_loc1_._iu12125());
         }
         _mg605.getInstance()._rf12089(_hw14129,_loc2_);
      }
      
      public function _yc2987() : void
      {
         _sl11700._yc2987();
         _mr16168.info("Object Dump",{
            "_rm6352":_rm6352,
            "_hw14129":_hw14129,
            "x":this.x,
            "y":this.y,
            "pivote":this._bk1143,
            "ocupa_array":this._vf11740,
            "propiedades":this._cs7497,
            "_mp5283":_vw12711,
            "flip":_iy10701,
            "colors":color,
            "description":_uf1803,
            "colorsServerFormat":_pn12847._gl15701(color)
         });
      }
   }
}

