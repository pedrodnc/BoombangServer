package src.modules.scene
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class SceneController extends EventDispatcher implements ModuleManager
   {
      
      public static const _tx13421:int = 120;
      
      private var _gh9645:SocketManager;
      
      public function SceneController()
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(SceneEvents._fy10303,this._bw11981);
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
         this._gh9645.removeEventListener(SceneEvents._fy10303,this._bw11981);
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:int = int(String(_loc2_[0]).charCodeAt(0));
         var _loc4_:int = int(String(_loc2_[1]).charCodeAt(0));
         _loc2_.shift();
         switch(_loc4_)
         {
            case _tx13421:
               dispatchEvent(new SceneEvents(SceneEvents._ul15638,_loc2_));
               return;
            default:
               return;
         }
      }
   }
}

