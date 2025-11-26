package src.modules.notificaciones.fichas
{
   public class FichasModel
   {
      
      private var count:int;
      
      private var _data:Array;
      
      public function FichasModel(param1:int, param2:Array)
      {
         super();
         this.count = param1;
         this._data = param2;
      }
      
      public function get type() : int
      {
         return this.count;
      }
      
      public function get data() : Array
      {
         return this._data;
      }
   }
}

