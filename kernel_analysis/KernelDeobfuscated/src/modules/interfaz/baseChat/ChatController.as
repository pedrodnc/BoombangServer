package src.modules.interfaz.baseChat
{
   import flash.events.Event;
   
   public class ChatController extends Event
   {
      
      public static const textString:String = "eventBaseChatClickBarraLateral";
      
      public var count:int;
      
      public function ChatController(param1:String, param2:int)
      {
         super(param1);
         this.count = param2;
      }
      
      override public function clone() : Event
      {
         return new ChatController(type,this.count);
      }
   }
}

