package src.tv.boombang.core.service_container
{
   import flash.events.EventDispatcher;
   import src.tv.boombang.core.errors.*;
   
   public class ServiceProvider extends EventDispatcher implements ServiceContainer
   {
      
      public function ServiceProvider()
      {
         super();
      }
      
      public function start(param1:Object) : Boolean
      {
         throw new Errors("Service with no start function implemented");
      }
      
      public function stop() : Boolean
      {
         throw new Errors("Service with no stop function implemented");
      }
      
      public function get loadResource2() : Boolean
      {
         throw new Errors("Service with no isLoaded function implemented");
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(ServiceContainerEvents.textString,param1);
      }
      
      public function move(param1:Function) : void
      {
         removeEventListener(ServiceContainerEvents.textString1,param1);
      }
   }
}

