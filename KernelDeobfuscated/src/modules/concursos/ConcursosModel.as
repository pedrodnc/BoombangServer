package src.modules.concursos
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.allData.scene.typeEscenarios.*;
   
   public class ConcursosModel extends MovieClip
   {
      
      public var _cq9570:MovieClip;
      
      public var count2:int;
      
      public var count1:int;
      
      public var count:int;
      
      public var count1:int;
      
      public var count4:int;
      
      public var count5:int;
      
      public var locz:int;
      
      public var _wo14954:Function;
      
      public var _hy9857:Function;
      
      public var count6:int;
      
      public var _bl11315:SceneType;
      
      private var count7:int;
      
      private var count8:int;
      
      public var _jh10522:MovieClip;
      
      public var count9:int;
      
      public function ConcursosModel(param1:SceneType, param2:MovieClip, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Function, param10:Function)
      {
         super();
         this._bl11315 = param1;
         this._cq9570 = param2;
         this.count2 = param3;
         this.count1 = param4;
         this.count = param5;
         this.count1 = param6;
         this.count4 = param7;
         this.count5 = param8;
         this.locz = 0;
         this._wo14954 = param9;
         this._hy9857 = param10;
         addChild(this._cq9570);
         this.init();
      }
      
      public function init() : void
      {
         this.buttonMode = true;
         this._gv9705(this.count,this.count1);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this._eh7040);
      }
      
      public function destroy() : void
      {
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this._eh7040);
      }
      
      public function _gv9705(param1:int, param2:int) : void
      {
         var count3:Point = SceneType.getPlotXY(new Point(param1,param2));
         this.x = count3.x;
         this.y = count3.y;
      }
      
      protected function _eh7040(param1:MouseEvent) : void
      {
         if(this._wo14954 != null)
         {
            this._wo14954(this.count2);
         }
         param1.stopImmediatePropagation();
      }
      
      public function move() : void
      {
         var count:Boolean = false;
         var count3:int = 0;
         var count2:Array = this._cq9570.currentLabels;
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this._eh7040);
         this.mouseEnabled = false;
         this.buttonMode = false;
         while(count3 < count2.length)
         {
            if(count2[count3].name == "pickup")
            {
               count = true;
               break;
            }
            count3++;
         }
         if(count)
         {
            this._cq9570.gotoAndPlay("pickup");
            this.count8 = getTimer() + 5000;
         }
         else
         {
            this.count8 = getTimer();
         }
         this.count9 = 10;
         this.addEventListener(Event.ENTER_FRAME,this.move1);
      }
      
      private function move1(param1:Event) : void
      {
         if(getTimer() > this.count8)
         {
            --this.count9;
            if(this.count9 <= 0)
            {
               this._hy9857(this);
               this.removeEventListener(Event.ENTER_FRAME,this.move1);
            }
            else
            {
               this.alpha = 1 - 1 / this.count9;
            }
         }
      }
   }
}

