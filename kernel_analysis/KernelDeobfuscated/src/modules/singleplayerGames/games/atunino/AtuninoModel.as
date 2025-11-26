package src.modules.singleplayerGames.games.atunino
{
   import flash.display.*;
   import src.allData.*;
   import src.events.*;
   import src.modules.singleplayerGames.*;
   import src.modules.singleplayerGames.games.GamesController;
   
   public class AtuninoModel extends GamesController
   {
      
      public static const count10:int = 156;
      
      public static const count11:int = 53;
      
      public function AtuninoModel(param1:MovieClip)
      {
         super(param1);
         this.init();
      }
      
      override public function init() : void
      {
         _jm390.stage.frameRate = 30;
         this._ef2831();
         this.show();
         var count2:int = UserSession.getInstance().count1 - 1;
         var count:Array = UserSession.getInstance().colors.colors;
         this.initialize(count2,count);
         this.addListeners();
      }
      
      override public function initialize(param1:int, param2:Array) : void
      {
         _jm390.init(param1,param2);
      }
      
      override public function comenzarJuego(param1:Object) : void
      {
         _jm390.comenzarJuego(param1);
      }
      
      override public function _nc2597(param1:Object) : void
      {
         _jm390.comenzarNivelRespuesta(param1);
      }
      
      override public function _ha2745(param1:Object) : void
      {
         _jm390.terminarNivelRespuesta(param1);
      }
      
      override public function terminarJuego(param1:Object) : void
      {
         _jm390.terminarJuego(param1);
      }
      
      override public function _xv11864(param1:Object) : void
      {
         _jm390.perderVidaRespuesta(param1);
      }
      
      override public function _kj11324(param1:Object) : void
      {
         _jm390.recogerItemRespuesta(param1);
      }
      
      override public function destroy() : void
      {
         _jm390.stage.frameRate = 16;
         this.removeListeners();
      }
      
      override protected function addListeners() : void
      {
         _jm390.addEventListener(Singleplayergames.textString,this._ia11998);
         _jm390.addEventListener(Singleplayergames.textString1,this._ia11998);
         _jm390.addEventListener(Singleplayergames.textString3,this._ia11998);
         _jm390.addEventListener(Singleplayergames.textString4,this._ia11998);
         _jm390.addEventListener(Singleplayergames.textString2,this._ia11998);
         _jm390.addEventListener(Singleplayergames.textString5,this._ia11998);
         _jm390.addEventListener(Singleplayergames.textString6,this._ia11998);
      }
      
      override protected function removeListeners() : void
      {
         _jm390.removeEventListener(Singleplayergames.textString,this._ia11998);
         _jm390.removeEventListener(Singleplayergames.textString1,this._ia11998);
         _jm390.removeEventListener(Singleplayergames.textString3,this._ia11998);
         _jm390.removeEventListener(Singleplayergames.textString4,this._ia11998);
         _jm390.removeEventListener(Singleplayergames.textString2,this._ia11998);
         _jm390.removeEventListener(Singleplayergames.textString5,this._ia11998);
         _jm390.removeEventListener(Singleplayergames.textString6,this._ia11998);
      }
      
      override protected function _ef2831() : void
      {
         _jm390.x = count10;
         _jm390.y = count11;
      }
      
      private function show() : void
      {
         var count2:Sprite = null;
         count2 = new Sprite();
         count2.graphics.lineStyle(1,0,0);
         count2.graphics.beginFill(16711680,0.5);
         count2.graphics.drawRect(0,0,700,500);
         count2.graphics.endFill();
         count2.x = count10;
         count2.y = count11;
         DisplayObjectContainer(_jm390.parent).addChild(count2);
         _jm390.mask = count2;
      }
      
      private function _ia11998(param1:*) : void
      {
         var count:EventsModel = null;
         switch(param1.type)
         {
            case Singleplayergames.textString:
               count = new EventsModel(Singleplayergames.textString);
               dispatchEvent(count);
               return;
            case Singleplayergames.textString1:
               count = new EventsModel(Singleplayergames.textString1);
               count.data = param1.data;
               dispatchEvent(count);
               return;
            case Singleplayergames.textString2:
               count = new EventsModel(Singleplayergames.textString2);
               count.data = param1.data;
               dispatchEvent(count);
               return;
            case Singleplayergames.textString3:
               count = new EventsModel(Singleplayergames.textString3);
               count.data = param1.data;
               dispatchEvent(count);
               return;
            case Singleplayergames.textString4:
               count = new EventsModel(Singleplayergames.textString4);
               count.data = param1.data;
               dispatchEvent(count);
               return;
            case Singleplayergames.textString5:
               count = new EventsModel(Singleplayergames.textString5);
               count.data = param1.data;
               dispatchEvent(count);
               return;
            case Singleplayergames.textString6:
               count = new EventsModel(Singleplayergames.textString6);
               count.data = param1.data;
               dispatchEvent(count);
               return;
            default:
               return;
         }
      }
   }
}

