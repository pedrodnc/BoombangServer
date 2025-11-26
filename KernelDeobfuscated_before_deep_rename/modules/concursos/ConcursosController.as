package src.modules.concursos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.modules.login.*;
   import src.multiuser.*;
   
   public class ConcursosController extends EventDispatcher implements ModuleManager
   {
      
      public static const _gc10309:int = 120;
      
      public static const _ck3032:int = 121;
      
      public static const _ds3009:int = 122;
      
      public static const _ga10044:int = 123;
      
      private var _gh9645:SocketManager;
      
      public function ConcursosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(ConcursosEvents._ky8589,this._bw11981);
         this.multiuser.addEventListener(LoginEvents._tf16043,this._bc18);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         dispatchEvent(new ConcursosEvents(ConcursosEvents._ky8589,param1._lv9976));
      }
      
      public function _bc18(param1:ModuleLoader) : void
      {
         var _loc2_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case LoginProtocol._bo12252:
               dispatchEvent(new ConcursosEvents(ConcursosEvents._ky8589,param1._lv9976));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(ConcursosEvents._ky8589,this._bw11981);
         this.multiuser.removeEventListener(LoginEvents._tf16043,this._bc18);
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
      
      public function _qx15716() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._bl4651));
         _loc1_.push(String.fromCharCode(LoginProtocol._bo12252));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _ok7547(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._ut13239));
         _loc2_.push(String.fromCharCode(_ck3032));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
   }
}

