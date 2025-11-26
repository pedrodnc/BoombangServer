package src.modules.plantas
{
   import flash.display.MovieClip;
   import flash.geom.Point;
   import src.*;
   import src.allData.sceneObjects.*;
   
   public class PlantasModel
   {
      
      private static const REGAR:String = "Regar";
      
      private static const textString:String = "Nada";
      
      private var count1:int;
      
      private var _jg8411:MovieClip;
      
      public function PlantasModel(param1:int, param2:MovieClip)
      {
         super();
         this.count1 = param1;
         this._jg8411 = param2;
         _xw1367.getInstance()._uc3178(this._jg8411,_xw1367.count3);
      }
      
      public function destroy() : void
      {
         this.stopAnimation();
         _xw1367.getInstance().move2(this._jg8411,_xw1367.count3);
         this._jg8411 = null;
      }
      
      public function get count2() : int
      {
         return this.count1;
      }
      
      public function get _ti11747() : MovieClip
      {
         return this._jg8411;
      }
      
      public function _dn7993() : Boolean
      {
         var count2:Point = null;
         if(this._jg8411.currentLabel != REGAR)
         {
            SceneObjectManager.getInstance().render7(this.count2);
            count2 = SceneObjectManager.getInstance().render9(this.count2);
            this._jg8411.x = count2.x;
            this._jg8411.y = count2.y;
            this._jg8411.gotoAndPlay(REGAR);
            return true;
         }
         return false;
      }
      
      public function stopAnimation() : void
      {
         this._jg8411.gotoAndStop(textString);
      }
      
      private function stop() : Boolean
      {
         if(!SceneObjectManager.getInstance()._pi14544(this.count2))
         {
            this.stopAnimation();
            return false;
         }
         return true;
      }
      
      public function _yd11475() : void
      {
         if(!this.stop())
         {
            return;
         }
         if(this._jg8411.currentLabel == textString)
         {
            SceneObjectManager.getInstance().render8(this.count2);
         }
      }
   }
}

