package src.tv.boombang.core.service_container
{
   import src.tv.boombang.commons.loadables.*;
   
   public interface ServiceContainer extends SWFLoader
   {
      
      function start(param1:Object) : Boolean;
      
      function stop() : Boolean;
   }
}

