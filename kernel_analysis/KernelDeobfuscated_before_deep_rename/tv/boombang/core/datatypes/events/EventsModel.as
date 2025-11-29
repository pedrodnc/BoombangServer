package src.tv.boombang.core.datatypes.events
{
   public class EventsModel
   {
      
      public static const _eg13506:String = "enable";
      
      public static const _bh8866:String = "disable";
      
      public static const _ms8729:String = "empty";
      
      private var _id:int;
      
      private var _re3848:String;
      
      public function EventsModel()
      {
         this._re3848 = _ms8729;
         super();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get status() : String
      {
         return this._re3848;
      }
      
      public function set status(param1:String) : void
      {
         this._re3848 = param1;
      }
   }
}

