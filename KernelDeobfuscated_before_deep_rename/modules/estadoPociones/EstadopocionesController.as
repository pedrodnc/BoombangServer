package src.modules.estadoPociones
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class EstadopocionesController extends EventDispatcher implements ModuleManager
   {
      
      public static const _rx8624:int = 184;
      
      public static const _lh15101:int = 120;
      
      public static const _rl7898:int = 121;
      
      private var _gh9645:SocketManager;
      
      public function EstadopocionesController()
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(Estadopociones._pd13336,this._bw11981);
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(Estadopociones._pd13336,this._bw11981);
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = param1._lv9976;
         dispatchEvent(new Estadopociones(Estadopociones._pd13336,_loc2_));
      }
   }
}

