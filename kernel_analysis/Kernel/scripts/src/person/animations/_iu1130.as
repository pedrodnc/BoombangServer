package src.person.animations
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios.*;
   import src.person._um8624;
   
   public class _iu1130 extends _je4353
   {
      
      private static const _eu9441:String = "normal";
      
      private static const _no13660:String = "pow";
      
      private static const _tc6361:String = "invisible";
      
      private var _vy1314:MovieClip;
      
      private var _ck4713:MovieClip;
      
      private var _ej208:int;
      
      private var _xv13487:Number;
      
      private var _hm2693:Number;
      
      private var _qt3241:Number;
      
      private var _vg10736:Array;
      
      private var _ch152:int;
      
      private var _xv12297:_il6324;
      
      public function _iu1130(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:int, param6:Function, param7:MovieClip, param8:MovieClip, param9:int)
      {
         this._vy1314 = param7;
         this._ck4713 = param8;
         this._ej208 = param9;
         this._xv12297 = param2;
         super(param1,param3,param4,param5,param6);
      }
      
      override public function init(param1:Boolean = false) : void
      {
         super.init(true);
         this._ly6395();
      }
      
      public function _ly6395() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Point = _il6324.getPlotXY(new Point(_me14044._gn15250.x,_me14044._gn15250.y));
         _loc1_.y -= 80 * this._xv12297._go7360 * _tv3848.scaleX;
         _loc1_ = this._vy1314.globalToLocal(_loc1_);
         var _loc2_:Point = new Point(10,30);
         _loc2_ = this._vy1314.globalToLocal(_loc2_);
         this._xv13487 = _loc2_.x;
         this._hm2693 = _loc2_.y;
         this._qt3241 = (_loc1_.x - _loc2_.x) / 20;
         var _loc3_:Array = [0,0.5,1,1.6,2.1,2.6,3.1,3.7,4.2,4.7,5.2,5.7,6.3,6.8,7.4,7.9,8.4,8.9,9.5,10.4];
         this._vg10736 = new Array();
         while(_loc4_ < 20)
         {
            this._vg10736.push((_loc1_.y - _loc2_.y) * _loc3_[_loc4_] / 100);
            _loc4_++;
         }
         this._ch152 = 0;
      }
      
      override public function loop() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         ++this._ch152;
         if(this._ch152 == 11)
         {
            this._ck4713.x = this._xv13487;
            this._ck4713.y = this._hm2693;
            this._ck4713.gotoAndStop(_eu9441 + this._ej208);
         }
         if(this._ch152 >= 12 && this._ch152 <= 31)
         {
            this._xv13487 += this._qt3241;
            this._hm2693 += this._vg10736[this._ch152 - 12];
            this._ck4713.x = this._xv13487;
            this._ck4713.y = this._hm2693;
         }
         if(this._ch152 == 31)
         {
            this._ck4713.gotoAndStop(_no13660 + this._ej208);
            super.destroy();
            super.init();
         }
         if(this._ch152 >= 32 && this._ch152 <= 51)
         {
            if(this._ch152 == 33)
            {
               this._ck4713.gotoAndStop(_eu9441 + this._ej208);
            }
            _loc1_ = [-1.3,8,7.9,4.8,4.7,4.8,4.7,4.8,4.7,1.6,0.9,0.9,0.7,0.9,0.9,0.7,0.9,0.9,0.7,0.9];
            _loc2_ = [1.5,-9.6,-9.5,1.8,1.8,1.9,1.8,1.8,1.8,1.9,12.7,6.4,6.4,6.4,6.3,6.3,6.5,6.4,6.3,6.4,6.4];
            this._xv13487 -= _loc1_[this._ch152 - 32];
            this._hm2693 += _loc2_[this._ch152 - 32] * _tv3848.scaleX;
            this._ck4713.x = this._xv13487;
            this._ck4713.y = this._hm2693;
         }
         if(this._ch152 >= 32)
         {
            _dx13345();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._ck4713.gotoAndStop(_tc6361);
      }
   }
}

