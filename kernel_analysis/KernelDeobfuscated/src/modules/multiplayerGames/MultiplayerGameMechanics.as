package src.modules.multiplayerGames
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.*;
   import src.modules.enterScene.SceneTransition;
   import src.modules.interfaz.InterfazManager;
   import src.modules.multiplayerGames.dataGame.*;
   import src.utils.*;
   
   public class MultiplayerGameMechanics
   {
      
      protected static const textString:String = "mcCuentaRegresiva";
      
      protected static const textString1:String = "tfCuentaRegresiva";
      
      protected static const textString2:String = "inicio";
      
      protected static const textString3:String = "gamePlay";
      
      protected static const textString4:String = "mcNPC";
      
      protected static const count:int = 0;
      
      protected static const count1:int = 1;
      
      protected static const count2:int = 2;
      
      protected static const count3:int = 3;
      
      protected static const count4:int = 4;
      
      protected static const count5:int = 1;
      
      protected static const count6:int = -1;
      
      protected static const textString5:String = "startGame";
      
      protected var _tv9779:MultiplayergamesController;
      
      protected var _pe10166:Timer;
      
      protected var count7:int;
      
      protected var _ux3229:MovieClip;
      
      protected var _rn5223:MovieClip;
      
      protected var enterScene:SceneTransition;
      
      protected var _lp469:InterfazManager;
      
      protected var _lg13977:MovieClip;
      
      protected var state:int;
      
      protected var count8:int;
      
      protected var count9:int;
      
      protected var textString6:String;
      
      protected var textString7:String;
      
      protected var textString8:String;
      
      public function MultiplayerGameMechanics(param1:MovieClip, param2:MultiplayergamesController, param3:SceneTransition, param4:InterfazManager)
      {
         super();
         this._lg13977 = param1;
         this._tv9779 = param2;
         this.enterScene = param3;
         this._lp469 = param4;
         this._ux3229 = param1[textString];
         this.count7 = -1;
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
         this._yf12156(count2);
      }
      
      public function _rj8693(param1:int, param2:int, param3:String, param4:String) : void
      {
         this.count8 = param1;
         this.count9 = param2;
         this.textString7 = param3;
         this.textString6 = param4;
         this._yf12156(count3);
      }
      
      public function start() : void
      {
      }
      
      public function _me13018(param1:String) : void
      {
      }
      
      public function _ao1711() : void
      {
         this._rn5223 = this._lg13977[textString4];
         if(this._rn5223 != null)
         {
            this._rn5223.visible = true;
         }
      }
      
      public function _wx10678() : void
      {
         this._rn5223 = this._lg13977[textString4];
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
         _xw1367.getInstance()._uc3178(this._ux3229,_xw1367.count5);
         StringUtils.stop(this._ux3229,"start");
         this.count7 = param1;
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
         _xw1367.getInstance().move2(this._ux3229,_xw1367.count5);
         if(this._pe10166 != null)
         {
            this._pe10166.removeEventListener(TimerEvent.TIMER,this._py9417);
         }
         this.count7 = -1;
      }
      
      public function _py9417(param1:TimerEvent) : void
      {
         --this.count7;
         if(this.count7 < 0)
         {
            this._wk1743();
         }
         var count:TextField = TextField(this._ux3229[textString1]);
         if(count != null)
         {
            UtilsUtils._xl9503(count,String(this.count7));
         }
      }
      
      public function _ef4261(param1:int) : void
      {
         this.count7 = param1;
      }
      
      public function _pv2591(param1:int) : void
      {
         this.count7 = param1;
         this._oq5377(param1,DatagameModel._mr9092);
         if(this.count7 != -1)
         {
            this._ef4261(param1);
         }
      }
      
      public function _bp14961(param1:int) : void
      {
         if(this.count7 == -1)
         {
            this._oq5377(param1,DatagameModel._kp13954);
         }
         else
         {
            this._ef4261(param1);
         }
      }
      
      public function _gu11268(param1:int) : void
      {
         if(this.count7 == -1)
         {
            this._oq5377(param1,DatagameModel._gh841);
         }
         else
         {
            this._ef4261(param1);
         }
      }
      
      public function show() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioShowSigno();
      }
      
      public function hide() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioHideSigno();
      }
      
      public function show1() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioShowMonedas();
      }
      
      public function hide1() : void
      {
         BaseEscenarioMultiplayerGames(this._lg13977)._BaseEscenarioHideMonedas();
      }
      
      public function move(param1:int = 0) : void
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

