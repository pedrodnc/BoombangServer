package src.modules.chooseScene
{
   import flash.events.EventDispatcher;
   import flash.external.*;
   import src.modules.*;
   import src.modules.interfaz.*;
   import src.modules.login.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class ChoosesceneController extends EventDispatcher implements ModuleManager
   {
      
      private var vJS:String = ExternalInterface.call("fJS");
      
      private var _gh9645:SocketManager;
      
      private var _lg3292:String = InterfazController._ne6581;
      
      public function ChoosesceneController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(IslandChooser._th860,this._bw11981);
         this.multiuser.addEventListener(LoginEvents._tf16043,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case SocketManager._vk2252:
            case SocketManager._nl6406:
            case SocketManager._ac13376:
            case SocketManager._hs3203:
            case SocketManager._bl3026:
            case SocketManager._ab9203:
               dispatchEvent(new IslandChooser(IslandChooser._th860,_loc3_));
               return;
            case SocketManager._bl4651:
               dispatchEvent(new LoginEvents(LoginEvents._tf16043,_loc3_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(IslandChooser._th860,this._bw11981);
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
      
      public function _ql11937(param1:String, param2:Array) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(SocketManager._bl4651));
         _loc3_.push(String.fromCharCode(LoginProtocol._bc6971));
         _loc3_.push(param1);
         _loc3_.push(SocketManager._kx29(param2));
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _od13245() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._bl4651));
         _loc1_.push(String.fromCharCode(LoginProtocol._ak10346));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _mu10811() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._bl4651));
         _loc1_.push(String.fromCharCode(LoginProtocol._jb1969));
         _loc1_.push(LoginProtocol._jb1969);
         _loc1_.push(InterfazController._ne6581);
         _loc1_.push(this.vJS);
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _ce2942(param1:String, param2:int, param3:Boolean) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._bl4651));
         _loc4_.push(String.fromCharCode(LoginProtocol._rd11568));
         _loc4_.push(param2);
         _loc4_.push(param1);
         if(param3)
         {
            _loc4_.push("1");
         }
         else
         {
            _loc4_.push("0");
         }
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _ch15741() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._bl4651));
         _loc1_.push(String.fromCharCode(LoginProtocol._kb2862));
         _loc1_.push(this._lg3292);
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _hb2985(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._bl4651));
         _loc2_.push(String.fromCharCode(LoginProtocol._cw879));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _lt13599() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._bl4651));
         _loc1_.push(String.fromCharCode(MessageTypeConstants._gp3729));
         _loc1_.push(String.fromCharCode(LoginProtocol._ar9210));
         this.multiuser._er9795(_loc1_,3);
      }
      
      public function _ho11227(param1:String, param2:String, param3:String, param4:int, param5:Array, param6:String, param7:String, param8:Boolean, param9:String, param10:int, param11:int, param12:String, param13:Array, param14:Array, param15:String, param16:String, param17:String) : void
      {
         var _loc18_:uint = 0;
         var _loc19_:String = null;
         var _loc22_:int = 0;
         var _loc20_:String = this.multiuser._av2610(param3);
         var _loc21_:* = "";
         while(_loc22_ < 7)
         {
            _loc18_ = uint(param5[_loc22_]);
            _loc19_ = _loc18_.toString(16);
            while(_loc19_.length < 6)
            {
               _loc19_ = "0" + _loc19_;
            }
            _loc21_ += _loc19_.toUpperCase();
            _loc22_++;
         }
         var _loc23_:Array = new Array();
         _loc23_.push(String.fromCharCode(SocketManager._bl4651));
         _loc23_.push(String.fromCharCode(LoginProtocol._es2379));
         _loc23_.push(param1);
         _loc23_.push(param2);
         _loc23_.push(_loc20_);
         _loc23_.push(param4);
         _loc23_.push(_loc21_);
         _loc23_.push(param6);
         _loc23_.push(param7);
         if(param8)
         {
            _loc23_.push("1");
         }
         else
         {
            _loc23_.push("0");
         }
         _loc23_.push(param9);
         _loc23_.push(param10);
         _loc23_.push(param11);
         _loc23_.push(param12);
         _loc23_.push(param13[0]);
         _loc23_.push(param13[1]);
         _loc23_.push(param13[2]);
         _loc23_.push(param14[0]);
         _loc23_.push(param14[1]);
         _loc23_.push(param14[2]);
         _loc23_.push(param15);
         _loc23_.push(param16);
         _loc23_.push(param17);
         this.multiuser._er9795(_loc23_,2);
      }
   }
}

