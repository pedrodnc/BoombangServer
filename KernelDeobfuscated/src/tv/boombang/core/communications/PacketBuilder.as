package src.tv.boombang.core.communications
{
   import src.multiuser.*;
   
   public class PacketBuilder
   {
      
      public static const count:int = 1;
      
      public static const count1:int = 0;
      
      public static const count2:int = -1;
      
      public function PacketBuilder()
      {
         super();
      }
      
      public static function stop(param1:Array, param2:Array = null) : void
      {
         var count3:int = 0;
         if(param1.length == 0)
         {
            throw new Error("Can not send a frame without flags");
         }
         var count1:Array = new Array();
         for each(count3 in param1)
         {
            count1.push(String.fromCharCode(count3));
         }
         if(param2)
         {
            count1 = count1.concat(param2);
         }
         SocketManager.getInstance()._er9795(count1,param1.length);
      }
      
      public static function handleSocket(param1:int, param2:Function) : void
      {
         SocketManager.getInstance().addEventListener(param1.toString(),param2,false,0,true);
      }
      
      public static function handleSocket1(param1:int, param2:Function) : void
      {
         SocketManager.getInstance().removeEventListener(param1.toString(),param2);
      }
   }
}

