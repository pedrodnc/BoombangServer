package src.allData.color
{
   public class _pn12847
   {
      
      public var _un11300:int;
      
      public var color:uint;
      
      public var _xk1425:int;
      
      public var _fp5369:int;
      
      public var alpha:int;
      
      public function _pn12847(param1:int, param2:uint, param3:int, param4:int, param5:int)
      {
         super();
         this._un11300 = param1;
         this.color = param2;
         this._xk1425 = param3;
         this._fp5369 = param4;
         this.alpha = param5;
      }
      
      public static function _kl14169(param1:String, param2:String) : Array
      {
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc10_:int = 0;
         var _loc7_:Array = new Array();
         var _loc8_:int = param1.length / 6;
         var _loc9_:Array = param2.split(",");
         while(_loc10_ < _loc8_)
         {
            _loc3_ = uint("0x" + param1.substr(_loc10_ * 6,6));
            _loc4_ = int(_loc9_[_loc10_ * 3]);
            _loc5_ = int(_loc9_[_loc10_ * 3 + 1]);
            _loc6_ = int(_loc9_[_loc10_ * 3 + 2]);
            _loc7_.push(new _pn12847(_loc10_,_loc3_,_loc4_,_loc5_,_loc6_));
            _loc10_++;
         }
         return _loc7_;
      }
      
      public static function _gl15701(param1:Array) : Array
      {
         var _loc2_:_pn12847 = null;
         var _loc3_:String = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:Array = new Array();
         _loc5_[0] = "";
         _loc5_[1] = "";
         while(0 < _loc4_)
         {
            _loc2_ = _pn12847(param1[0]);
            _loc3_ = _loc2_.color.toString(16).toUpperCase();
            while(_loc3_.length < 6)
            {
               _loc3_ = "0" + _loc3_;
            }
            _loc5_[0] += _loc3_;
            _loc5_[1] += _loc2_._xk1425 + "," + _loc2_._fp5369 + "," + _loc2_.alpha;
            if(0 < _loc4_ - 1)
            {
               _loc5_[1] += ",";
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function _pd3865(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:Array = new Array();
         while(_loc3_ < param1.length)
         {
            _loc2_.push(_gl15701(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function _cc6252(param1:Array) : Array
      {
         var _loc2_:_pn12847 = null;
         var _loc3_:String = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:Array = new Array();
         _loc5_[0] = "";
         _loc5_[1] = "";
         while(0 < _loc4_)
         {
            _loc2_ = _pn12847(param1[0]);
            _loc3_ = _loc2_.color.toString(16).toUpperCase();
            while(_loc3_.length < 6)
            {
               _loc3_ = "0" + _loc3_;
            }
            _loc5_[0] += _loc3_;
            _loc5_[1] += _loc2_._xk1425 + "," + _loc2_._fp5369 + "," + _loc2_.alpha;
            if(0 < _loc4_ - 1)
            {
               _loc5_[1] += ",";
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function _iu12125() : _pn12847
      {
         return new _pn12847(this._un11300,this.color,this._xk1425,this._fp5369,this.alpha);
      }
      
      public function _vq3997(param1:_pn12847) : void
      {
         this._un11300 = param1._un11300;
         this.color = param1.color;
         this._xk1425 = param1._xk1425;
         this._fp5369 = param1._fp5369;
         this.alpha = param1.alpha;
      }
      
      public function _qe7357() : String
      {
         var _loc1_:String = this.color.toString(16).toUpperCase();
         while(_loc1_.length < 6)
         {
            _loc1_ = "0" + _loc1_;
         }
         return _loc1_;
      }
      
      public function _gs5785() : String
      {
         return this._xk1425 + "," + this._fp5369 + "," + this.alpha;
      }
      
      public function toString() : String
      {
         var _loc1_:uint = (this.color >>> 16) % 256;
         var _loc2_:uint = (this.color >>> 8) % 256;
         var _loc3_:uint = (this.color >>> 0) % 256;
         return "[id: " + this._un11300 + " color: 0x" + this.color.toString(16).toUpperCase() + "(r:" + _loc1_ + " g:" + _loc2_ + " b:" + _loc3_ + ") x: " + this._xk1425 + " y: " + this._fp5369 + " alpha: " + this.alpha + "]";
      }
      
      public function _di10623() : void
      {
      }
   }
}

