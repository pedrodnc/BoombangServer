package src.com.greensock.easing
{
   public class CustomEase
   {
      
      public static const _ft9006:Number = 1.01;
      
      private static var _jl2228:Object = {};
      
      private var _lj9464:Array;
      
      private var _name:String;
      
      public function CustomEase(param1:String, param2:Array)
      {
         var _loc4_:int = 0;
         super();
         this._name = param1;
         this._lj9464 = [];
         var _loc3_:int = int(param2.length);
         while(_loc4_ < _loc3_)
         {
            this._lj9464[this._lj9464.length] = new _fy2926(param2[_loc4_].s,param2[_loc4_]._qx12429,param2[_loc4_].e);
            _loc4_++;
         }
         _jl2228[param1] = this;
      }
      
      public static function create(param1:String, param2:Array) : Function
      {
         var _loc3_:CustomEase = new CustomEase(param1,param2);
         return _loc3_.ease;
      }
      
      public static function _yi14844(param1:String) : Function
      {
         return _jl2228[param1].ease;
      }
      
      public function ease(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = NaN;
         var _loc6_:_fy2926 = null;
         var _loc7_:Number = param1 / param4;
         var _loc8_:uint = uint(this._lj9464.length);
         var _loc9_:int = int(_loc8_ * _loc7_);
         _loc5_ = (_loc7_ - _loc9_ * (1 / _loc8_)) * _loc8_;
         _loc6_ = this._lj9464[_loc9_];
         return param2 + param3 * (_loc6_.s + _loc5_ * (2 * (1 - _loc5_) * (_loc6_._qx12429 - _loc6_.s) + _loc5_ * (_loc6_.e - _loc6_.s)));
      }
      
      public function destroy() : void
      {
         this._lj9464 = null;
         delete _jl2228[this._name];
      }
   }
}

class _fy2926
{
   
   public var s:Number;
   
   public var _qx12429:Number;
   
   public var e:Number;
   
   public function _fy2926(param1:Number, param2:Number, param3:Number)
   {
      super();
      this.s = param1;
      this._qx12429 = param2;
      this.e = param3;
   }
}
