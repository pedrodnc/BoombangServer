package src.modules.multiplayerGames
{
   import flash.display.MovieClip;
   import src.logs.*;
   import src.modules.ModuleLoader;
   import src.modules.enterScene.SceneTransition;
   import src.modules.interfaz.InterfazManager;
   import src.modules.multiplayerGames.dataGame.*;
   import src.modules.multiplayerGames.games.cocos.*;
   import src.modules.multiplayerGames.games.lianas.*;
   import src.modules.multiplayerGames.games.ring.*;
   import src.modules.multiplayerGames.games.shuriken.*;
   
   public class MultiplayerSession extends MultiplayerLobby
   {
      
      private var _bg10612:MultiplayerGameMechanics;
      
      private var _lg13977:MovieClip;
      
      private var _xx6456:int;
      
      private var enterScene:SceneTransition;
      
      private var _lp469:InterfazManager;
      
      private var _hv390:int;
      
      private var _qo6460:int;
      
      private var position:int;
      
      private var _vo1138:int;
      
      private var _ar6606:int;
      
      private var _ob3192:int;
      
      public function MultiplayerSession(param1:MultiplayergamesController, param2:SceneTransition, param3:MovieClip, param4:InterfazManager)
      {
         super(param1);
         this._lg13977 = param3;
         this.enterScene = param2;
         this._xx6456 = param2._qu12972;
         this._lp469 = param4;
         this._lp469._dc14886._ra3631(false);
         this.start();
      }
      
      override public function loop() : void
      {
         if(this._bg10612 != null)
         {
            this._bg10612.loop();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._bg10612 != null)
         {
            this._bg10612.destroy();
         }
      }
      
      override public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc7_:Array = param1._lv9976;
         var _loc8_:uint = uint(String(_loc7_[1]).charCodeAt(0));
         switch(_loc8_)
         {
            case MultiplayergamesController._fw3416:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new Logs(Logger._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA",param1._lv9976.toString()));
                  return;
               }
               var _loc6_:int = int(param1._lv9976[2]);
               this._bg10612._pv2591(0);
               return;
               break;
            case MultiplayergamesController._dw4538:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new Logs(Logger._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA_GAMEPLAY",param1._lv9976.toString()));
                  return;
               }
               _loc6_ = int(param1._lv9976[2]);
               this._bg10612._gu11268(0);
               return;
               break;
            case MultiplayergamesController._pr10056:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new Logs(Logger._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA_FIN_JUEGO",param1._lv9976.toString()));
                  return;
               }
               _loc6_ = int(param1._lv9976[2]);
               this._bg10612._bp14961(0);
               return;
               break;
            case MultiplayergamesController._jo10076:
               this._bg10612._ny11122();
               return;
            case MultiplayergamesController._lu3692:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new Logs(Logger._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_DESCALIFICAR_USR",param1._lv9976.toString()));
                  return;
               }
               var _loc2_:int = int(param1._lv9976[2]);
               return;
               break;
            case MultiplayergamesController._vl9023:
               if(param1._lv9976.length < 6)
               {
                  logs._kp3815(new Logs(Logger._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_END_GAME",param1._lv9976.toString()));
                  return;
               }
               var _loc3_:int = int(param1._lv9976[2]);
               _loc2_ = int(param1._lv9976[3]);
               var _loc4_:String = param1._lv9976[4];
               var _loc5_:String = param1._lv9976[5];
               this._bg10612._rj8693(0,0,null,null);
               return;
               break;
            case MultiplayergamesController._fs14835:
               this._bg10612._ge13177();
               return;
            case MultiplayergamesController._qy11845:
               this._bg10612._wr2590(0);
               return;
            case MultiplayergamesController._xd6971:
               this._bg10612._bh436();
               return;
            case MultiplayergamesController._hf10378:
               this._bg10612._wb9197();
               return;
            case MultiplayergamesController._at6311:
               this._bg10612._rx14324();
               return;
            case MultiplayergamesController._ih13792:
               this._bg10612._eu7069();
               return;
            case MultiplayergamesController._cf9462:
               switch(param1._lv9976[2].charCodeAt(0))
               {
                  case MultiplayergamesController._ac1096:
               }
               return;
            case MultiplayergamesController._fa2209:
               switch(param1._lv9976[2].charCodeAt(0))
               {
                  case MultiplayergamesController._jy5145:
                     this._hv390 = int(param1._lv9976[3]);
                     this._qo6460 = int(param1._lv9976[4]);
                     this.position = int(param1._lv9976[5]);
                     (this._bg10612 as ShurikenUtils)._fi10318(this._hv390,this._qo6460,this.position);
                     break;
                  case MultiplayergamesController._xf3515:
                     this._hv390 = int(param1._lv9976[3]);
                     (this._bg10612 as ShurikenUtils)._lr131(this._hv390);
                     break;
                  case MultiplayergamesController._ir3761:
                     this._vo1138 = int(param1._lv9976[3]);
                     this._hv390 = int(param1._lv9976[4]);
                     this._ar6606 = int(param1._lv9976[5]);
                     this._ob3192 = int(param1._lv9976[6]);
                     (this._bg10612 as ShurikenUtils)._in5812(this._vo1138,this._hv390,this._ar6606,this._ob3192);
               }
               return;
            case MultiplayergamesController._rb6849:
               switch(param1._lv9976[2])
               {
                  case MultiplayergamesController._ia2599:
               }
               return;
            case MultiplayergamesController._bt15137:
               this._bg10612._me13018(param1._lv9976[2]);
               return;
            default:
               return;
         }
      }
      
      public function start() : void
      {
         switch(this._xx6456)
         {
            case DatagameModel._hx13454:
               this._bg10612 = new RingUtils(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            case DatagameModel._qf5633:
               this._bg10612 = new CocosUtils(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            case DatagameModel._de12066:
               this._bg10612 = new LianasModel(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            case DatagameModel._ik10140:
               this._bg10612 = new ShurikenUtils(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            default:
               return;
         }
      }
   }
}

