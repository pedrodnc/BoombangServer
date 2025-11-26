package src.modules.banners
{
   import flash.events.Event;
   
   public class BannersEvents extends Event
   {
      
      public static const textString:String = "vastBannerEvent";
      
      private var textString1:String;
      
      public function BannersEvents(param1:String)
      {
         super(textString,bubbles,cancelable);
         this.textString1 = param1;
      }
      
      public function get _tc14632() : String
      {
         return this.textString1;
      }
   }
}

