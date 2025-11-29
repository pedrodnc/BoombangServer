package src.modules.crypto
{
   import src.logs.*;
   import src.modules.*;
   import src.modules.chooseIsla.*;
   
   public class PacketEventHandler implements ModuleBase
   {
      
      private var _eventsCaller:CryptoEventDispatcher;
      
      private var logs:Logger;
      
      public function PacketEventHandler()
      {
         super();
         this._eventsCaller = new CryptoEventDispatcher();
         this._eventsCaller.addEventListener(keyPacket._keyPacketString,this._bw11981);
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         if(this._eventsCaller != null)
         {
            this._eventsCaller.removeEventListener(ChooseislaEvents._pt2805,this._bw11981);
            this._eventsCaller.destroy();
            this._eventsCaller = null;
         }
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case CryptoEventDispatcher.initKey:
               this._eventsCaller._tf09845();
               this._eventsCaller.multiuser._dk09345(String(_loc3_[2]));
               break;
            default:
               Logger.getInstance()._kp3815(new Logs(Logger._dj10628,"keyPacket.PacketEventHandler",_loc3_.toString()));
         }
      }
      
      public function get _jd12664() : int
      {
         return 0;
      }
      
      public function set _jd12664(param1:int) : void
      {
      }
      
      public function get _ud1642() : ModuleManager
      {
         return null;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
      }
   }
}

