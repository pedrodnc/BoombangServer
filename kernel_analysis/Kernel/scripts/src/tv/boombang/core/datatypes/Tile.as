package src.tv.boombang.core.datatypes
{
   public class Tile
   {
      
      private var _x:int;
      
      private var _y:int;
      
      private var _oq4097:Tile;
      
      public function Tile(param1:int, param2:int, param3:Tile = null)
      {
         super();
         this._x = param1;
         this._y = param2;
         this._oq4097 = param3;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function set y(param1:int) : void
      {
         this._y = param1;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function set x(param1:int) : void
      {
         this._x = param1;
      }
      
      public function get _ch15801() : int
      {
         if(this._oq4097 != null)
         {
            return this._x + this._oq4097._ch15801;
         }
         return this._x;
      }
      
      public function get _oc14271() : int
      {
         if(this._oq4097 != null)
         {
            return this._y + this._oq4097._oc14271;
         }
         return this._y;
      }
   }
}

