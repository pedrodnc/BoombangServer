package src.tv.boombang.core.service_container.services
{
   import src.tv.boombang.application.social.datatypes.DatatypesModel;
   
   public class ServicesModel
   {
      
      public static var _instance:ServicesModel;
      
      public function ServicesModel(param1:_va980)
      {
         super();
         if(!(param1 is _va980))
         {
            throw new Error("User class is a singleton. Shouldn\'t be instantiated");
         }
      }
      
      public static function getInstance() : ServicesModel
      {
         if(_instance == null)
         {
            _instance = new ServicesModel(new _va980());
         }
         return _instance;
      }
      
      public function authenticate(param1:DatatypesModel, param2:Object = null, param3:Function = null) : void
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
