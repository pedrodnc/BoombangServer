package com.five_ants.commons.datatypes
{
   public class _ix4548
   {
      
      private var _fd5119:Number;
      
      public function _ix4548(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0)
      {
         super();
         this.set(param1,param2,param3,param4,param5);
      }
      
      public function clone() : _ix4548
      {
         return new _ix4548(0,0,0,0,this._fd5119);
      }
      
      public function get _ix14004() : Number
      {
         return this._fd5119;
      }
      
      public function set(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0) : void
      {
         this._fd5119 = param5 + param4 * 1000 + param3 * 60 * 1000 + param2 * 60 * 60 * 1000 + param1 * 24 * 60 * 60 * 1000;
      }
      
      public function add(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0) : void
      {
         this._fd5119 += param5 + param4 * 1000 + param3 * 60 * 1000 + param2 * 60 * 60 * 1000 + param1 * 24 * 60 * 60 * 1000;
      }
   }
}

