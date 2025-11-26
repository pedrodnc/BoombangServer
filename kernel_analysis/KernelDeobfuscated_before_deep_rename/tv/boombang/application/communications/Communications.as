package src.tv.boombang.application.communications
{
   import src.tv.boombang.core.communications.*;
   
   public class Communications
   {
      
      public function Communications()
      {
         super();
      }
      
      public static function _lc3002(param1:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ep10131],[param1]);
      }
      
      public static function _ol9306(param1:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._xc12683,MessageTypeConstants._hb8962],[param1]);
      }
      
      public static function _my7087() : void
      {
         PacketBuilder._db6249([MessageTypeConstants._xc12683,MessageTypeConstants._fr7184]);
      }
   }
}

