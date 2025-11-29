package src.modules.chooseIsla
{
   import flash.display.*;
   import src.utils.*;
   
   public class ChooseislaUtils
   {
      
      private static const _cu4317:String = "mcCapsulaOwnerName";
      
      private static const _yj15052:String = "tfOwnerName";
      
      private var _xc11456:MovieClip;
      
      private var _bx8167:ChooseislaController;
      
      public function ChooseislaUtils(param1:MovieClip, param2:ChooseislaController, param3:Boolean)
      {
         super();
         this._bx8167 = param2;
         this._xc11456 = MovieClip(param1[_cu4317]);
         this._bo13783();
      }
      
      public function destroy() : void
      {
         this._xc11456 = null;
         this._bx8167 = null;
      }
      
      private function _bo13783() : void
      {
         if(this._bx8167._hp11587 == null)
         {
            return;
         }
         UtilsUtils._xl9503(this._xc11456[_yj15052],this._bx8167._hp11587._hn7664.name);
      }
      
      public function _db5584() : void
      {
         this._xc11456.visible = true;
      }
      
      public function _hu12389() : void
      {
         this._xc11456.visible = false;
      }
   }
}

