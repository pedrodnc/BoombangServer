package src.logs
{
   public class LogLevel
   {
      
      private var count:int;
      
      public function LogLevel(param1:int)
      {
         super();
         this._mb657 = param1;
      }
      
      public function getString() : String
      {
         return "Generic Log";
      }
      
      public function get _mb657() : int
      {
         return this.count;
      }
      
      public function set _mb657(param1:int) : void
      {
         this.count = param1;
      }
   }
}

