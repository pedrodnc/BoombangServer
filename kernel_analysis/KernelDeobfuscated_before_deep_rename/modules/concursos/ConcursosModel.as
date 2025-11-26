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
      
      public var _hw14129:int;
      
      public var _je4531:int;
      
      public var _jp13542:int;
      
      public var _eu7877:int;
      
      public var _ap5001:int;
      
      public var _go13892:int;
      
      public var locz:int;
      
      public var _wo14954:Function;
      
      public var _hy9857:Function;
      
      public var _jr11615:int;
      
      public var _bl11315:SceneType;
      
      private var _fy822:int;
      
      private var _kh11211:int;
      
      public var _jh10522:MovieClip;
      
      public var _at2116:int;
      
      public function ConcursosModel(param1:SceneType, param2:MovieClip, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Function, param10:Function)
      {
         super();
         this._bl11315 = param1;
         this._cq9570 = param2;
         this._hw14129 = param3;
         this._je4531 = param4;
         this._jp13542 = param5;
         this._eu7877 = param6;
         this._ap5001 = param7;
         this._go13892 = param8;
         this.locz = 0;
         this._wo14954 = param9;
         this._hy9857 = param10;
         addChild(this._cq9570);
         this.init();
      }
      
      public function init() : void
      {
         this.buttonMode = true;
         this._gv9705(this._jp13542,this._eu7877);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this._eh7040);
      }
      
      public function destroy() : void
      {
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this._eh7040);
      }
      
      public function _gv9705(param1:int, param2:int) : void
      {
         var _loc3_:Point = SceneType.getPlotXY(new Point(param1,param2));
         this.x = _loc3_.x;
         this.y = _loc3_.y;
      }
      
      protected function _eh7040(param1:MouseEvent) : void
      {
         if(this._wo14954 != null)
         {
            this._wo14954(this._hw14129);
         }
         param1.stopImmediatePropagation();
      }
      
      public function _kx10106() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc1_:Array = this._cq9570.currentLabels;
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this._eh7040);
         this.mouseEnabled = false;
         this.buttonMode = false;
         while(_loc3_ < _loc1_.length)
         {
            if(_loc1_[_loc3_].name == "pickup")
            {
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            this._cq9570.gotoAndPlay("pickup");
            this._kh11211 = getTimer() + 5000;
         }
         else
         {
            this._kh11211 = getTimer();
         }
         this._at2116 = 10;
         this.addEventListener(Event.ENTER_FRAME,this._ld7935);
      }
      
      private function _ld7935(param1:Event) : void
      {
         if(getTimer() > this._kh11211)
         {
            --this._at2116;
            if(this._at2116 <= 0)
            {
               this._hy9857(this);
               this.removeEventListener(Event.ENTER_FRAME,this._ld7935);
            }
            else
            {
               this.alpha = 1 - 1 / this._at2116;
            }
         }
      }
   }
}

