package src.tv.boombang.library.objects
{
   import flash.display.MovieClip;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ObjectCommunication
   {
      
      public function ObjectCommunication()
      {
         super();
      }
      
      public static function getAssetForObject(param1:String, param2:String) : MovieClip
      {
         return (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(param1,param2);
      }
   }
}

