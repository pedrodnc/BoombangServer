package src.tv.boombang.core.communications
{
   import src.multiuser.*;
   
   public class PacketBuilder
   {
      
      public static const _ad11893:int = 1;
      
      public static const _vd12313:int = 0;
      
      public static const _qj7323:int = -1;
      
      public function PacketBuilder()
      {
         super();
      }
      
      public static function _db6249(param1:Array, param2:Array = null) : void
      {
         var _loc3_:int = 0;
         if(param1.length == 0)
         {
            throw new Error("Can not send a frame without flags");
         }
         var _loc4_:Array = new Array();
         for each(_loc3_ in param1)
         {
            _loc4_.push(String.fromCharCode(_loc3_));
         }
         if(param2)
         {
            _loc4_ = _loc4_.concat(param2);
         }
         SocketManager.getInstance()._er9795(_loc4_,param1.length);
      }
      
      public static function _xo2736(param1:int, param2:Function) : void
      {
         SocketManager.getInstance().addEventListener(param1.toString(),param2,false,0,true);
      }
      
      public static function _mw12849(param1:int, param2:Function) : void
      {
         SocketManager.getInstance().removeEventListener(param1.toString(),param2);
      }
   }
}

