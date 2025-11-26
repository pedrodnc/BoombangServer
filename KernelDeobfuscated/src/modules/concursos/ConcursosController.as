package src.modules.concursos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.modules.login.*;
   import src.multiuser.*;
   
   public class ConcursosController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      public static const count2:int = 122;
      
      public static const count3:int = 123;
      
      private var _gh9645:SocketManager;
      
      public function ConcursosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(ConcursosEvents.textString,this.authenticateUser);
         this.multiuser.addEventListener(LoginEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         dispatchEvent(new ConcursosEvents(ConcursosEvents.textString,param1.items));
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = uint(String(param1.items[1]).charCodeAt(0));
         switch(count)
         {
            case LoginProtocol.count22:
               dispatchEvent(new ConcursosEvents(ConcursosEvents.textString,param1.items));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(ConcursosEvents.textString,this.authenticateUser);
         this.multiuser.removeEventListener(LoginEvents.textString,this.authenticateUser);
         this.multiuser = null;
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function authenticateUser1() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count11));
         count2.push(String.fromCharCode(LoginProtocol.count22));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count77));
         count.push(String.fromCharCode(count1));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
   }
}

