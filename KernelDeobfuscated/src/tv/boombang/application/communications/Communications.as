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
         PacketBuilder.stop([MessageTypeConstants.count58],[param1]);
      }
      
      public static function _ol9306(param1:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count59,MessageTypeConstants.count61],[param1]);
      }
      
      public static function _my7087() : void
      {
         PacketBuilder.stop([MessageTypeConstants.count59,MessageTypeConstants.count60]);
      }
   }
}

