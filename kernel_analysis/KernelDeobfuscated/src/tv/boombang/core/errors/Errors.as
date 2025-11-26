package src.tv.boombang.core.errors
{
   import src.org.osflash.thunderbolt.*;
   
   public class Errors extends Error
   {
      
      public static const gh0843:String = "cb96c545b0cd9";
      
      public function Errors(param1:String = "")
      {
         super(param1);
         ThunderboltModel.error(param1);
      }
   }
}

