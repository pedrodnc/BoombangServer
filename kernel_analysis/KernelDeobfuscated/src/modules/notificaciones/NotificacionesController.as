package src.modules.notificaciones
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class NotificacionesController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 209;
      
      public static const count1:int = 120;
      
      public static const count2:int = 121;
      
      public static const count3:int = 122;
      
      public static const count4:int = 123;
      
      public static const count5:int = 124;
      
      public static const count6:int = 125;
      
      public static const count7:int = 126;
      
      private var _gh9645:SocketManager;
      
      public function NotificacionesController()
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(NotificacionesView.textString,this.authenticateUser);
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(NotificacionesView.textString,this.authenticateUser);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:int = int(String(count[0]).charCodeAt(0));
         var count1:int = int(String(count[1]).charCodeAt(0));
         count.shift();
         switch(count1)
         {
            case count4:
            case count2:
            case count3:
            case count1:
            case count5:
            case count6:
            case count7:
               dispatchEvent(new NotificacionesView(NotificacionesView.textString,count));
               return;
            default:
               return;
         }
      }
   }
}

