package src.modules.plantas
{
   import flash.display.MovieClip;
   import flash.geom.Point;
   import src.*;
   import src.allData.sceneObjects.*;
   
   public class PlantasModel
   {
      
      private static const REGAR:String = "Regar";
      
      private static const _ul1883:String = "Nada";
      
      private var _wb54:int;
      
      private var _jg8411:MovieClip;
      
      public function PlantasModel(param1:int, param2:MovieClip)
      {
         super();
         this._wb54 = param1;
         this._jg8411 = param2;
         _xw1367.getInstance()._uc3178(this._jg8411,_xw1367._jf1741);
      }
      
      public function destroy() : void
      {
         this.stopAnimation();
         _xw1367.getInstance()._na10792(this._jg8411,_xw1367._jf1741);
         this._jg8411 = null;
      }
      
      public function get _hw14129() : int
      {
         return this._wb54;
      }
      
      public function get _ti11747() : MovieClip
      {
         return this._jg8411;
      }
      
      public function _dn7993() : Boolean
      {
         var _loc1_:Point = null;
         if(this._jg8411.currentLabel != REGAR)
         {
            SceneObjectManager.getInstance()._ic1561(this._hw14129);
            _loc1_ = SceneObjectManager.getInstance()._lc12635(this._hw14129);
            this._jg8411.x = _loc1_.x;
            this._jg8411.y = _loc1_.y;
            this._jg8411.gotoAndPlay(REGAR);
            return true;
         }
         return false;
      }
      
      public function stopAnimation() : void
      {
         this._jg8411.gotoAndStop(_ul1883);
      }
      
      private function _cl10569() : Boolean
      {
         if(!SceneObjectManager.getInstance()._pi14544(this._hw14129))
         {
            this.stopAnimation();
            return false;
         }
         return true;
      }
      
      public function _yd11475() : void
      {
         if(!this._cl10569())
         {
            return;
         }
         if(this._jg8411.currentLabel == _ul1883)
         {
            SceneObjectManager.getInstance()._sq5790(this._hw14129);
         }
      }
   }
}

