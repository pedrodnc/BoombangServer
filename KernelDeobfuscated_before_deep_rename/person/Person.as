package src.person
{
   public class Person
   {
      
      private var _vo9810:int;
      
      private var _to12492:int;
      
      private var _bw7551:Array;
      
      private var _ql1858:int;
      
      private var _vt2776:Boolean;
      
      public function Person(param1:int, param2:int, param3:Array, param4:int = 1, param5:Boolean = false)
      {
         super();
         this._vo9810 = param1;
         this._to12492 = param2;
         this._bw7551 = param3;
         this._ql1858 = param4;
         this._vt2776 = param5;
      }
      
      public function get _bh15168() : int
      {
         return this._vo9810;
      }
      
      public function get _xt8208() : int
      {
         return this._to12492;
      }
      
      public function get args() : Array
      {
         return this._bw7551;
      }
      
      public function set _tx2113(param1:int) : void
      {
         this._ql1858 = param1;
      }
      
      public function get _tx2113() : int
      {
         return this._ql1858;
      }
   }
}

