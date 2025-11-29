package src.tv.boombang.core.service_container.services
{
   import src.tv.boombang.application.social.datatypes._sw5071;
   
   public class _qv587
   {
      
      public static var _instance:_qv587;
      
      public function _qv587(param1:_va980)
      {
         super();
         if(!(param1 is _va980))
         {
            throw new Error("User class is a singleton. Shouldn\'t be instantiated");
         }
      }
      
      public static function getInstance() : _qv587
      {
         if(_instance == null)
         {
            _instance = new _qv587(new _va980());
         }
         return _instance;
      }
      
      public function authenticate(param1:_sw5071, param2:Object = null, param3:Function = null) : void
      {
         if(param1._ha11838)
         {
            param1._lc5739.login(param2,param3);
            return;
         }
         throw new Error("Social network " + param1.label + " not enabled for authentication.");
      }
   }
}

class _va980
{
   
   public function _va980()
   {
      super();
   }
}
