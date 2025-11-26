package src.person
{
   import flash.display.MovieClip;
   import src.*;
   import src.allData.scene.typeEscenarios.SceneType;
   
   public class PersonModel
   {
      
      private var _wh14492:MovieClip;
      
      private var _state:int;
      
      public function PersonModel(param1:MovieClip, param2:SceneType, param3:int, param4:int, param5:int)
      {
         var _loc6_:int = 0;
         super();
         this._wh14492 = param1;
         this._state = param5;
         _loc6_ = param1.scaleX;
         this._wh14492.x = param3;
         this._wh14492.y = param4;
         this._wh14492.width = param1.width * param2._go7360;
         this._wh14492.height = param1.height * param2._go7360;
         this._wh14492.scaleX = _loc6_;
         _xw1367.getInstance()._uc3178(this._wh14492,_xw1367._jf1741);
      }
      
      public function _pl2360() : Boolean
      {
         if(this._wh14492.currentFrame == this._wh14492.totalFrames || this._wh14492.currentFrame == 1)
         {
            return true;
         }
         if(this._state == PersonController._vf3479)
         {
            if(this._wh14492.currentFrame >= 158 && this._wh14492.currentFrame <= 185)
            {
               this._wh14492.y -= 10 * (this._wh14492.currentFrame - 157);
            }
         }
         return false;
      }
      
      public function destroy() : void
      {
         _xw1367.getInstance()._na10792(this._wh14492,_xw1367._jf1741);
         this._wh14492 = null;
      }
   }
}

