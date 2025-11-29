package src.modules.intercambios
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class IntercambiosController extends EventDispatcher implements ModuleManager
   {
      
      public static const _gi11862:int = 120;
      
      public static const _xi4203:int = 121;
      
      public static const _cg12445:int = 122;
      
      public static const _ab2884:int = 123;
      
      public static const _om9335:int = 124;
      
      public static const _dm1321:int = 125;
      
      public static const _do3059:int = 126;
      
      public static const _kk11006:int = 127;
      
      public static const _qq11038:int = 128;
      
      public static const _ky10948:int = 129;
      
      public static const _ss14231:int = 130;
      
      private var _gh9645:SocketManager;
      
      public function IntercambiosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(IntercambiosEvents._gl14183,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         dispatchEvent(new IntercambiosEvents(IntercambiosEvents._gl14183,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(IntercambiosEvents._gl14183,this._bw11981);
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
      
      public function _vo15765(param1:int, param2:Boolean) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._eb6740));
         _loc3_.push(String.fromCharCode(_do3059));
         _loc3_.push(param1);
         if(param2)
         {
            _loc3_.push("1");
         }
         else
         {
            _loc3_.push("0");
         }
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _yu843(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._eb6740));
         _loc3_.push(String.fromCharCode(_gi11862));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _lq10211(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(SocketManager._eb6740));
         _loc5_.push(String.fromCharCode(_xi4203));
         _loc5_.push(param1);
         _loc5_.push(param2);
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,2);
      }
      
      public function _pq10662(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._eb6740));
         _loc4_.push(String.fromCharCode(_om9335));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _sp891(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._eb6740));
         _loc4_.push(String.fromCharCode(_cg12445));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _nf8409(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._eb6740));
         _loc4_.push(String.fromCharCode(_ab2884));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
   }
}

