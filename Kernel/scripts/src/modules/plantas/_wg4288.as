package src.modules.plantas
{
   import flash.display.MovieClip;
   import src.allData.catObjects.*;
   import src.modules.privados._xq2402;
   import src.utils.*;
   
   public class _wg4288 extends MovieClip
   {
      
      private var _fl3768:_xq2402;
      
      private var _mc:MovieClip;
      
      public function _wg4288(param1:MovieClip, param2:_xq2402)
      {
         this._mc = param1;
         this._fl3768 = param2;
         super();
      }
      
      public function _mu8213(param1:int) : MovieClip
      {
         var _loc3_:MovieClip = null;
         var _loc4_:_uq7753 = this._fl3768._wp8897(param1);
         if(this._mc != null && _loc4_ != null)
         {
            if(_loc4_._dv13852 == _uq7753._rm14205)
            {
               _loc3_ = _xv14798._dx10334(this._mc["mcCartelPlanta"]);
               _yq8362._xl9503(_loc3_["tfText"],"plantInterface.growInformation.part1");
               _yq8362._xl9503(_loc3_["tfText_1"],"plantInterface.growInformation.part2");
            }
            else if(_loc4_._dv13852 == _uq7753._kr1990)
            {
               _loc3_ = _xv14798._dx10334(this._mc["mcCartelDragon"]);
               _yq8362._xl9503(_loc3_["tfText"],"dragonInterface.growInformation.part1");
               _yq8362._xl9503(_loc3_["tfText_1"],"dragonInterface.growInformation.part2");
            }
         }
         return _loc3_;
      }
      
      public function destroy() : void
      {
         this._mc = null;
      }
   }
}

