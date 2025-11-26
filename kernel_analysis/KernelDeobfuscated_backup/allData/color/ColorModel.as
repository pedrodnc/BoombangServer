package src.allData.color
{
   import src.utils.*;
   
   public class _qm1392
   {
      
      private var _aq8665:Array;
      
      public function _qm1392(param1:String)
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         super();
         this._aq8665 = new Array();
         if(param1.length == 42)
         {
            _loc3_ = 0;
            while(_loc3_ < 9)
            {
               _loc2_ = uint("0x" + param1.substr(_loc3_ * 6,6));
               this._aq8665.push(_loc2_);
               _loc3_++;
            }
         }
         else
         {
            this._aq8665.push(16711680);
            this._aq8665.push(16711680);
            this._aq8665.push(16711680);
            this._aq8665.push(16711680);
            this._aq8665.push(16711680);
            this._aq8665.push(16711680);
            this._aq8665.push(16711680);
         }
      }
      
      public function getColor(param1:int) : uint
      {
         if(param1 >= this._aq8665.length)
         {
            return 0;
         }
         return uint(this._aq8665[param1]);
      }
      
      public function setColor(param1:int, param2:uint) : void
      {
         if(param1 > 0 && param1 < this._aq8665.length)
         {
            this._aq8665[param1] = param2;
         }
      }
      
      public function getString() : String
      {
         var _loc1_:uint = 0;
         var _loc2_:String = null;
         var _loc4_:int = 0;
         var _loc3_:* = "";
         while(_loc4_ < 7)
         {
            _loc1_ = uint(this._aq8665[_loc4_]);
            _loc2_ = _loc1_.toString(16);
            while(_loc2_.length < 6)
            {
               _loc2_ = "0" + _loc2_;
            }
            _loc3_ += _loc2_;
            _loc4_++;
         }
         return _loc3_.toUpperCase();
      }
      
      public function _uk7193(param1:_qm1392, param2:Number) : void
      {
         var _loc3_:uint = 0;
         var _loc5_:int = 0;
         var _loc4_:int = int(this._aq8665.length);
         while(_loc5_ < 7)
         {
            _loc3_ = uint(param1._aq8665[_loc5_]);
            this._aq8665[_loc5_] = _xv14798._dm1958(_loc3_,param2,0);
            _loc5_++;
         }
      }
      
      public function get colors() : Array
      {
         return this._aq8665;
      }
      
      public function set colors(param1:Array) : void
      {
         this._aq8665 = param1;
      }
   }
}

