package src.tv.boombang.library.list
{
   import flash.events.Event;
   
   public class ListModel extends Event
   {
      
      public static const ITEM_CLICK:String = "item_click";
      
      public static const _yh7280:String = "item_selected";
      
      public var _data:*;
      
      public function ListModel(param1:String, param2:Boolean = false, param3:Boolean = false, param4:* = null)
      {
         super(param1,param2,param3);
         this._data = param4;
      }
      
      override public function clone() : Event
      {
         return new ListModel(type,bubbles,cancelable,this.data);
      }
      
      override public function toString() : String
      {
         return formatToString("ListEvent","type","bubbles","cancelable","eventPhase");
      }
      
      public function get data() : *
      {
         return this._data;
      }
   }
}

