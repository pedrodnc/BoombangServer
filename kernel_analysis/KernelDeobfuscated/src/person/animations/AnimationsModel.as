package src.person.animations
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.person.PersonAnimation;
   
   public class AnimationsModel extends Animations
   {
      
      private static const textString:String = "GoUp";
      
      private static const count:Number = 1;
      
      private static const count1:Number = 16;
      
      private static const count2:Number = 0;
      
      private var count3:Number = 1.15;
      
      private var isEnabled:Boolean;
      
      private var count4:Number = 0;
      
      private var count5:Number = 0;
      
      public function AnimationsModel(param1:PersonAnimation, param2:SceneType, param3:MovieClip, param4:int, param5:int, param6:Function)
      {
         super(param1,param3,param4,param5,param6);
         this.isEnabled = false;
      }
      
      override public function loop() : void
      {
         this._op13362();
      }
      
      private function _op13362() : void
      {
         var count2:Boolean = _xb9909();
         if(!this.isEnabled)
         {
            if(_gb9590.currentLabel == textString)
            {
               this.isEnabled = true;
               this.count4 = _tv3848.localToGlobal(new Point(_tv3848.x,_tv3848.y)).y;
               this.count5 = this.count4 / (count * count1);
            }
         }
         else if(_tv3848.localToGlobal(new Point(_tv3848.x,_tv3848.y)).y - count2 >= 0)
         {
            this.count5 *= this.count3;
            _tv3848.y -= this.count5;
         }
         if(count2)
         {
            this.isEnabled = false;
         }
      }
   }
}

