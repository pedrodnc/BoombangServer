package src.events
{
   import flash.events.Event;
   
   public class EventsModel extends Event
   {
      
      private var _data:Object;
      
      public function EventsModel(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
      }
   }
}

