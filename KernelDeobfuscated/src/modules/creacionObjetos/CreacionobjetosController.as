package src.modules.creacionObjetos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class CreacionobjetosController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      private var _gh9645:SocketManager;
      
      public function CreacionobjetosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(CreacionobjetosEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         dispatchEvent(new CreacionobjetosEvents(CreacionobjetosEvents.textString,param1.items));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(CreacionobjetosEvents.textString,this.authenticateUser);
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
      
      public function handleSocket(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count14));
         count.push(String.fromCharCode(count));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket1(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count14));
         count3.push(String.fromCharCode(count1));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
   }
}

