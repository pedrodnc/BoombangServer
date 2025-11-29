package src.modules.interfaz.baseChat
{
   import flash.events.Event;
   
   public class ChatController extends Event
   {
      
      public static const _pl11702:String = "eventBaseChatClickBarraLateral";
      
      public var _ic8735:int;
      
      public function ChatController(param1:String, param2:int)
      {
         super(param1);
         this._ic8735 = param2;
      }
      
      override public function clone() : Event
      {
         return new ChatController(type,this._ic8735);
      }
   }
}

