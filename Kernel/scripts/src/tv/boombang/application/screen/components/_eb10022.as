package src.tv.boombang.application.screen.components
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.*;
   import flash.utils.*;
   
   public class _eb10022 extends MovieClip
   {
      
      public static const _gv14471:String = "SEQUENCECOMPLETED";
      
      public static const LEFT:String = "DirectionLeft";
      
      public static const RIGHT:String = "DirectionRight";
      
      public static const UP:String = "DirectionUp";
      
      public static const DOWN:String = "DirectionDown";
      
      private var _asset:Sprite;
      
      private var _xo6614:MovieClip;
      
      private var _time:int;
      
      private var _jo5786:int;
      
      private var _direction:String;
      
      private var _ty15544:int;
      
      private var _er11167:Number;
      
      private var _us13282:Number;
      
      private var _ab14165:Boolean;
      
      private var _qu8290:int = 0;
      
      private var _hl8168:Timer;
      
      public function _eb10022(param1:MovieClip, param2:Sprite, param3:int, param4:int, param5:int, param6:String = "", param7:Number = 0, param8:Number = 0, param9:Boolean = true)
      {
         super();
         if(param6 == "")
         {
            param6 = LEFT;
         }
         this._xo6614 = param1;
         this._asset = param2;
         this._jo5786 = param4;
         this._direction = param6;
         this._time = param3;
         this._ty15544 = param5;
         this._er11167 = param7;
         this._us13282 = param8;
         this._ab14165 = param9;
         this._xo6614.addChild(this._asset);
         this._asset.x = this._er11167;
         this._asset.y = this._us13282;
         this._hl8168 = new Timer(this._time);
         this._hl8168.addEventListener(TimerEvent.TIMER,this._fl14330);
         this._hl8168.start();
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._hl8168.stop();
         this._hl8168.removeEventListener(TimerEvent.TIMER,this._fl14330);
         this._hl8168 = null;
      }
      
      private function _fl14330(param1:TimerEvent) : void
      {
         this._qu8290 += 1;
         if(this._qu8290 <= this._jo5786)
         {
            switch(this._direction)
            {
               case LEFT:
                  this._asset.x = this._er11167 - this._qu8290 * this._ty15544;
                  break;
               case RIGHT:
                  this._asset.x = this._er11167 + this._qu8290 * this._ty15544;
                  break;
               case UP:
                  this._asset.y = this._us13282 - this._qu8290 * this._ty15544;
                  break;
               case DOWN:
                  this._asset.y = this._us13282 + this._qu8290 * this._ty15544;
            }
            this._hl8168.start();
         }
         else
         {
            if(this._ab14165)
            {
               this._xo6614.removeChild(this._asset);
            }
            this.destroy();
            dispatchEvent(new Event(_gv14471));
         }
      }
   }
}

