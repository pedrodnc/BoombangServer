package src.modules.noticias
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class NoticiasController extends EventDispatcher implements ModuleManager
   {
      
      public static const _pn9056:int = 120;
      
      public static const _ij7018:int = 121;
      
      public static const _uk8818:int = 122;
      
      private var _gh9645:SocketManager;
      
      public function NoticiasController(param1:IEventDispatcher = null)
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(NoticiasEvents._at163,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(NoticiasEvents._at163,this._bw11981);
         this._gh9645 = null;
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Array = param1._lv9976;
         _loc2_.shift();
         var _loc3_:int = int(String(_loc2_.shift()).charCodeAt(0));
         switch(_loc3_)
         {
            case _pn9056:
               dispatchEvent(new NoticiasEvents(NoticiasEvents._mc6789,_loc2_));
               return;
            case _ij7018:
               dispatchEvent(new NoticiasEvents(NoticiasEvents._wi8818,_loc2_));
               return;
            case _uk8818:
               dispatchEvent(new NoticiasEvents(NoticiasEvents._dw9271,_loc2_));
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
      
      public function _bp16095(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._ys5108));
         _loc3_.push(String.fromCharCode(_pn9056));
         _loc3_.push(_pn9056);
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _cl10392(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._ys5108));
         _loc3_.push(String.fromCharCode(_ij7018));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
   }
}

