package src.modules.multiplayerGames.games.lianas
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.enterScene._yc4848;
   import src.modules.interfaz._je14031;
   import src.modules.multiplayerGames._hv11591;
   import src.modules.multiplayerGames._xl8523;
   import src.modules.multiplayerGames.fichas.*;
   import src.modules.multiplayerGames.games.*;
   import src.person.*;
   
   public class _vu1787 extends _hv11591
   {
      
      private static const _ib5392:String = "getClassObject";
      
      private static const _ma12651:int = 13;
      
      private static const _dm2064:int = 14;
      
      private static const _rm12450:int = 60;
      
      private static const _jb1157:int = 1000;
      
      private static const _gy10778:int = 100;
      
      private var _bn14384:_jx4488;
      
      private var _ym8891:_de2080;
      
      private var _gr6879:Timer;
      
      private var _qc3441:Timer;
      
      private var _dq1530:MovieClip;
      
      public function _vu1787(param1:MovieClip, param2:_xl8523, param3:_yc4848, param4:_je14031)
      {
         super(param1,param2,param3,param4);
         _ao1711();
         _kk15414();
         _en7017();
         _bi15407();
         this._bn14384 = new _jx4488();
         state = _ul15971;
         this._yf12156(_us1603);
         _xw1367.getInstance().stage.addEventListener(MouseEvent.MOUSE_MOVE,this._rb9157);
         this._dq1530 = _xr3315._ju6982("BaldosasLianas");
         this._dq1530.visible = false;
         _xw1367.getInstance()._uc3178(this._dq1530,_xw1367._jf1741);
      }
      
      private function _rb9157(param1:MouseEvent) : void
      {
         var _loc2_:_il6324 = null;
         if(_lp469 != null)
         {
            _loc2_ = _lp469._ho5911();
         }
         var _loc3_:Point = _il6324._bi7400(new Point(param1.stageX,param1.stageY));
         var _loc4_:Point = _il6324.getPlotXY(_loc3_);
         this._dq1530.x = _loc4_.x;
         this._dq1530.y = _loc4_.y;
         if(_loc2_._jc1693(_loc3_) == _mc137._ew12008)
         {
            this._dq1530.visible = false;
         }
         else
         {
            this._dq1530.visible = true;
         }
      }
      
      override public function loop() : void
      {
         switch(state)
         {
            case _us1603:
               return;
            default:
               return;
         }
      }
      
      override public function destroy() : void
      {
         _xw1367.getInstance()._na10792(this._dq1530,_xw1367._jf1741);
         _xw1367.getInstance().stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._rb9157);
         _wk1743();
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
         _wx10678();
         this._pn1902();
      }
      
      private function _pn1902() : void
      {
         if(this._gr6879 != null)
         {
            this._gr6879.removeEventListener(TimerEvent.TIMER,this._qr12057);
         }
      }
      
      private function _es5111() : void
      {
         if(this._qc3441 != null)
         {
            this._qc3441.removeEventListener(TimerEvent.TIMER,this._rj10719);
         }
      }
      
      override public function _ge13177() : void
      {
         this._qc3441 = new Timer(_jb1157,0);
         this._qc3441.start();
         this._qc3441.addEventListener(TimerEvent.TIMER,this._rj10719);
      }
      
      private function _rj10719(param1:TimerEvent) : void
      {
      }
      
      override public function _yf12156(param1:int) : void
      {
         var _loc2_:* = undefined;
         super._yf12156(param1);
         switch(param1)
         {
            case _us1603:
               return;
            case _ta3481:
               _loc2_ = _lg13977;
               _loc2_[_bl10723]();
               _wk1743();
               return;
            case _bm12345:
               this._es5111();
               this._xm6416();
               return;
            case _qi10890:
               this._ab8633();
               return;
            default:
               return;
         }
      }
      
      override public function _py9417(param1:TimerEvent) : void
      {
         super._py9417(param1);
         if(_qd10711 <= 10 && state == _us1603)
         {
         }
         if(_qd10711 <= 10 && _qd10711 > 0 && state == _us1603)
         {
         }
      }
      
      override public function _me13018(param1:String) : void
      {
         _ea9884 = param1;
         this._yf12156(_qi10890);
      }
      
      private function _xm6416() : void
      {
         this._gr6879 = new Timer(_gy10778,1);
         this._gr6879.start();
         this._gr6879.addEventListener(TimerEvent.TIMER,this._qr12057);
      }
      
      private function _qr12057(param1:TimerEvent) : void
      {
         var _loc2_:String = null;
         this._pn1902();
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
         if(_qf10772 != -1)
         {
            _loc2_ = this._bn14384._ri13389 + " " + _tb7995;
         }
         else
         {
            _loc2_ = this._bn14384._bq12462;
         }
         var _loc3_:_ej7116 = new _ej7116(_loc2_,[_me8365],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new _de2080(_lg13977[_ib5392](_ma12651),_loc3_);
         this._ym8891._db5584(_va9562._xo4658,_va9562._sw8559);
      }
      
      private function _bb8432() : void
      {
         this._ym8891._hu12389();
      }
      
      private function _ab8633() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
         var _loc1_:_ej7116 = new _ej7116("",[_ea9884],["ok"],[this._bb8432]);
         this._ym8891 = new _de2080(_lg13977[_ib5392](_dm2064),_loc1_);
         this._ym8891._db5584(_va9562._xo4658,_va9562._sw8559);
      }
   }
}

