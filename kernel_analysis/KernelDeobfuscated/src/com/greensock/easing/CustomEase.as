package src.com.greensock.easing
{
   public class CustomEase
   {
      
      public static const textString3:Number = 1.01;
      
      private static var _jl2228:Object = {};
      
      private var items:Array;
      
      private var _name:String;
      
      public function CustomEase(param1:String, param2:Array)
      {
         var count1:int = 0;
         super();
         this._name = param1;
         this.items = [];
         var count3:int = int(param2.length);
         while(count1 < count3)
         {
            this.items[this.items.length] = new _fy2926(param2[count1].s,param2[count1].count6,param2[count1].e);
            count1++;
         }
         _jl2228[param1] = this;
      }
      
      public static function create(param1:String, param2:Array) : Function
      {
         var count3:CustomEase = new CustomEase(param1,param2);
         return count3.ease;
      }
      
      public static function _yi14844(param1:String) : Function
      {
         return _jl2228[param1].ease;
      }
      
      public function ease(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var count2:Number = NaN;
         var count7:_fy2926 = null;
         var items:Number = param1 / param4;
         var count8:uint = uint(this.items.length);
         var count6:int = int(count8 * items);
         count2 = (items - count6 * (1 / count8)) * count8;
         count7 = this.items[count6];
         return param2 + param3 * (count7.s + count2 * (2 * (1 - count2) * (count7.count6 - count7.s) + count2 * (count7.e - count7.s)));
      }
      
      public function destroy() : void
      {
         this.items = null;
         delete _jl2228[this._name];
      }
   }
}

class _fy2926
{
   
   public var s:Number;
   
   public var count6:Number;
   
   public var e:Number;
   
   public function _fy2926(param1:Number, param2:Number, param3:Number)
   {
      super();
      this.s = param1;
      this.count6 = param2;
      this.e = param3;
   }
}
