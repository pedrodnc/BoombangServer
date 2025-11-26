package src.person
{
   public class Person
   {
      
      private var count4:int;
      
      private var count3:int;
      
      private var items:Array;
      
      private var count2:int;
      
      private var isEnabled:Boolean;
      
      public function Person(param1:int, param2:int, param3:Array, param4:int = 1, param5:Boolean = false)
      {
         super();
         this.count4 = param1;
         this.count3 = param2;
         this.items = param3;
         this.count2 = param4;
         this.isEnabled = param5;
      }
      
      public function get _bh15168() : int
      {
         return this.count4;
      }
      
      public function get _xt8208() : int
      {
         return this.count3;
      }
      
      public function get args() : Array
      {
         return this.items;
      }
      
      public function set _tx2113(param1:int) : void
      {
         this.count2 = param1;
      }
      
      public function get _tx2113() : int
      {
         return this.count2;
      }
   }
}

