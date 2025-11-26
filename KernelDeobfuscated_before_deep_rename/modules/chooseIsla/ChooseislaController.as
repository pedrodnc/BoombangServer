package src.modules.chooseIsla
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.multiuser.*;
   
   public class ChooseislaController extends EventDispatcher implements ModuleManager
   {
      
      public static const _uw10750:int = 124;
      
      public static const _vx13712:int = 120;
      
      public static const _al15004:int = 123;
      
      public static const _gm11510:int = 125;
      
      public static const _bw13613:int = 126;
      
      public static const _sl2325:int = 127;
      
      public static const _ov14259:int = 129;
      
      public static const _uw4081:int = 130;
      
      public static const _pc8076:int = 131;
      
      public static const _af8216:int = 132;
      
      public static const _bw3160:int = 149;
      
      public static const _eu3180:int = 150;
      
      private var _gh9645:SocketManager;
      
      public function ChooseislaController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(ChooseislaEvents._pt2805,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(ChooseislaEvents._pt2805,this._bw11981);
         this.multiuser = null;
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case _uw10750:
            case _vx13712:
            case _ov14259:
            case _bw3160:
            case _al15004:
               dispatchEvent(new ChooseislaEvents(ChooseislaEvents._pt2805,_loc3_));
               return;
            default:
               Logger.getInstance()._kp3815(new Logs(Logger._dj10628,"ChooseIslaMultiuser.reciebeMsg",_loc3_.toString()));
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
      
      public function _ph10492(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._ex12958));
         _loc2_.push(String.fromCharCode(_uw10750));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _px13297(param1:String, param2:int, param3:Boolean) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._ex12958));
         _loc4_.push(String.fromCharCode(_vx13712));
         _loc4_.push(param1);
         _loc4_.push(String(param2));
         _loc4_.push(int(param3));
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _ji5185(param1:Array, param2:int) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._ex12958));
         _loc4_.push(String.fromCharCode(_sl2325));
         _loc4_.push(param2);
         for each(_loc3_ in param1)
         {
            _loc4_.push(_loc3_);
         }
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _ae12832(param1:Array, param2:int) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._ex12958));
         _loc4_.push(String.fromCharCode(_eu3180));
         _loc4_.push(param2);
         for each(_loc3_ in param1)
         {
            _loc4_.push(_loc3_);
         }
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _mf2353(param1:Boolean, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._ex12958));
         _loc3_.push(String.fromCharCode(_gm11510));
         _loc3_.push(param2);
         _loc3_.push(String(int(param1)));
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _le13027(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._ex12958));
         _loc2_.push(String.fromCharCode(_bw3160));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _px11595(param1:String, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._ex12958));
         _loc3_.push(String.fromCharCode(_ov14259));
         _loc3_.push(param2);
         _loc3_.push(param1);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _rl13441(param1:String, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._ex12958));
         _loc3_.push(String.fromCharCode(_bw13613));
         _loc3_.push(param2);
         _loc3_.push(param1);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _gi11354(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._ex12958));
         _loc2_.push(String.fromCharCode(_af8216));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _ri1919(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._ex12958));
         _loc4_.push(String.fromCharCode(_uw4081));
         _loc4_.push(param2);
         _loc4_.push(param3);
         _loc4_.push(param1);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _tr5645(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._ex12958));
         _loc4_.push(String.fromCharCode(_pc8076));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _dm14699(param1:String, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._ex12958));
         _loc3_.push(String.fromCharCode(_al15004));
         _loc3_.push(param2);
         _loc3_.push(param1);
         this.multiuser._er9795(_loc3_,2);
      }
   }
}

