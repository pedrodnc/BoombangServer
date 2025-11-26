package src.modules.multiplayerGames
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.*;
   import src.modules.enterScene._yc4848;
   import src.modules.interfaz._je14031;
   import src.modules.multiplayerGames.dataGame.*;
   import src.utils.*;
   
   public class _hv11591
   {
      
      protected static const _kn10071:String = "mcCuentaRegresiva";
      
      protected static const _ec4925:String = "tfCuentaRegresiva";
      
      protected static const _fr11022:String = "inicio";
      
      protected static const _gi6320:String = "gamePlay";
      
      protected static const _jw12499:String = "mcNPC";
      
      protected static const _ul15971:int = 0;
      
      protected static const _us1603:int = 1;
      
      protected static const _ta3481:int = 2;
      
      protected static const _bm12345:int = 3;
      
      protected static const _qi10890:int = 4;
      
      protected static const _se10575:int = 1;
      
      protected static const _dg5995:int = -1;
      
      protected static const _bl10723:String = "startGame";
      
      protected var _tv9779:_xl8523;
      
      protected var _pe10166:Timer;
      
      protected var _qd10711:int;
      
      protected var _ux3229:MovieClip;
      
      protected var _rn5223:MovieClip;
      
      protected var enterScene:_yc4848;
      
      protected var _lp469:_je14031;
      
      protected var _lg13977:MovieClip;
      
      protected var state:int;
      
      protected var _aq7614:int;
      
      protected var _qf10772:int;
      
      protected var _me8365:String;
      
      protected var _tb7995:String;
      
      protected var _ea9884:String;
      
      public function _hv11591(param1:MovieClip, param2:_xl8523, param3:_yc4848, param4:_je14031)
      {
         super();
         this._lg13977 = param1;
         this._tv9779 = param2;
         this.enterScene = param3;
         this._lp469 = param4;
         this._ux3229 = param1[_kn10071];
         this._qd10711 = -1;
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function _yf12156(param1:int) : void
      {
         this.state = param1;
      }
      
      public function _ny11122() : void
      {
         this._yf12156(_ta3481);
      }
      
      public function _rj8693(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._aq7614 = param1;
         this._qf10772 = param2;
         this._tb7995 = param3;
         this._me8365 = param4;
         this._yf12156(_bm12345);
      }
      
      public function _ge13177() : void
      {
      }
      
      public function _me13018(param1:String) : void
      {
      }
      
      public function _ao1711() : void
      {
         this._rn5223 = this._lg13977[_jw12499];
         if(this._rn5223 != null)
         {
            this._rn5223.visible = true;
         }
      }
      
      public function _wx10678() : void
      {
         this._rn5223 = this._lg13977[_jw12499];
         if(this._rn5223 != null)
         {
            this._rn5223.visible = false;
         }
      }
      
      public function _oq5377(param1:int, param2:String) : void
      {
         if(this._ux3229 == null)
         {
            return;
         }
         _xw1367.getInstance()._uc3178(this._ux3229,_xw1367._wa4051);
         _xv14798._nw2053(this._ux3229,"start");
         this._qd10711 = param1;
         this._py9417(null);
         if(this._pe10166 != null)
         {
            this._pe10166.removeEventListener(TimerEvent.TIMER,this._py9417);
         }
         this._pe10166 = new Timer(1000,0);
         this._pe10166.start();
         this._pe10166.addEventListener(TimerEvent.TIMER,this._py9417);
      }
      
      public function _wk1743() : void
      {
         if(this._ux3229 == null)
         {
            return;
         }
         _xw1367.getInstance()._na10792(this._ux3229,_xw1367._wa4051);
         if(this._pe10166 != null)
         {
            this._pe10166.removeEventListener(TimerEvent.TIMER,this._py9417);
         }
         this._qd10711 = -1;
      }
      
      public function _py9417(param1:TimerEvent) : void
      {
         --this._qd10711;
         if(this._qd10711 < 0)
         {
            this._wk1743();
         }
         var _loc2_:TextField = TextField(this._ux3229[_ec4925]);
         if(_loc2_ != null)
         {
            _yq8362._xl9503(_loc2_,String(this._qd10711));
         }
      }
      
      public function _ef4261(param1:int) : void
      {
         this._qd10711 = param1;
      }
      
      public function _pv2591(param1:int) : void
      {
         this._qd10711 = param1;
         this._oq5377(param1,_tl2274._mr9092);
         if(this._qd10711 != -1)
         {
            this._ef4261(param1);
         }
      }
      
      public function _bp14961(param1:int) : void
      {
         if(this._qd10711 == -1)
         {
            this._oq5377(param1,_tl2274._kp13954);
         }
         else
         {
            this._ef4261(param1);
         }
      }
      
      public function _gu11268(param1:int) : void
      {
         if(this._qd10711 == -1)
         {
            this._oq5377(param1,_tl2274._gh841);
         }
         else
         {
            this._ef4261(param1);
         }
      }
      
      public function _dw1258() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioShowSigno();
      }
      
      public function _en7017() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioHideSigno();
      }
      
      public function _kp1960() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioShowMonedas();
      }
      
      public function _bi15407() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioHideMonedas();
      }
      
      public function _kk15414(param1:int = 0) : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioRepositionNPC(param1);
      }
      
      public function _wr2590(param1:int) : void
      {
      }
      
      public function _bh436() : void
      {
      }
      
      public function _wb9197() : void
      {
      }
      
      public function _rx14324() : void
      {
      }
      
      public function _eu7069() : void
      {
      }
   }
}

