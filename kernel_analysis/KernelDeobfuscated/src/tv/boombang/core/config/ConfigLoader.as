package src.tv.boombang.core.config
{
   import flash.events.EventDispatcher;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ConfigLoader extends EventDispatcher
   {
      
      private static var _instance:ConfigLoader;
      
      private var _jm975:NotificationsConfigLoader;
      
      private var _je14198:OperatorsConfigLoader;
      
      public function ConfigLoader(param1:_fh8584)
      {
         super();
         if(!(param1 is _fh8584))
         {
            throw new Error("Configuration class is a singleton. Shouldn\'t be instantiated");
         }
      }
      
      public static function getInstance() : ConfigLoader
      {
         if(_instance == null)
         {
            _instance = new ConfigLoader(new _fh8584());
         }
         return _instance;
      }
      
      public function init() : void
      {
         this._jm975 = new NotificationsConfigLoader((ServiceLocator.get(ResourceManager) as ResourceManager).getString2("notifications.xml"));
      }
      
      public function get notifications() : NotificationsConfigLoader
      {
         return this._jm975;
      }
      
      public function set payments(param1:OperatorsConfigLoader) : void
      {
         this._je14198 = param1;
      }
      
      public function get payments() : OperatorsConfigLoader
      {
         return this._je14198;
      }
   }
}

class _fh8584
{
   
   public function _fh8584()
   {
      super();
   }
}
