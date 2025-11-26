package src.tv.boombang.core.datatypes.events
{
   public class EventsModel
   {
      
      public static const textString:String = "enable";
      
      public static const textString1:String = "disable";
      
      public static const textString2:String = "empty";
      
      private var _id:int;
      
      private var textString3:String;
      
      public function EventsModel()
      {
         this.textString3 = textString2;
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
         return this.textString3;
      }
      
      public function set status(param1:String) : void
      {
         this.textString3 = param1;
      }
   }
}

