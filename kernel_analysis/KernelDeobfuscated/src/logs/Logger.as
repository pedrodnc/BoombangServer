package src.logs
{
   import src.org.osflash.thunderbolt.*;
   
   public class Logger
   {
      
      private static var _instance:Logger;
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const count2:int = 3;
      
      public static const count3:int = 4;
      
      public static const textString:String = "5bc3e93d79";
      
      private var items:Array;
      
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
         var count:* = "";
         if(param1 != null)
         {
            count = param1.getString();
            ThunderboltModel.error(count);
            if(this.items == null)
            {
               this.items = new Array();
            }
            this.items.push(param1);
         }
         else
         {
            if(this.items == null)
            {
               this.items = new Array();
            }
            param1 = new LogLevel(1);
            this.items.push(param1.getString());
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
