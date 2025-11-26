package src.tv.boombang.library.steps
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class StepsEvents extends MovieClip implements Interfaces
   {
      
      protected var count2:Steps;
      
      protected var _hq10369:Function;
      
      public function StepsEvents(param1:Function)
      {
         super();
         this._hq10369 = param1;
      }
      
      protected function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.move();
      }
      
      public function _lt3848(param1:Steps) : void
      {
         param1.addEventListener(Event.COMPLETE,this.loadData,false,0,true);
         this.move();
         this.count2 = param1;
         addChild(this.count2);
      }
      
      private function loadData(param1:StepsView) : void
      {
         this._hq10369((param1.target as Interfaces).id,param1._kj8592,param1.data);
      }
      
      private function move() : void
      {
         if(this.count2)
         {
            this.count2.removeEventListener(Event.COMPLETE,this.loadData);
            this.count2.destroy();
            removeChild(this.count2);
            this.count2 = null;
         }
      }
   }
}

