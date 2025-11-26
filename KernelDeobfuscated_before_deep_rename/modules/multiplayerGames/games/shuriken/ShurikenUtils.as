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
      
      private static const _ib5392:String = "getClassObject";
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _qw9228:String = "getClassSound";
      
      private static const _ma12651:int = 13;
      
      private static const _dm2064:int = 14;
      
      private static const _iq9859:String = "Ninja";
      
      private static const _jr3146:String = "mcMira";
      
      private static const _xd8993:String = "RegPoint";
      
      private static const _xd7312:String = "RegPointsNinjas";
      
      private static const _he8660:String = "RegPointsEstrellas";
      
      private static const _pk9634:String = "RegPointMira";
      
      private static const _ko4767:int = 6;
      
      private static const _gt1392:int = 5;
      
      private static const _rm12450:int = 60;
      
      private static const _jb1157:int = 1000;
      
      private static const _gy10778:int = 2000;
      
      private static const _bj9284:int = 5000;
      
      private static const _qb5611:String = "MainSound";
      
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
      
      private var _eg750:Array;
      
      private var _xc11606:Array;
      
      public function ShurikenUtils(param1:MovieClip, param2:MultiplayergamesController, param3:SceneTransition, param4:InterfazManager)
      {
         super(param1,param2,param3,param4);
         _ao1711();
         _en7017();
         _bi15407();
         this._bn14384 = new ShurikenModel();
         state = _ul15971;
         this._yf12156(_us1603);
         this._bn15829 = _xw1367.getInstance();
         this._jf5704 = new Shuriken(param1);
         this._xg746 = new Shuriken(param1);
         this._eg750 = new Array();
         this._xc11606 = new Array();
         this._li7674 = param1[_qw9228](_qb5611);
         this._te5475 = this._li7674.play(0,1);
         param4._eo12431();
      }
      
      override public function loop() : void
      {
         switch(state)
         {
            case _us1603:
               return;
            case _ta3481:
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
         this._cb10552();
         this._es5111();
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
      
      private function _pn1902() : void
      {
         if(this._gr6879 != null)
         {
            this._gr6879.removeEventListener(TimerEvent.TIMER,this._qr12057);
            this._gr6879.stop();
            this._gr6879 = null;
         }
      }
      
      private function _es5111() : void
      {
         if(this._qc3441 != null)
         {
            this._qc3441.removeEventListener(TimerEvent.TIMER,this._rj10719);
            this._qc3441.stop();
            this._qc3441 = null;
         }
      }
      
      private function _cb10552() : void
      {
         if(this._at13068 != null)
         {
            this._at13068.removeEventListener(TimerEvent.TIMER,this._ou3574);
            this._at13068.stop();
            this._at13068 = null;
         }
      }
      
      public function _fi10318(param1:int, param2:int, param3:int) : void
      {
         this._xg746._lv14663(param1);
         _lg13977[_xd8993 + param3].mouseEnabled = true;
         _lg13977[_xd8993 + param3].mouseChildren = true;
         this._jf5704._lp5886(param1,param2,param3,_lg13977[_xd8993 + param3],_tv9779);
      }
      
      public function _lr131(param1:int) : void
      {
         this._xg746._lv14663(param1);
         this._jf5704._ia7399(param1);
      }
      
      public function _in5812(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:PersonController = PersonController(_lp469._yp6754()._xc6184(param1));
         _loc5_._dx16108();
         var _loc6_:int = int(this._gi10147._am6247(param1));
         if(_loc6_ != -1)
         {
            this._xg746._oq2135(_lg13977[_he8660][_xd8993 + _loc6_],this._jf5704._eh1429(param2),this._jf5704._ia7399);
         }
         this._gi10147._ya8784(param1,param4,param3);
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
               _wx10678();
               this._gi10147 = new ShurikenUtils(enterScene._yp6754(),_lg13977);
               _lp469._dc14886._hu12389();
               return;
            case _bm12345:
               this._es5111();
               _lp469._ag13089();
               this._xm6416();
               this._as14502();
               return;
            case _qi10890:
               this._ab8633();
               return;
            default:
               return;
         }
      }
      
      private function _fo15457(param1:int) : void
      {
         var _loc2_:PersonController = PersonController(_lp469._yp6754()._xc6184(param1));
         _loc2_._qw8700();
      }
      
      private function addTarget() : void
      {
         this.target = _lg13977[_pd9423](_jr3146);
         if(this.target != null)
         {
            _lg13977.mouseEnabled = true;
            _lg13977.mouseChildren = true;
            (_lg13977[_pk9634] as MovieClip).addChild(this.target);
            _lg13977.addEventListener(MouseEvent.MOUSE_MOVE,this._ln13556);
            Mouse.hide();
         }
      }
      
      private function removeTarget() : void
      {
         if(this.target != null)
         {
            _lg13977.removeEventListener(MouseEvent.MOUSE_MOVE,this._ln13556);
            (_lg13977[_pk9634] as MovieClip).removeChild(this.target);
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
         if(_qd10711 <= 10 && state == _us1603)
         {
            _wx10678();
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
      
      private function _as14502() : void
      {
         this._at13068 = new Timer(_bj9284,1);
         this._at13068.start();
         this._at13068.addEventListener(TimerEvent.TIMER,this._ou3574);
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
            this._fo15457(_qf10772);
         }
         else
         {
            _loc2_ = this._bn14384._bq12462;
         }
         var _loc3_:FichasUtils = new FichasUtils(_loc2_,[_me8365],[this._bn14384.OK],[this._bb8432]);
         this._ym8891 = new FichasView(_lg13977[_ib5392](_ma12651),_loc3_);
         this._ym8891._db5584(GamesModel._xo4658,GamesModel._sw8559);
      }
      
      private function _ou3574(param1:TimerEvent) : void
      {
         this._cb10552();
         _lp469._dc14886.show();
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

