package src.person.animations
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.person._um8624;
   
   public class _bb16156 extends _je4353
   {
      
      private static const _iv8901:String = "GoUp";
      
      private static const _jo3812:Number = 1;
      
      private static const _dq10695:Number = 16;
      
      private static const _ot14008:Number = 0;
      
      private var _fp8537:Number = 1.15;
      
      private var _aa105:Boolean;
      
      private var _pk10008:Number = 0;
      
      private var _oo10350:Number = 0;
      
      public function _bb16156(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:int, param6:Function)
      {
         super(param1,param3,param4,param5,param6);
         this._aa105 = false;
      }
      
      override public function loop() : void
      {
         this._op13362();
      }
      
      private function _op13362() : void
      {
         var _loc1_:Boolean = _xb9909();
         if(!this._aa105)
         {
            if(_gb9590.currentLabel == _iv8901)
            {
               this._aa105 = true;
               this._pk10008 = _tv3848.localToGlobal(new Point(_tv3848.x,_tv3848.y)).y;
               this._oo10350 = this._pk10008 / (_jo3812 * _dq10695);
            }
         }
         else if(_tv3848.localToGlobal(new Point(_tv3848.x,_tv3848.y)).y - _ot14008 >= 0)
         {
            this._oo10350 *= this._fp8537;
            _tv3848.y -= this._oo10350;
         }
         if(_loc1_)
         {
            this._aa105 = false;
         }
      }
   }
}

