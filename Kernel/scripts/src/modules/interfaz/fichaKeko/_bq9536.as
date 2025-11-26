package src.modules.interfaz.fichaKeko
{
   import src.modules.interfaz.fichaKeko.interacciones.*;
   
   public class _bq9536
   {
      
      public static const _xf13706:int = 0;
      
      public static const _wi1185:int = 0;
      
      private var _ct15003:Array;
      
      private var _iy4956:Array;
      
      private var _wk1589:Array;
      
      public function _bq9536()
      {
         super();
         this._ct15003 = new Array();
         this._ct15003[_qb57._oh5695] = 0;
         this._ct15003[_qb57._ij14791] = 0;
         this._ct15003[_qb57._lj14471] = 0;
         this._ct15003[_qb57._fu3499] = _xf13706;
         this._ct15003[_qb57._fm10949] = _wi1185;
         this._wk1589 = new Array();
         this._wk1589[_qb57._oh5695] = true;
         this._wk1589[_qb57._ij14791] = true;
         this._wk1589[_qb57._lj14471] = true;
         this._wk1589[_qb57._fu3499] = true;
         this._wk1589[_qb57._fm10949] = true;
      }
      
      public function destroy() : void
      {
         this._ct15003 = null;
         this._wk1589 = null;
      }
      
      public function _kh2598(param1:int, param2:int, param3:Boolean) : void
      {
         if(param1 >= this._ct15003.length)
         {
            return;
         }
         this._ct15003[param1] = param2;
         this._wk1589[param1] = param3;
      }
      
      public function _ob10395(param1:int) : int
      {
         return this._ct15003[param1];
      }
      
      public function _ij15685(param1:int) : Boolean
      {
         return this._wk1589[param1];
      }
   }
}

