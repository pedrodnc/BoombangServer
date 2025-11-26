package src.modules.notificaciones
{
   import src.modules.notificaciones.fichas.*;
   
   public class Notificaciones
   {
      
      private var items:Array;
      
      public function Notificaciones()
      {
         super();
         this.items = new Array();
      }
      
      public function get stack() : Array
      {
         return this.items;
      }
      
      public function get _wm14109() : FichasModel
      {
         var count2:FichasModel = null;
         if(this.hasPermission(NotificacionesController.count6))
         {
            count2 = this._ri43(NotificacionesController.count6);
            if(count2 != null)
            {
               return count2;
            }
         }
         else
         {
            count2 = FichasModel(this.items[0]);
         }
         return count2;
      }
      
      public function get _jd12786() : Boolean
      {
         return this.items.length > 0;
      }
      
      public function hasPermission(param1:int) : Boolean
      {
         var count:FichasModel = null;
         var count3:int = 0;
         while(count3 < this.items.length)
         {
            count = FichasModel(this.items[count3]);
            if(count.type == param1)
            {
               return true;
            }
            count3++;
         }
         return false;
      }
      
      public function _ri43(param1:int) : FichasModel
      {
         var count:FichasModel = null;
         var count3:int = 0;
         while(count3 < this.items.length)
         {
            count = FichasModel(this.items[count3]);
            if(count.type == param1)
            {
               return count;
            }
            count3++;
         }
         return null;
      }
      
      public function _de11210(param1:FichasModel) : void
      {
         this.items.push(param1);
      }
      
      public function _vo11928(param1:FichasModel) : void
      {
         var count:int = 0;
         while(count < this.items.length)
         {
            if(this.items[count] == param1)
            {
               this.items.splice(count,1);
               return;
            }
            count++;
         }
      }
   }
}

