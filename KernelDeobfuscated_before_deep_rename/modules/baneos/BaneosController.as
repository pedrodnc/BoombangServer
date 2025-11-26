package src.modules.baneos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class BaneosController extends EventDispatcher implements ModuleManager
   {
      
      public static const _va5999:int = 136;
      
      private var _gh9645:SocketManager;
      
      public function BaneosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(BaneosEvents._fd4922,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         dispatchEvent(new BaneosEvents(BaneosEvents._fd4922,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(BaneosEvents._fd4922,this._bw11981);
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
   }
}

