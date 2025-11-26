package src.modules.estadoPociones
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class EstadopocionesController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 184;
      
      public static const count1:int = 120;
      
      public static const count2:int = 121;
      
      private var _gh9645:SocketManager;
      
      public function EstadopocionesController()
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(Estadopociones.textString,this.authenticateUser);
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
         this._gh9645.removeEventListener(Estadopociones.textString,this.authenticateUser);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         dispatchEvent(new Estadopociones(Estadopociones.textString,count));
      }
   }
}

