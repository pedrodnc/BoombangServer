package src.modules
{
   import flash.events.Event;
   import src.utils.*;
   
   public class ModuleLoader extends Event
   {
      
      public static const textString:String = "eventCodeFlagStandar";
      
      public var items:Array;
      
      public function ModuleLoader(param1:String, param2:Array)
      {
         super(param1);
         this.items = param2;
      }
      
      override public function toString() : String
      {
         return formatToString("StandarEvent","type","bubbles","cancelable","eventPhase","arrayTrama");
      }
      
      override public function clone() : Event
      {
         return new ModuleLoader(type,StringUtils.getList1(this.items));
      }
   }
}

