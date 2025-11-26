package src.modules.crypto
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.multiuser.*;
   
   public class cryptoEventsCaller extends EventDispatcher implements _bi12161
   {
      
      public static const initKey:uint = 55;
      
      public static const _ok00345:int = 34;
      
      public static const _nk24356:int = 35;
      
      private var _gh9645:_jl5367;
      
      public function cryptoEventsCaller()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(keyPacket._keyPacketString,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(keyPacket._keyPacketString,this._bw11981);
         this.multiuser = null;
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case initKey:
               dispatchEvent(new keyPacket(keyPacket._keyPacketString,_loc3_));
               break;
            default:
               _qn13596.getInstance()._kp3815(new _ex15859(_qn13596._dj10628,"keyPacket.eventsCaller",_loc3_.toString()));
         }
      }
      
      public function _tf09845() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._ii9971));
         _loc1_.push(String.fromCharCode(_ok00345));
         _loc1_.push("Key_Recived");
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
   }
}

