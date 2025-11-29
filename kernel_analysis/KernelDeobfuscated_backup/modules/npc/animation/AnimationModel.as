package src.modules.npc.animation
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.npc.typeNpc._fh2602;
   import src.person.*;
   import src.tv.boombang.core.datatypes.movement._ww13428;
   
   public class _fg3665 extends MovieClip
   {
      
      private static var _bb675:String = "mcNPC";
      
      private static const OCULTAR:String = "Ocultar";
      
      private static const _fo1524:String = "Animar";
      
      private static const END:String = "End";
      
      private static const _uw2793:Number = 1000;
      
      private const _tb13870:String = "mcDDI";
      
      private const _qt7751:String = "mcD";
      
      private const _cf5473:String = "mcDDD";
      
      private const _nj11669:String = "mcIzq";
      
      private const _gb12956:String = "mcO";
      
      private const _th13425:String = "mcDer";
      
      private const _km12685:String = "mcDAI";
      
      private const _uh11647:String = "mcA";
      
      private const _ja1411:String = "mcDAD";
      
      private const _xe1796:String = "mcAnim1";
      
      private const _bb1674:String = "mcAnim2";
      
      private const _ya3799:String = "mcAnim3";
      
      private const _mq7451:String = "mcAnim4";
      
      private const _ex16017:String = "punch";
      
      private var _ew14419:Array;
      
      private var _wg921:MovieClip;
      
      private var _bc2670:Number;
      
      private var _bf9057:_fh2602;
      
      private var _dv13168:MovieClip;
      
      private var _yj3561:_ww13428;
      
      private var _oy6853:Number;
      
      private var _ri13600:Number;
      
      private var _qs2931:Number;
      
      private var _qw4039:Number;
      
      private var _xp6215:Number = 0;
      
      public function _fg3665(param1:_fh2602, param2:_ww13428)
      {
         var _loc3_:Number = NaN;
         this._ew14419 = [this._th13425,this._nj11669,this._qt7751,this._uh11647,this._cf5473,this._tb13870,this._ja1411,this._km12685,this._gb12956,this._xe1796,this._bb1674,this._ya3799,this._mq7451,this._ex16017];
         super();
         this._bf9057 = param1;
         this._dv13168 = this._bf9057.view;
         this._yj3561 = param2;
         if(param2.time > 0)
         {
            _loc3_ = 750 / param2.time;
            this._oy6853 = 12 / _loc3_;
            this._ri13600 = 0;
            this._dp15053();
            this.startAnimation();
            this._ep14424();
         }
         else if(this._yj3561._pv818)
         {
            this._ri13600 = 12;
            this._bc2670 = 9;
            this.startAnimation();
         }
      }
      
      private function _dp15053() : void
      {
         this._bc2670 = this._yj3561.orientation;
         var _loc1_:int = this._yj3561.x - 1 * _ga7956._pv8029[0][this._bc2670];
         var _loc2_:int = this._yj3561.y - 1 * _ga7956._pv8029[1][this._bc2670];
         var _loc3_:Point = _il6324.getPlotXY(new Point(_loc1_,_loc2_));
         this._bf9057.x = _loc3_.x;
         this._bf9057.y = _loc3_.y;
      }
      
      public function _wr14763(param1:int, param2:int, param3:int) : void
      {
         this._ri13600 = 13;
         this._qf2950();
         this._wg921 = this._dv13168[_bb675][this._ex16017];
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
         this._wg921.gotoAndPlay(_fo1524);
      }
      
      private function startAnimation() : void
      {
         this._qf2950();
         var _loc1_:uint = this._bc2670 - 1;
         this._wg921 = this._dv13168[_bb675][this._ew14419[_loc1_]];
         this._wg921.gotoAndPlay(_fo1524);
      }
      
      private function _qf2950() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._ew14419.length)
         {
            if(this._dv13168[_bb675][this._ew14419[_loc1_]])
            {
               this._dv13168[_bb675][this._ew14419[_loc1_]].gotoAndStop(OCULTAR);
            }
            _loc1_++;
         }
      }
      
      private function _ep14424() : void
      {
         this._bf9057.x += _ga7956._uh12871[0][this._yj3561.orientation] * _ga7956._dq6303[0][this._yj3561.orientation];
         this._bf9057.y += _ga7956._uh12871[1][this._yj3561.orientation] * _ga7956._dq6303[1][this._yj3561.orientation];
      }
      
      public function loop() : void
      {
         if(this._ri13600 > 12)
         {
            return;
         }
         ++this._ri13600;
         if(this._ri13600 == this._oy6853)
         {
            if(this._yj3561._pv818)
            {
               this._bc2670 = 9;
               this.startAnimation();
            }
         }
         else if(this._ri13600 < this._oy6853)
         {
            this._ep14424();
         }
      }
   }
}

