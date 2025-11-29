package src.person
{
   import flash.events.Event;
   
   public class _ir15723 extends Event
   {
      
      public static const _aa5196:String = "eventPerson";
      
      public static const _jg8566:int = 0;
      
      public static const _ht7426:int = 100;
      
      public static const _bq15080:int = 2;
      
      public var _al309:int;
      
      public function _ir15723(param1:String, param2:int)
      {
         super(param1);
         this._al309 = param2;
      }
      
      override public function toString() : String
      {
         return formatToString("StandarEvent","type","bubbles","cancelable","eventPhase","typeEvent");
      }
      
      override public function clone() : Event
      {
         return new _ir15723(type,0);
      }
   }
}

