package src.tv.boombang.core.service_container
{
   import flash.events.Event;
   
   public class ServiceContainerEvents extends Event
   {
      
      public static const _fq14658:String = "serviceReadyEvent";
      
      public static const _ij6606:String = "serviceStoppedEvent";
      
      private var _ny4177:ServiceContainer;
      
      public function ServiceContainerEvents(param1:ServiceContainer, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this._ny4177 = param1;
         super(param2,param3,param4);
      }
      
      public function get service() : ServiceContainer
      {
         return this._ny4177;
      }
   }
}

