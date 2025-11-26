package src.utils
{
   public class MathUtils
   {
      
      public static const textString:String = "Segundos";
      
      public static const count2:String = "Minutos";
      
      public static const count1:String = "Horas";
      
      public static const count:String = "Dias";
      
      public static const count3:String = "Semanas";
      
      protected var count:int;
      
      protected var count1:int;
      
      protected var count2:int;
      
      protected var count3:int;
      
      protected var count4:int;
      
      public function MathUtils()
      {
         super();
      }
      
      public function _de6958(param1:int, param2:String) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         switch(param2)
         {
            case textString:
               this.count = param1;
               return;
            case count2:
               this.count1 = param1;
               return;
            case count1:
               this.count2 = param1;
               return;
            case count:
               this.count3 = param1;
               return;
            case count3:
               this.count4 = param1;
               return;
            default:
               return;
         }
      }
      
      public function get count6() : int
      {
         return this.count;
      }
      
      public function get count5() : int
      {
         return this.count1;
      }
      
      public function get count4() : int
      {
         return this.count2;
      }
      
      public function get count3() : int
      {
         return this.count3;
      }
      
      public function get count2() : int
      {
         return this.count4;
      }
   }
}

