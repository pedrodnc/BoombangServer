package src.modules.notificaciones.fichas
{
   public class FichasModel
   {
      
      private var _nx2429:int;
      
      private var _data:Array;
      
      public function FichasModel(param1:int, param2:Array)
      {
         super();
         this._nx2429 = param1;
         this._data = param2;
      }
      
      public function get type() : int
      {
         return this._nx2429;
      }
      
      public function get data() : Array
      {
         return this._data;
      }
   }
}

