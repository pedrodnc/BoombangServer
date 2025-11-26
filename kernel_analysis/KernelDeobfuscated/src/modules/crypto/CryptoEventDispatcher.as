package src.modules.crypto
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.multiuser.*;
   
   public class CryptoEventDispatcher extends EventDispatcher implements ModuleManager
   {
      
      public static const initKey:uint = 55;
      
      public static const count:int = 34;
      
      public static const count1:int = 35;
      
      private var _gh9645:SocketManager;
      
      public function CryptoEventDispatcher()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(keyPacket._keyPacketString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(keyPacket._keyPacketString,this.authenticateUser);
         this.multiuser = null;
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count = uint(String(count3[1]).charCodeAt(0));
         switch(count)
         {
            case initKey:
               dispatchEvent(new keyPacket(keyPacket._keyPacketString,count3));
               break;
            default:
               Logger.getInstance()._kp3815(new Logs(Logger.count,"keyPacket.eventsCaller",count3.toString()));
         }
      }
      
      public function handleSocket() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count81));
         count2.push(String.fromCharCode(count));
         count2.push("Key_Recived");
         this.multiuser._er9795(count2,2);
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
   }
}

