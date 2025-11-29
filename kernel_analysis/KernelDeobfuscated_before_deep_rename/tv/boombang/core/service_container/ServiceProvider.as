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
      
      public function get _kn5152() : Boolean
      {
         throw new Errors("Service with no isLoaded function implemented");
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(ServiceContainerEvents._fq14658,param1);
      }
      
      public function _xp10276(param1:Function) : void
      {
         removeEventListener(ServiceContainerEvents._ij6606,param1);
      }
   }
}

