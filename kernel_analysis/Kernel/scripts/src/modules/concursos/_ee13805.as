package src.modules.concursos
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.allData.scene.typeEscenarios._il6324;
   
   public class _ee13805 extends _nb5170
   {
      
      private var startTime:int;
      
      private var _om9427:int;
      
      private var _sb11478:Number;
      
      public function _ee13805(param1:_il6324, param2:MovieClip, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Function, param10:Function, param11:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this._om9427 = param11;
         if(param11 > 0)
         {
            this._sb11478 = 1000 / (param11 * 16);
         }
         else
         {
            this._sb11478 = 1;
         }
         param2.alpha = 0;
      }
      
      override public function init() : void
      {
         _gv9705(_jp13542,_eu7877);
         this.startTime = getTimer();
         this.addEventListener(Event.ENTER_FRAME,this._kl10801);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.removeEventListener(Event.ENTER_FRAME,this._kl10801);
      }
      
      private function _kl10801(param1:Event) : void
      {
         var _loc2_:int = int(getTimer());
         _cq9570.alpha += this._sb11478;
         if(_loc2_ - this.startTime > this._om9427)
         {
            this.removeEventListener(Event.ENTER_FRAME,this._kl10801);
            _cq9570.alpha = 1;
         }
      }
   }
}

