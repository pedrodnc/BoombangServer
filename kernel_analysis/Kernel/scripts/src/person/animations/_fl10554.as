package src.person.animations
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios.*;
   import src.person.*;
   import src.tv.boombang.core.datatypes.movement._ww13428;
   
   public class _fl10554 extends _je4353
   {
      
      private var _vy1314:MovieClip;
      
      private var _ls7251:int;
      
      private var _yj3561:_ww13428;
      
      private var _oy6853:uint;
      
      public function _fl10554(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:Function, param6:MovieClip, param7:_ww13428)
      {
         super(param1,param3,param7.orientation,param4,param5);
         this._vy1314 = param6;
         this._yj3561 = param7;
         var _loc8_:Number = 750 / param7.time;
         this._oy6853 = 12 / _loc8_;
         this._ls7251 = 0;
         _ga7956.getInstance()._ur2050(_loc8_ * param2._go7360);
         this._cj7969();
         this._tn11925();
      }
      
      override public function loop() : void
      {
         ++this._ls7251;
         if(this._ls7251 == this._oy6853)
         {
            if(_fq11131 != null)
            {
               _fq11131(_xf12113);
            }
         }
         else if(this._ls7251 < this._oy6853)
         {
            this._tn11925();
         }
      }
      
      private function _cj7969() : void
      {
         var _loc1_:int = this._yj3561.x - 1 * _ga7956._pv8029[0][_db11641];
         var _loc2_:int = this._yj3561.y - 1 * _ga7956._pv8029[1][_db11641];
         var _loc3_:Point = _il6324.getPlotXY(new Point(_loc1_,_loc2_));
         this._vy1314.x = _loc3_.x;
         this._vy1314.y = _loc3_.y;
         _me14044._gn15250 = new Point(this._yj3561.x,this._yj3561.y);
      }
      
      private function _tn11925() : void
      {
         this._vy1314.x += _ga7956._uh12871[0][_db11641] * _ga7956._dq6303[0][_db11641];
         this._vy1314.y += _ga7956._uh12871[1][_db11641] * _ga7956._dq6303[1][_db11641];
      }
   }
}

