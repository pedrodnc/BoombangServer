package src.modules.banners.vast.data
{
   public class DeliveryTypes
   {
      
      public static const PROGRESSIVE:String = "progressive";
      
      public static const STREAMING:String = "streaming";
      
      public function DeliveryTypes()
      {
         super();
      }
      
      public static function isValidDeliveryType(param1:String) : Boolean
      {
         switch(param1)
         {
            case PROGRESSIVE:
            case STREAMING:
               return true;
            default:
               return false;
         }
      }
   }
}

