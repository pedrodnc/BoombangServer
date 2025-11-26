package src.person.animations
{
   import flash.display.MovieClip;
   import src.allData.scene.typeEscenarios._il6324;
   import src.person._um8624;
   
   public class _nq14620 extends _je4353
   {
      
      public function _nq14620(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:int, param6:Function)
      {
         super(param1,param3,param4,param5,param6);
      }
      
      override public function loop() : void
      {
         if(_gb9590.currentFrame >= 158 && _gb9590.currentFrame <= 185)
         {
            _tv3848.y -= 10 * (_gb9590.currentFrame - 157);
         }
         _dx13345();
      }
   }
}

