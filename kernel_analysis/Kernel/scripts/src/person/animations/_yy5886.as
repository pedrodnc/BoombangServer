package src.person.animations
{
   import flash.display.MovieClip;
   import src.allData.scene.typeEscenarios._il6324;
   import src.person._um8624;
   
   public class _yy5886 extends _je4353
   {
      
      private static const _su13233:String = "play";
      
      private static const _de3094:String = "stop";
      
      private var _py12901:MovieClip;
      
      public function _yy5886(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:int, param6:Function, param7:MovieClip)
      {
         this._py12901 = param7;
         super(param1,param3,param4,param5,param6);
      }
      
      override public function init(param1:Boolean = false) : void
      {
         super.init(true);
         this._py12901.gotoAndPlay(_su13233);
      }
      
      override public function loop() : void
      {
         this._dx13345();
      }
      
      override protected function _dx13345() : Boolean
      {
         if(this._py12901.currentFrame == this._py12901.totalFrames)
         {
            if(_fq11131 != null)
            {
               _fq11131(_xf12113);
            }
            return true;
         }
         return false;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._py12901.gotoAndStop(_de3094);
      }
   }
}

