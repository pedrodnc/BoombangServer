package src.modules.creditos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class CreditosController extends EventDispatcher implements ModuleManager
   {
      
      public static const _jh6980:int = 120;
      
      public static const _gu210:int = 121;
      
      private var _gh9645:SocketManager;
      
      public function CreditosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(CreditosEvents._vm10696,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         dispatchEvent(new CreditosEvents(CreditosEvents._vm10696,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(CreditosEvents._vm10696,this._bw11981);
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
      
      public function _du667() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._kw6674));
         this.multiuser._er9795(_loc1_,1);
      }
      
      public function _wk4066(param1:String) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._dm11287));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _cb11492() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._yq5719));
         _loc1_.push(String.fromCharCode(_jh6980));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _kh1603(param1:String) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._yq5719));
         _loc2_.push(String.fromCharCode(_gu210));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
   }
}

