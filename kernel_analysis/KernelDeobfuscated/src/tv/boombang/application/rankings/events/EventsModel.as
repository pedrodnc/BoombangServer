package src.tv.boombang.application.rankings.events
{
   import flash.events.Event;
   
   public class EventsModel extends Event
   {
      
      public static const textString1:String = "tabSelected";
      
      public static const textString1:String = "filterSelected";
      
      public static const textString2:String = "searchSelected";
      
      public static const textString3:String = "pageSelected";
      
      private var _data:Object;
      
      public function EventsModel(param1:String, param2:Object)
      {
         super(param1,false,false);
         this._data = param2;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
   }
}

