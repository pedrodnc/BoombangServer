package src.logs
{
   import src.org.osflash.thunderbolt.*;
   
   public class Logger
   {
      
      private static var _instance:Logger;
      
      public static const _dj10628:int = 1;
      
      public static const _do7319:int = 2;
      
      public static const _ny10327:int = 3;
      
      public static const _xq8140:int = 4;
      
      public static const _kl5643:String = "5bc3e93d79";
      
      private var _rv15792:Array;
      
      public function Logger(param1:_rw9443)
      {
         super();
      }
      
      public static function getInstance() : Logger
      {
         if(Logger._instance == null)
         {
            Logger._instance = new Logger(new _rw9443());
         }
         return Logger._instance;
      }
      
      public function _sn5663(param1:String) : void
      {
         ThunderboltModel.info(param1);
      }
      
      public function _kp3815(param1:LogLevel) : void
      {
         var _loc2_:* = "";
         if(param1 != null)
         {
            _loc2_ = param1._ya15560();
            ThunderboltModel.error(_loc2_);
            if(this._rv15792 == null)
            {
               this._rv15792 = new Array();
            }
            this._rv15792.push(param1);
         }
         else
         {
            if(this._rv15792 == null)
            {
               this._rv15792 = new Array();
            }
            param1 = new LogLevel(1);
            this._rv15792.push(param1._ya15560());
         }
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
