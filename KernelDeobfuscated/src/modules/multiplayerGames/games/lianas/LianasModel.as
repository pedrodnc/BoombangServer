package src.modules.multiplayerGames.games.lianas
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.enterScene.SceneTransition;
   import src.modules.interfaz.InterfazManager;
   import src.modules.multiplayerGames.MultiplayerGameMechanics;
   import src.modules.multiplayerGames.MultiplayergamesController;
   import src.modules.multiplayerGames.fichas.*;
   import src.modules.multiplayerGames.games.*;
   import src.person.*;
   
   public class LianasModel extends MultiplayerGameMechanics
   {
      
      private static const textString:String = "getClassObject";
      
      private static const count:int = 13;
      
      private static const count1:int = 14;
      
      private static const count2:int = 60;
      
      private static const count3:int = 1000;
      
      private static const count4:int = 100;
      
      private var _bn14384:LianasModel;
      
      private var _ym8891:FichasView;
      
      private var _gr6879:Timer;
      
      private var _qc3441:Timer;
      
      private var _dq1530:MovieClip;
      
      public function LianasModel(param1:MovieClip, param2:MultiplayergamesController, param3:SceneTransition, param4:InterfazManager)
      {
         super(param1,param2,param3,param4);
         _ao1711();
         move();
         hide();
         hide1();
         this._bn14384 = new LianasModel();
         state = count;
         this._yf12156(count1);
         _xw1367.getInstance().stage.addEventListener(MouseEvent.MOUSE_MOVE,this._rb9157);
         this._dq1530 = PersonController._ju6982("BaldosasLianas");
         this._dq1530.visible = false;
         _xw1367.getInstance()._uc3178(this._dq1530,_xw1367.count3);
      }
      
      private function _rb9157(param1:MouseEvent) : void
      {
         var count:SceneType = null;
         if(_lp469 != null)
         {
            count = _lp469._ho5911();
         }
         var count3:Point = SceneType._bi7400(new Point(param1.stageX,param1.stageY));
         var count1:Point = SceneType.getPlotXY(count3);
         this._dq1530.x = count1.x;
         this._dq1530.y = count1.y;
         if(count._jc1693(count3) == SceneModel.count)
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
            case count1:
               return;
            default:
               return;
         }
      }
      
      override public function destroy() : void
      {
         _xw1367.getInstance().move2(this._dq1530,_xw1367.count3);
         _xw1367.getInstance().stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._rb9157);
         _wk1743();
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
         _wx10678();
         this.move();
      }
      
      private function move() : void
      {
         if(this._gr6879 != null)
         {
            this._gr6879.removeEventListener(TimerEvent.TIMER,this.destroy);
         }
      }
      
      private function move1() : void
      {
         if(this._qc3441 != null)
         {
            this._qc3441.removeEventListener(TimerEvent.TIMER,this._rj10719);
         }
      }
      
      override public function start() : void
      {
         this._qc3441 = new Timer(count3,0);
         this._qc3441.start();
         this._qc3441.addEventListener(TimerEvent.TIMER,this._rj10719);
      }
      
      private function _rj10719(param1:TimerEvent) : void
      {
      }
      
      override public function _yf12156(param1:int) : void
      {
         var count:* = undefined;
         super._yf12156(param1);
         switch(param1)
         {
            case count1:
               return;
            case count2:
               count = _lg13977;
               count[textString5]();
               _wk1743();
               return;
            case count3:
               this.move1();
               this.start1();
               return;
            case count4:
               this.destroy1();
               return;
            default:
               return;
         }
      }
      
      override public function _py9417(param1:TimerEvent) : void
      {
         super._py9417(param1);
         if(count7 <= 10 && state == count1)
         {
         }
         if(count7 <= 10 && count7 > 0 && state == count1)
         {
         }
      }
      
      override public function _me13018(param1:String) : void
      {
         textString8 = param1;
         this._yf12156(count4);
      }
      
      private function start1() : void
      {
         this._gr6879 = new Timer(count4,1);
         this._gr6879.start();
         this._gr6879.addEventListener(TimerEvent.TIMER,this.destroy);
      }
      
      private function destroy(param1:TimerEvent) : void
      {
         var count:String = null;
         this.move();
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
         if(count9 != -1)
         {
            count = this._bn14384.textString32 + " " + textString7;
         }
         else
         {
            count = this._bn14384.textString33;
         }
         var count3:FichasUtils = new FichasUtils(count,[textString6],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[textString](count),count3);
         this._ym8891.show(GamesModel.count20,GamesModel.count21);
      }
      
      private function _bb8432() : void
      {
         this._ym8891.authenticateUser2();
      }
      
      private function destroy1() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
         var count2:FichasUtils = new FichasUtils("",[textString8],["ok"],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[textString](count1),count2);
         this._ym8891.show(GamesModel.count20,GamesModel.count21);
      }
   }
}

