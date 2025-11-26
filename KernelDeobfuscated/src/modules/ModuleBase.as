package src.modules
{
   public interface ModuleBase
   {
      
      function init(param1:Object = null) : void;
      
      function loop() : void;
      
      function destroy() : void;
      
      function authenticateUser(param1:ModuleLoader) : void;
      
      function get textString7() : int;
      
      function set textString7(param1:int) : void;
      
      function get _ud1642() : ModuleManager;
      
      function set _ud1642(param1:ModuleManager) : void;
   }
}

