package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.utils.*;
   
   public class _pa7905
   {
      
      protected var _ml5932:MovieClip;
      
      protected var _hg11010:MovieClip;
      
      protected var _vc4824:_aw14744;
      
      public function _pa7905(param1:MovieClip, param2:MovieClip, param3:_aw14744)
      {
         super();
         this._ml5932 = param1;
         this._hg11010 = param2;
         this._vc4824 = param3;
         this._hu12389();
      }
      
      public function destroy() : void
      {
         this._hu12389();
      }
      
      public function _db5584(param1:_kc6395) : void
      {
         this._ml5932.addChild(this._hg11010);
         this._ck5714(param1);
      }
      
      public function _hu12389() : void
      {
         _xv14798.cleanChildsMovieclip(this._ml5932);
      }
      
      public function _ck5714(param1:_kc6395) : void
      {
      }
      
      public function _ha80() : void
      {
      }
   }
}

