package src.modules.banners.vast.data
{
   public class TrackingEvent
   {
      
      private static const INVALID_EVENT_TYPE_ERROR_MESSAGE:String = "Invalid tracking event type.";
      
      public var uri:String;
      
      private var _event:String;
      
      public function TrackingEvent()
      {
         super();
      }
      
      public function get event() : String
      {
         return this._event;
      }
      
      public function set event(param1:String) : void
      {
         if(TrackingEventTypes.isValidTrackingEventType(param1))
         {
            this._event = param1;
         }
         else
         {
            this._event = "fail";
         }
      }
   }
}

