package src.modules.multiplayerGames.games.ring
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.modules.enterScene.SceneTransition;
   import src.modules.interfaz.InterfazManager;
   import src.modules.multiplayerGames.MultiplayerGameMechanics;
   import src.modules.multiplayerGames.MultiplayergamesController;
   import src.modules.multiplayerGames.fichas.*;
   import src.modules.multiplayerGames.games.*;
   
   public class RingUtils extends MultiplayerGameMechanics
   {
      
      private static const _ib5392:String = "getClassObject";
      
      private static const _ma12651:int = 13;
      
      private static const _dm2064:int = 14;
      
      private static const _rm12450:int = 60;
      
      private static const _jb1157:int = 1000;
      
      private static const _gy10778:int = 5000;
      
      protected static const _ie11406:String = "boingShort";
      
      protected static const _ak15399:String = "boingLargo";
      
      protected static const _ve16063:String = "flipViejo";
      
      private var _bn14384:RingModel;
      
      private var _ym8891:FichasView;
      
      private var _gr6879:Timer;
      
      private var _qc3441:Timer;
      
      public function RingUtils(param1:MovieClip, param2:MultiplayergamesController, param3:SceneTransition, param4:InterfazManager)
      {
         super(param1,param2,param3,param4);
         _ao1711();
         this._bn14384 = new RingModel();
         state = _ul15971;
         this._yf12156(_us1603);
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
         var _loc2_:* = _lg13977;
         _loc2_[_ie11406]();
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
               _wx10678();
               return;
            case _bm12345:
               this._es5111();
               this._xm6416();
               _loc2_ = _lg13977;
               _loc2_[_ak15399]();
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
         var _loc2_:* = undefined;
         super._py9417(param1);
         if(_qd10711 <= 10 && state == _us1603)
         {
            _wx10678();
         }
         if(_qd10711 <= 10 && _qd10711 > 0 && state == _us1603)
         {
            _loc2_ = _lg13977;
            _loc2_[_ie11406]();
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
         var _loc3_:FichasUtils = new FichasUtils(_loc2_,[_me8365],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[_ib5392](_ma12651),_loc3_);
         this._ym8891._db5584(GamesModel._xo4658,GamesModel._sw8559);
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
         var _loc1_:FichasUtils = new FichasUtils("",[_ea9884],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[_ib5392](_dm2064),_loc1_);
         this._ym8891._db5584(GamesModel._xo4658,GamesModel._sw8559);
      }
   }
}

