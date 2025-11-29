package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.*;
   import flash.events.*;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.ui.*;
   import flash.utils.*;
   import src.*;
   import src.modules.enterScene.SceneTransition;
   import src.modules.interfaz.InterfazManager;
   import src.modules.multiplayerGames.MultiplayerGameMechanics;
   import src.modules.multiplayerGames.MultiplayergamesController;
   import src.modules.multiplayerGames.fichas.*;
   import src.modules.multiplayerGames.games.*;
   import src.person.*;
   
   public class ShurikenUtils extends MultiplayerGameMechanics
   {
      
      private static const textString:String = "getClassObject";
      
      private static const textString1:String = "getClassMovieClip";
      
      private static const textString2:String = "getClassSound";
      
      private static const count:int = 13;
      
      private static const count1:int = 14;
      
      private static const textString3:String = "Ninja";
      
      private static const textString4:String = "mcMira";
      
      private static const textString5:String = "RegPoint";
      
      private static const textString6:String = "RegPointsNinjas";
      
      private static const textString7:String = "RegPointsEstrellas";
      
      private static const textString8:String = "RegPointMira";
      
      private static const count2:int = 6;
      
      private static const count3:int = 5;
      
      private static const count2:int = 60;
      
      private static const count3:int = 1000;
      
      private static const count4:int = 2000;
      
      private static const count7:int = 5000;
      
      private static const textString9:String = "MainSound";
      
      private var _li7674:Sound;
      
      private var _te5475:SoundChannel;
      
      private var _bn14384:ShurikenModel;
      
      private var _ym8891:FichasView;
      
      private var _gr6879:Timer;
      
      private var _at13068:Timer;
      
      private var _qc3441:Timer;
      
      private var _gi10147:ShurikenUtils;
      
      private var _jf5704:Shuriken;
      
      private var _xg746:Shuriken;
      
      private var target:MovieClip;
      
      private var _bn15829:_xw1367;
      
      private var items:Array;
      
      private var items1:Array;
      
      public function ShurikenUtils(param1:MovieClip, param2:MultiplayergamesController, param3:SceneTransition, param4:InterfazManager)
      {
         super(param1,param2,param3,param4);
         _ao1711();
         hide();
         hide1();
         this._bn14384 = new ShurikenModel();
         state = count;
         this._yf12156(count1);
         this._bn15829 = _xw1367.getInstance();
         this._jf5704 = new Shuriken(param1);
         this._xg746 = new Shuriken(param1);
         this.items = new Array();
         this.items1 = new Array();
         this._li7674 = param1[textString2](textString9);
         this._te5475 = this._li7674.play(0,1);
         param4._eo12431();
      }
      
      override public function loop() : void
      {
         switch(state)
         {
            case count1:
               return;
            case count2:
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
         this.move();
         this.move2();
         this.move1();
         if(this._gi10147 != null)
         {
            this._gi10147.destroy();
         }
         if(this._jf5704 != null)
         {
            this._jf5704.destroy();
         }
         if(this._xg746 != null)
         {
            this._xg746.destroy();
         }
         this._gi10147 = null;
         this._jf5704 = null;
         this._xg746 = null;
         if(this._te5475 != null)
         {
            this._te5475.stop();
            this._te5475 = null;
         }
         _lp469._wv5374();
      }
      
      private function move() : void
      {
         if(this._gr6879 != null)
         {
            this._gr6879.removeEventListener(TimerEvent.TIMER,this.destroy);
            this._gr6879.stop();
            this._gr6879 = null;
         }
      }
      
      private function move1() : void
      {
         if(this._qc3441 != null)
         {
            this._qc3441.removeEventListener(TimerEvent.TIMER,this._rj10719);
            this._qc3441.stop();
            this._qc3441 = null;
         }
      }
      
      private function move2() : void
      {
         if(this._at13068 != null)
         {
            this._at13068.removeEventListener(TimerEvent.TIMER,this.show);
            this._at13068.stop();
            this._at13068 = null;
         }
      }
      
      public function _fi10318(param1:int, param2:int, param3:int) : void
      {
         this._xg746.destroy(param1);
         _lg13977[textString5 + param3].mouseEnabled = true;
         _lg13977[textString5 + param3].mouseChildren = true;
         this._jf5704._lp5886(param1,param2,param3,_lg13977[textString5 + param3],_tv9779);
      }
      
      public function _lr131(param1:int) : void
      {
         this._xg746.destroy(param1);
         this._jf5704._ia7399(param1);
      }
      
      public function _in5812(param1:int, param2:int, param3:int, param4:int) : void
      {
         var count2:PersonController = PersonController(_lp469._yp6754()._xc6184(param1));
         count2._dx16108();
         var count7:int = int(this._gi10147._am6247(param1));
         if(count7 != -1)
         {
            this._xg746._oq2135(_lg13977[textString7][textString5 + count7],this._jf5704._eh1429(param2),this._jf5704._ia7399);
         }
         this._gi10147._ya8784(param1,param4,param3);
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
               _wx10678();
               this._gi10147 = new ShurikenUtils(enterScene._yp6754(),_lg13977);
               _lp469._dc14886.authenticateUser2();
               return;
            case count3:
               this.move1();
               _lp469._ag13089();
               this.start1();
               this.start2();
               return;
            case count4:
               this.destroy1();
               return;
            default:
               return;
         }
      }
      
      private function _fo15457(param1:int) : void
      {
         var count:PersonController = PersonController(_lp469._yp6754()._xc6184(param1));
         count._qw8700();
      }
      
      private function addTarget() : void
      {
         this.target = _lg13977[textString1](textString4);
         if(this.target != null)
         {
            _lg13977.mouseEnabled = true;
            _lg13977.mouseChildren = true;
            (_lg13977[textString8] as MovieClip).addChild(this.target);
            _lg13977.addEventListener(MouseEvent.MOUSE_MOVE,this._ln13556);
            Mouse.hide();
         }
      }
      
      private function removeTarget() : void
      {
         if(this.target != null)
         {
            _lg13977.removeEventListener(MouseEvent.MOUSE_MOVE,this._ln13556);
            (_lg13977[textString8] as MovieClip).removeChild(this.target);
            Mouse.show();
            this.target = null;
         }
      }
      
      private function _ln13556(param1:MouseEvent) : void
      {
         this.target.x = param1.stageX;
         this.target.y = param1.stageY;
      }
      
      override public function _py9417(param1:TimerEvent) : void
      {
         super._py9417(param1);
         if(count7 <= 10 && state == count1)
         {
            _wx10678();
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
      
      private function start2() : void
      {
         this._at13068 = new Timer(count7,1);
         this._at13068.start();
         this._at13068.addEventListener(TimerEvent.TIMER,this.show);
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
            this._fo15457(count9);
         }
         else
         {
            count = this._bn14384.textString33;
         }
         var count3:FichasUtils = new FichasUtils(count,[textString6],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[textString](count),count3);
         this._ym8891.show(GamesModel.count20,GamesModel.count21);
      }
      
      private function show(param1:TimerEvent) : void
      {
         this.move2();
         _lp469._dc14886.show();
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
         var count2:FichasUtils = new FichasUtils("",[textString8],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[textString](count1),count2);
         this._ym8891.show(GamesModel.count20,GamesModel.count21);
      }
   }
}

