package src.modules.banners.vast.data
{
   public class MediaFile extends URIIdentifier
   {
      
      private static const INVALID_DELIVERY_TYPE_ERROR_MESSAGE:String = "Invalid media type.";
      
      private var _delivery:String;
      
      public var type:String;
      
      public var bitrate:int;
      
      public var width:int;
      
      public var height:int;
      
      public var scalable:Boolean;
      
      public var maintainAspectRatio:Boolean;
      
      public var apiFramework:String;
      
      public function MediaFile()
      {
         super();
      }
      
      public function get delivery() : String
      {
         return this._delivery;
      }
      
      public function set delivery(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(DeliveryTypes.isValidDeliveryType(param1))
         {
            this._delivery = param1;
            return;
         }
         throw new Error(INVALID_DELIVERY_TYPE_ERROR_MESSAGE);
      }
   }
}

