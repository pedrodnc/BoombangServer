package src.tv.boombang.application.ga
{
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class Ga
   {
      
      public function Ga()
      {
         super();
      }
      
      public static function _fs11949(param1:int, param2:int) : void
      {
         (ServiceLocator.get(ServiceManager) as ServiceManager)._fs11949("Achievements",param1.toString(),"orden completado",param2);
      }
   }
}

