package src.modules
{
   public interface ModuleBase
   {
      
      function init(param1:Object = null) : void;
      
      function loop() : void;
      
      function destroy() : void;
      
      function _bw11981(param1:ModuleLoader) : void;
      
      function get _jd12664() : int;
      
      function set _jd12664(param1:int) : void;
      
      function get _ud1642() : ModuleManager;
      
      function set _ud1642(param1:ModuleManager) : void;
   }
}

