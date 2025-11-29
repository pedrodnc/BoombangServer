package src.person
{
   import flash.display.*;
   import flash.events.*;
   import src.allData._hv12530;
   import src.allData.sceneObjects._pn6073;
   import src.utils.*;
   
   public class _od6763 extends _pn6073
   {
      
      private var _nt7956:MovieClip;
      
      private var _jw9399:MovieClip;
      
      private var _py12359:_hv12530;
      
      private var _wg13111:int;
      
      private var _sc8621:int;
      
      private var _xl6256:int;
      
      private var _jn15230:int;
      
      private var _un14583:int;
      
      private var _vl6262:int;
      
      private var _ov11918:Boolean;
      
      public function _od6763(param1:MovieClip, param2:_hv12530, param3:Boolean = false)
      {
         super();
         this._nt7956 = new MovieClip();
         this._py12359 = param2;
         addChild(this._nt7956);
         this._vh5758();
         this._ov11918 = param3;
      }
      
      public function destroy() : void
      {
         removeChild(this._nt7956);
         if(this._jw9399 != null)
         {
            if(contains(this._jw9399))
            {
               removeChild(this._jw9399);
            }
         }
      }
      
      public function _rb2419(param1:int, param2:int) : void
      {
         var _loc3_:MovieClip = _xr3315._ku11706(this._py12359,"flower_power");
         x = param1;
         y = param2;
         _xv14798.cleanChildsMovieclip(this._nt7956);
         this._nt7956.addChild(_loc3_);
         if(this._ov11918)
         {
            this._jw9399 = _xr3315._ju6982("Sombra");
            addChildAt(this._jw9399,0);
         }
      }
      
      public function _es11222(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:MovieClip = _xr3315._ku11706(this._py12359,"cayendo");
         x = param1;
         y = param2;
         _xv14798.cleanChildsMovieclip(this._nt7956);
         this._nt7956.addChild(_loc7_);
         this._wg13111 = param5;
         this._sc8621 = param6;
         this._jn15230 = this._jn15230;
         this._un14583 = param3;
         this._vl6262 = param4;
         this._xl6256 = 0;
         this._nt7956.addEventListener(Event.ENTER_FRAME,this._jp13999);
      }
      
      private function _jp13999(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         ++this._xl6256;
         if(this._xl6256 <= this._wg13111)
         {
            _loc2_ = (this._un14583 - this._jn15230) / 20;
            _loc3_ = Number(this._wg13111);
            _loc4_ = (this._un14583 - this._jn15230 - _loc2_ * _loc3_) * 2 / (_loc3_ * _loc3_);
            _loc5_ = this._jn15230 + _loc2_ * this._xl6256 + _loc4_ / 2 * (this._xl6256 * this._xl6256);
            y = int(_loc5_);
            if(this._xl6256 == this._wg13111)
            {
               this._rb2419(x,y);
            }
         }
         else
         {
            _loc6_ = this._xl6256 - this._wg13111;
            _loc7_ = this._sc8621 - this._wg13111;
            y = this._vl6262 - (this._vl6262 - this._un14583) * (_loc7_ - _loc6_) / _loc7_;
            if(this._xl6256 == this._sc8621)
            {
               this._nt7956.removeEventListener(Event.ENTER_FRAME,this._jp13999);
            }
         }
      }
      
      public function _gl8471() : void
      {
         this._nt7956.scaleX = -1;
      }
      
      public function _vh5758() : void
      {
         this._nt7956.scaleX = 1;
      }
   }
}

