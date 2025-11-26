package src.modules.login
{
   import flash.events.EventDispatcher;
   import src.allData.color.ColorModel;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class LoginProtocol extends EventDispatcher implements ModuleManager
   {
      
      public static const _jy8090:int = -1;
      
      public static const _qv2244:int = 0;
      
      public static const _kx9617:int = 0;
      
      public static const _hj3452:int = 1;
      
      public static const _hr3698:int = 2;
      
      public static const _ec8158:int = 3;
      
      public static const _wf4416:int = 4;
      
      public static const _gj13202:int = 136;
      
      public static const _sf5871:int = 139;
      
      public static const _es2379:int = 131;
      
      public static const _ar9210:int = 120;
      
      public static const _ls14909:int = 1;
      
      public static const _ps679:int = 0;
      
      public static const _iy7521:int = -1;
      
      public static const _yj11239:int = 123;
      
      public static const _jb6505:int = 130;
      
      public static const _bc6971:int = 138;
      
      public static const _ak10346:int = 137;
      
      public static const _tg15294:int = 0;
      
      public static const _hr12643:int = 1;
      
      public static const _cy3725:int = 2;
      
      public static const _rd11568:int = 133;
      
      public static const _bo12252:int = 134;
      
      public static const _sm13449:int = 132;
      
      public static const _kb2862:int = 141;
      
      public static const _cw879:int = 142;
      
      public static const _jb1969:int = 143;
      
      public static const _yu11945:int = 144;
      
      private var _gh9645:SocketManager;
      
      public function LoginProtocol()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(LoginEvents._tf16043,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:uint = uint(String(_loc2_[1]).charCodeAt(0));
         switch(_loc3_)
         {
            case MessageTypeConstants._gp3729:
            case _sf5871:
            case _es2379:
            case _yu11945:
               dispatchEvent(new LoginEvents(LoginEvents._tf16043,_loc2_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(LoginEvents._tf16043,this._bw11981);
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
      
      public function _jw4048(param1:String, param2:String) : void
      {
         var _loc3_:Array = new Array();
         var _loc4_:String = this.multiuser._av2610(param2);
         _loc3_.push(String.fromCharCode(SocketManager._bl4651));
         _loc3_.push(String.fromCharCode(MessageTypeConstants._gp3729));
         _loc3_.push(param1);
         _loc3_.push(_loc4_);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _oo11834(param1:String) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._bl4651));
         _loc2_.push(String.fromCharCode(_sf5871));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _qs3648(param1:ColorModel, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._bl4651));
         _loc3_.push(String.fromCharCode(_sm13449));
         _loc3_.push(param1.getString());
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _tr13075(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._bl4651));
         _loc3_.push(String.fromCharCode(_yu11945));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _ok6924(param1:String, param2:String, param3:uint, param4:Array, param5:uint, param6:String, param7:String, param8:String, param9:String) : void
      {
         var _loc10_:uint = 0;
         var _loc11_:String = null;
         var _loc15_:int = 0;
         var _loc12_:Array = new Array();
         var _loc13_:String = this.multiuser._av2610(param2);
         var _loc14_:* = "";
         while(_loc15_ < 7)
         {
            _loc10_ = uint(param4[_loc15_]);
            _loc11_ = _loc10_.toString(16);
            while(_loc11_.length < 6)
            {
               _loc11_ = "0" + _loc11_;
            }
            _loc14_ += _loc11_.toUpperCase();
            _loc15_++;
         }
         _loc12_.push(String.fromCharCode(SocketManager._bl4651));
         _loc12_.push(String.fromCharCode(LoginProtocol._es2379));
         _loc12_.push(param1);
         _loc12_.push(_loc13_);
         _loc12_.push(param3);
         _loc12_.push(_loc14_);
         _loc12_.push(param5);
         _loc12_.push(param6);
         _loc12_.push(param7);
         _loc12_.push(param8);
         _loc12_.push(param9);
         this.multiuser._er9795(_loc12_,2);
      }
   }
}

