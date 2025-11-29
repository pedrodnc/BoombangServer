package src.modules.crypto
{
   import src.logs.*;
   import src.modules.*;
   import src.modules.chooseIsla.*;
   
   public class PacketEventHandler implements ModuleBase
   {
      
      private var _eventsCaller:CryptoEventDispatcher;
      
      private var logs:Logger;
      
      public function PacketEventHandler()
      {
         super();
         this._eventsCaller = new CryptoEventDispatcher();
         this._eventsCaller.addEventListener(keyPacket._keyPacketString,this.authenticateUser);
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         if(this._eventsCaller != null)
         {
            this._eventsCaller.removeEventListener(ChooseislaEvents.textString,this.authenticateUser);
            this._eventsCaller.destroy();
            this._eventsCaller = null;
         }
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count = uint(String(count3[1]).charCodeAt(0));
         switch(count)
         {
            case CryptoEventDispatcher.initKey:
               this._eventsCaller.handleSocket();
               this._eventsCaller.multiuser._dk09345(String(count3[2]));
               break;
            default:
               Logger.getInstance()._kp3815(new Logs(Logger.count,"keyPacket.PacketEventHandler",count3.toString()));
         }
      }
      
      public function get textString7() : int
      {
         return 0;
      }
      
      public function set textString7(param1:int) : void
      {
      }
      
      public function get _ud1642() : ModuleManager
      {
         return null;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
      }
   }
}

