package src.tv.boombang.core.service_container
{
   import flash.events.EventDispatcher;
   import src.tv.boombang.core.errors.*;
   
   public class _rb9290 extends EventDispatcher implements _wk782
   {
      
      public function _rb9290()
      {
         super();
      }
      
      public function start(param1:Object) : Boolean
      {
         throw new _bc6516("Service with no start function implemented");
      }
      
      public function stop() : Boolean
      {
         throw new _bc6516("Service with no stop function implemented");
      }
      
      public function get _kn5152() : Boolean
      {
         throw new _bc6516("Service with no isLoaded function implemented");
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(_vw13249._fq14658,param1);
      }
      
      public function _xp10276(param1:Function) : void
      {
         removeEventListener(_vw13249._ij6606,param1);
      }
   }
}

