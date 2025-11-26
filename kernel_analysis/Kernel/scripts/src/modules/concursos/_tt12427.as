package src.modules.concursos
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.allData.scene.typeEscenarios.*;
   import src.utils.*;
   
   public class _tt12427 extends _nb5170
   {
      
      private static const _lk8138:String = "mcObjectRef";
      
      private static const _ed5430:String = "parado";
      
      private static const _bm8664:String = "cayendo";
      
      private static const _gh11001:String = "animGlobo";
      
      private static const _tm15653:String = "static";
      
      private static const _tc12279:String = "anim";
      
      private var _jp16112:int;
      
      private var startTime:int;
      
      private var _su8972:int;
      
      private var _qn13262:int;
      
      private var _ok10754:int;
      
      private var _ki7604:int;
      
      private var _nd2027:Boolean;
      
      public function _tt12427(param1:_il6324, param2:MovieClip, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Function, param10:Function, param11:int)
      {
         this._jp16112 = param11;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         _xv14798._nw2053(param2,_bm8664);
         this._nd2027 = false;
      }
      
      override public function init() : void
      {
         this.startTime = getTimer();
         this._gv9705(_jp13542,_eu7877);
         this._cn5987(null);
         this.addEventListener(Event.ENTER_FRAME,this._cn5987);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.removeEventListener(Event.ENTER_FRAME,this._cn5987);
      }
      
      override public function _gv9705(param1:int, param2:int) : void
      {
         var _loc3_:Point = _il6324.getPlotXY(new Point(param1,param2));
         this._ok10754 = _loc3_.x;
         this._ki7604 = _loc3_.y;
         this._su8972 = _loc3_.x;
         this._qn13262 = -_cq9570.height;
      }
      
      public function _cn5987(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = int(getTimer());
         if(_loc3_ - this.startTime > this._jp16112)
         {
            if(!this._nd2027)
            {
               this.x = this._ok10754;
               this.y = this._ki7604;
               this.locz = 10;
               this._nd2027 = true;
               _xv14798._nw2053(_cq9570,_gh11001);
            }
         }
         else
         {
            _loc2_ = (_loc3_ - this.startTime) * 100 / this._jp16112;
            this.x = this._ok10754;
            this.y = this._qn13262 + _loc2_ / 100 * (this._ki7604 - this._qn13262);
            this.locz = (this._ki7604 - this.y) * _bl11315._go7360;
         }
      }
   }
}

