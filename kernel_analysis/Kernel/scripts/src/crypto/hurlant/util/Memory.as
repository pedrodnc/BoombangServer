package src.crypto.hurlant.util
{
   import flash.system.*;
   
   public class Memory
   {
      
      public function Memory()
      {
         super();
      }
      
      public static function gc() : void
      {
         System.pauseForGCIfCollectionImminent();
      }
      
      public static function get used() : uint
      {
         return System.totalMemory;
      }
   }
}

