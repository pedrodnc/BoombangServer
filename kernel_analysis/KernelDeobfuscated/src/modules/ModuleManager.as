package src.modules
{
   import src.multiuser.SocketManager;
   
   public interface ModuleManager
   {
      
      function init() : void;
      
      function destroy() : void;
      
      function authenticateUser(param1:ModuleLoader) : void;
      
      function get multiuser() : SocketManager;
      
      function set multiuser(param1:SocketManager) : void;
   }
}

