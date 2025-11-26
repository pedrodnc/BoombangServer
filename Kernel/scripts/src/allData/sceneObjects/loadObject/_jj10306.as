package src.allData.sceneObjects.loadObject
{
   import flash.events.Event;
   
   public class _jj10306 extends Event
   {
      
      public static const _bs1884:String = "eventCodeObjectLoaded";
      
      public var obj:_ft6295;
      
      public function _jj10306(param1:String, param2:_ft6295)
      {
         super(param1);
         this.obj = param2;
      }
      
      override public function toString() : String
      {
         return formatToString("StandarEvent","type","bubbles","cancelable","eventPhase","obj");
      }
   }
}

