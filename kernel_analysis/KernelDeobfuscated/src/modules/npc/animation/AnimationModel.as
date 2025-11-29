package src.modules.npc.animation
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.npc.typeNpc.TypenpcModel;
   import src.person.*;
   import src.tv.boombang.core.datatypes.movement.MovementModel;
   
   public class AnimationModel extends MovieClip
   {
      
      private static var textString:String = "mcNPC";
      
      private static const OCULTAR:String = "Ocultar";
      
      private static const textString:String = "Animar";
      
      private static const END:String = "End";
      
      private static const count:Number = 1000;
      
      private const textString2:String = "mcDDI";
      
      private const textString3:String = "mcD";
      
      private const textString4:String = "mcDDD";
      
      private const textString5:String = "mcIzq";
      
      private const textString6:String = "mcO";
      
      private const textString7:String = "mcDer";
      
      private const textString8:String = "mcDAI";
      
      private const textString9:String = "mcA";
      
      private const textString10:String = "mcDAD";
      
      private const textString11:String = "mcAnim1";
      
      private const textString12:String = "mcAnim2";
      
      private const textString13:String = "mcAnim3";
      
      private const textString14:String = "mcAnim4";
      
      private const textString15:String = "punch";
      
      private var items:Array;
      
      private var _wg921:MovieClip;
      
      private var count1:Number;
      
      private var _bf9057:TypenpcModel;
      
      private var _dv13168:MovieClip;
      
      private var _yj3561:MovementModel;
      
      private var count2:Number;
      
      private var count3:Number;
      
      private var count4:Number;
      
      private var count5:Number;
      
      private var count6:Number = 0;
      
      public function AnimationModel(param1:TypenpcModel, param2:MovementModel)
      {
         var count3:Number = NaN;
         this.items = [this.textString7,this.textString5,this.textString3,this.textString9,this.textString4,this.textString2,this.textString10,this.textString8,this.textString6,this.textString11,this.textString12,this.textString13,this.textString14,this.textString15];
         super();
         this._bf9057 = param1;
         this._dv13168 = this._bf9057.view;
         this._yj3561 = param2;
         if(param2.time > 0)
         {
            count3 = 750 / param2.time;
            this.count2 = 12 / count3;
            this.count3 = 0;
            this._dp15053();
            this.startAnimation();
            this._ep14424();
         }
         else if(this._yj3561._pv818)
         {
            this.count3 = 12;
            this.count1 = 9;
            this.startAnimation();
         }
      }
      
      private function _dp15053() : void
      {
         this.count1 = this._yj3561.orientation;
         var count2:int = this._yj3561.x - 1 * PersonModel._pv8029[0][this.count1];
         var count:int = this._yj3561.y - 1 * PersonModel._pv8029[1][this.count1];
         var count3:Point = SceneType.getPlotXY(new Point(count2,count));
         this._bf9057.x = count3.x;
         this._bf9057.y = count3.y;
      }
      
      public function _wr14763(param1:int, param2:int, param3:int) : void
      {
         this.count3 = 13;
         this.stop();
         this._wg921 = this._dv13168[textString][this.textString15];
         if(param1 > param3)
         {
            if(this._wg921.scaleX < 0)
            {
               this._wg921.scaleX *= -1;
            }
         }
         else if(this._wg921.scaleX > 0)
         {
            this._wg921.scaleX *= -1;
         }
         this._wg921.gotoAndPlay(textString);
      }
      
      private function startAnimation() : void
      {
         this.stop();
         var count2:uint = this.count1 - 1;
         this._wg921 = this._dv13168[textString][this.items[count2]];
         this._wg921.gotoAndPlay(textString);
      }
      
      private function stop() : void
      {
         var count2:int = 0;
         while(count2 < this.items.length)
         {
            if(this._dv13168[textString][this.items[count2]])
            {
               this._dv13168[textString][this.items[count2]].gotoAndStop(OCULTAR);
            }
            count2++;
         }
      }
      
      private function _ep14424() : void
      {
         this._bf9057.x += PersonModel._uh12871[0][this._yj3561.orientation] * PersonModel._dq6303[0][this._yj3561.orientation];
         this._bf9057.y += PersonModel._uh12871[1][this._yj3561.orientation] * PersonModel._dq6303[1][this._yj3561.orientation];
      }
      
      public function loop() : void
      {
         if(this.count3 > 12)
         {
            return;
         }
         ++this.count3;
         if(this.count3 == this.count2)
         {
            if(this._yj3561._pv818)
            {
               this.count1 = 9;
               this.startAnimation();
            }
         }
         else if(this.count3 < this.count2)
         {
            this._ep14424();
         }
      }
   }
}

