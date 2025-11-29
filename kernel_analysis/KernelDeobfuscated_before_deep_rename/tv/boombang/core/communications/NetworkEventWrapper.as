package src.tv.boombang.core.communications
{
   import flash.events.Event;
   
   public class NetworkEventWrapper extends Event
   {
      
      protected var _hc15391:Array;
      
      protected var _items:Array;
      
      public function NetworkEventWrapper(param1:String, param2:Array, param3:Array, param4:Boolean = false, param5:Boolean = false)
      {
         this._hc15391 = param2;
         this._items = param3;
         super(param1,param4,param5);
      }
      
      public function get items() : Array
      {
         return this._items.concat();
      }
      
      public function get flags() : Array
      {
         return this._hc15391;
      }
      
      public function get frame() : Array
      {
         return this._hc15391.concat(this._items);
      }
      
      public function _qp16092(param1:int) : uint
      {
         if(param1 < this._hc15391.length)
         {
            return this._hc15391[param1];
         }
         return 0;
      }
   }
}

