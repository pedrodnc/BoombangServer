package src.tv.boombang.core.config
{
   import flash.events.EventDispatcher;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _sw9805 extends EventDispatcher
   {
      
      private static var _instance:_sw9805;
      
      private var _jm975:_bh8496;
      
      private var _je14198:_vr1926;
      
      public function _sw9805(param1:_fh8584)
      {
         super();
         if(!(param1 is _fh8584))
         {
            throw new Error("Configuration class is a singleton. Shouldn\'t be instantiated");
         }
      }
      
      public static function getInstance() : _sw9805
      {
         if(_instance == null)
         {
            _instance = new _sw9805(new _fh8584());
         }
         return _instance;
      }
      
      public function init() : void
      {
         this._jm975 = new _bh8496((_lh7543.get(_vy3822) as _vy3822)._eb710("notifications.xml"));
      }
      
      public function get notifications() : _bh8496
      {
         return this._jm975;
      }
      
      public function set payments(param1:_vr1926) : void
      {
         this._je14198 = param1;
      }
      
      public function get payments() : _vr1926
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
