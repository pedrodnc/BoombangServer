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
      
      private var count3:int;
      
      private var enterScene:SceneTransition;
      
      private var _lp469:InterfazManager;
      
      private var count1:int;
      
      private var count1:int;
      
      private var position:int;
      
      private var count3:int;
      
      private var count4:int;
      
      private var count5:int;
      
      public function MultiplayerSession(param1:MultiplayergamesController, param2:SceneTransition, param3:MovieClip, param4:InterfazManager)
      {
         super(param1);
         this._lg13977 = param3;
         this.enterScene = param2;
         this.count3 = param2._qu12972;
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
      
      override public function authenticateUser(param1:ModuleLoader) : void
      {
         var items:Array = param1.items;
         var count8:uint = uint(String(items[1]).charCodeAt(0));
         switch(count8)
         {
            case MultiplayergamesController.count5:
               if(param1.items.length < 3)
               {
                  logs._kp3815(new Logs(Logger.count2,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA",param1.items.toString()));
                  return;
               }
               var count7:int = int(param1.items[2]);
               this._bg10612._pv2591(0);
               return;
               break;
            case MultiplayergamesController.count10:
               if(param1.items.length < 3)
               {
                  logs._kp3815(new Logs(Logger.count2,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA_GAMEPLAY",param1.items.toString()));
                  return;
               }
               count7 = int(param1.items[2]);
               this._bg10612._gu11268(0);
               return;
               break;
            case MultiplayergamesController.count9:
               if(param1.items.length < 3)
               {
                  logs._kp3815(new Logs(Logger.count2,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA_FIN_JUEGO",param1.items.toString()));
                  return;
               }
               count7 = int(param1.items[2]);
               this._bg10612._bp14961(0);
               return;
               break;
            case MultiplayergamesController.count6:
               this._bg10612._ny11122();
               return;
            case MultiplayergamesController.count7:
               if(param1.items.length < 3)
               {
                  logs._kp3815(new Logs(Logger.count2,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_DESCALIFICAR_USR",param1.items.toString()));
                  return;
               }
               var count:int = int(param1.items[2]);
               return;
               break;
            case MultiplayergamesController.count8:
               if(param1.items.length < 6)
               {
                  logs._kp3815(new Logs(Logger.count2,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_END_GAME",param1.items.toString()));
                  return;
               }
               var count3:int = int(param1.items[2]);
               count = int(param1.items[3]);
               var count1:String = param1.items[4];
               var count2:String = param1.items[5];
               this._bg10612._rj8693(0,0,null,null);
               return;
               break;
            case MultiplayergamesController.count3:
               this._bg10612.start();
               return;
            case MultiplayergamesController.count11:
               this._bg10612._wr2590(0);
               return;
            case MultiplayergamesController.count12:
               this._bg10612._bh436();
               return;
            case MultiplayergamesController.count13:
               this._bg10612._wb9197();
               return;
            case MultiplayergamesController.count14:
               this._bg10612._rx14324();
               return;
            case MultiplayergamesController.count15:
               this._bg10612._eu7069();
               return;
            case MultiplayergamesController.count16:
               switch(param1.items[2].charCodeAt(0))
               {
                  case MultiplayergamesController.count19:
               }
               return;
            case MultiplayergamesController.count17:
               switch(param1.items[2].charCodeAt(0))
               {
                  case MultiplayergamesController.count20:
                     this.count1 = int(param1.items[3]);
                     this.count1 = int(param1.items[4]);
                     this.position = int(param1.items[5]);
                     (this._bg10612 as ShurikenUtils)._fi10318(this.count1,this.count1,this.position);
                     break;
                  case MultiplayergamesController.count21:
                     this.count1 = int(param1.items[3]);
                     (this._bg10612 as ShurikenUtils)._lr131(this.count1);
                     break;
                  case MultiplayergamesController.count22:
                     this.count3 = int(param1.items[3]);
                     this.count1 = int(param1.items[4]);
                     this.count4 = int(param1.items[5]);
                     this.count5 = int(param1.items[6]);
                     (this._bg10612 as ShurikenUtils)._in5812(this.count3,this.count1,this.count4,this.count5);
               }
               return;
            case MultiplayergamesController.count18:
               switch(param1.items[2])
               {
                  case MultiplayergamesController.count23:
               }
               return;
            case MultiplayergamesController.count4:
               this._bg10612._me13018(param1.items[2]);
               return;
            default:
               return;
         }
      }
      
      public function start() : void
      {
         switch(this.count3)
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

