package src.modules.noticias
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class NoticiasController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      public static const count2:int = 122;
      
      private var _gh9645:SocketManager;
      
      public function NoticiasController(param1:IEventDispatcher = null)
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(NoticiasEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(NoticiasEvents.textString,this.authenticateUser);
         this._gh9645 = null;
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         param1.stopImmediatePropagation();
         var count:Array = param1.items;
         count.shift();
         var count3:int = int(String(count.shift()).charCodeAt(0));
         switch(count3)
         {
            case count:
               dispatchEvent(new NoticiasEvents(NoticiasEvents.textString1,count));
               return;
            case count1:
               dispatchEvent(new NoticiasEvents(NoticiasEvents.textString2,count));
               return;
            case count2:
               dispatchEvent(new NoticiasEvents(NoticiasEvents.textString3,count));
               return;
            default:
               return;
         }
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function handleSocket(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count82));
         count3.push(String.fromCharCode(count));
         count3.push(count);
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket1(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count82));
         count3.push(String.fromCharCode(count1));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
   }
}

