package src.modules.singleplayerGames
{
   import flash.display.*;
   import src.*;
   import src.modules.singleplayerGames.games.GamesController;
   import src.modules.singleplayerGames.games.atunino.*;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   
   public class Singleplayergames
   {
      
      public static const count:int = 17;
      
      public static const textString:String = "quit";
      
      public static const textString1:String = "comenzar_juego";
      
      public static const textString2:String = "terminar_juego";
      
      public static const textString3:String = "comenzar_nivel";
      
      public static const textString4:String = "terminar_nivel";
      
      public static const textString5:String = "perder_vida";
      
      public static const textString6:String = "recoger_item";
      
      private var _wc7768:SingleplayergamesController;
      
      public var textString7:String;
      
      private var count3:int;
      
      private var count2:int;
      
      private var _dk14093:MovieClip;
      
      private var _jm390:MovieClip;
      
      private var _fo5119:GamesController;
      
      public function Singleplayergames(param1:MovieClip, param2:int)
      {
         super();
         this.count2 = param2;
         this._jm390 = param1;
         this._wc7768 = new SingleplayergamesController();
         this._nd12652();
         this._kr510();
         this.handleSocket();
      }
      
      public function destroy() : void
      {
         this._fo5119.destroy();
         this._wc7768.destroy();
         this._re1781();
      }
      
      private function _nd12652() : void
      {
         this._dk14093 = new MovieClip();
         this._dk14093.addChild(this._jm390);
         _xw1367.getInstance()._uc3178(this._jm390,_xw1367.count4,true);
      }
      
      private function _kr510() : void
      {
         switch(this.count2)
         {
            case count:
               this._fo5119 = new AtuninoModel(this._jm390);
               return;
            default:
               return;
         }
      }
      
      public function _re1781() : void
      {
         this.move();
         _xw1367.getInstance().move2(this._jm390,_xw1367.count4);
      }
      
      private function handleSocket() : void
      {
         this._wc7768.addEventListener(SingleplayergamesEvents.textString,this._mw12671);
         switch(this.count2)
         {
            case count:
               this._fo5119.addEventListener(textString,this._kj11700);
               this._fo5119.addEventListener(textString2,this._kj11700);
               this._fo5119.addEventListener(textString1,this._kj11700);
               this._fo5119.addEventListener(textString3,this._kj11700);
               this._fo5119.addEventListener(textString4,this._kj11700);
               this._fo5119.addEventListener(textString6,this._kj11700);
               this._fo5119.addEventListener(textString5,this._kj11700);
         }
      }
      
      private function move() : void
      {
         switch(this.count2)
         {
            case count:
               this._fo5119.removeEventListener(textString2,this._kj11700);
               this._fo5119.removeEventListener(textString1,this._kj11700);
               this._fo5119.removeEventListener(textString3,this._kj11700);
               this._fo5119.removeEventListener(textString4,this._kj11700);
               this._fo5119.removeEventListener(textString6,this._kj11700);
               this._fo5119.removeEventListener(textString5,this._kj11700);
               return;
            default:
               return;
         }
      }
      
      private function _mw12671(param1:SingleplayergamesEvents) : void
      {
         var count:uint = 0;
         var count3:Object = null;
         var count1:Array = param1.items;
         count = uint(String(count1.shift()).charCodeAt(0));
         switch(count)
         {
            case SingleplayergamesController.count:
               ThunderboltModel.info("response -> crear juego");
               this.count3 = int(count1[1]);
               count3 = new Object();
               count3.lives = int(count1[2]);
               ThunderboltModel.info("*********** lives",count3.lives);
               this._fo5119.comenzarJuego(count3);
               return;
            case SingleplayergamesController.count1:
               ThunderboltModel.info("response -> terminar juego");
               count3 = new Object();
               count3.end_type = SocketManager.getList2(count1[3]);
               count3.total_points = SocketManager.getList2(count1[4]);
               this._fo5119.terminarJuego(count3);
               return;
            case SingleplayergamesController.count2:
               ThunderboltModel.info("response -> comenzar nivel");
               count3 = new Object();
               count3.perlas_tipos = SocketManager.getList2(count1[4]);
               count3.perlas_id = SocketManager.getList2(count1[5]);
               count3.perlas_slots = SocketManager.getList2(count1[6]);
               this._fo5119._nc2597(count3);
               return;
            case SingleplayergamesController.count3:
               ThunderboltModel.info("response -> terminar nivel");
               count3 = new Object();
               count3.level = SocketManager.getList2(count1[2]);
               count3.error = SocketManager.getList2(count1[3]);
               count3.level_points = SocketManager.getList2(count1[4]);
               count3.total_points = SocketManager.getList2(count1[5]);
               this._fo5119._ha2745(count3);
               return;
            case SingleplayergamesController.count4:
               ThunderboltModel.info("response -> perder vida");
               count3 = new Object();
               count3.lives = int(count1[2]);
               count3.vidas_restantes = SocketManager.getList2(count1[2]);
               this._fo5119._xv11864(count3);
               return;
            case SingleplayergamesController.count5:
               ThunderboltModel.info("response -> recoger item");
               count3 = new Object();
               count3.error = SocketManager.getList2(count1[3]);
               count3.item_points = SocketManager.getList2(count1[4]);
               count3.level_points = SocketManager.getList2(count1[5]);
               this._fo5119._kj11324(count3);
               return;
            default:
               return;
         }
      }
      
      private function _kj11700(param1:*) : void
      {
         switch(param1.type)
         {
            case textString:
               this.textString7 = textString;
               return;
            case textString1:
               this._wc7768.handleSocket(this.count2);
               return;
            case textString2:
               this._wc7768.handleSocket3(this.count2,this.count3);
               return;
            case textString3:
               this._wc7768.handleSocket1(this.count2,this.count3,param1.data.level);
               return;
            case textString4:
               this._wc7768.handleSocket2(this.count2,this.count3,param1.data.level,param1.data.bonus);
               return;
            case textString5:
               this._wc7768.handleSocket4(this.count2,this.count3,param1.data.distancia);
               return;
            case textString6:
               this._wc7768.handleSocket5(this.count2,this.count3,param1.data.itemId);
               return;
            default:
               return;
         }
      }
   }
}

