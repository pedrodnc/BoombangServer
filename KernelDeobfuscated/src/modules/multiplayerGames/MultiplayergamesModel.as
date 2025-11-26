package src.modules.multiplayerGames
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.*;
   import src.allData.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.texts.*;
   import src.modules.enterScene.*;
   import src.modules.interfaz.baseChat.*;
   import src.modules.multiplayerGames.dataGame.DatagameModel;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.utils.*;
   
   public class MultiplayergamesModel
   {
      
      protected static const textString4:String = "mcMonedaOro";
      
      protected static const textString3:String = "mcMonedaPlata";
      
      protected static const textString2:String = "tfText";
      
      protected var _bl11315:TypeescenariosModel;
      
      protected var _tv9779:MultiplayergamesController;
      
      protected var dataGame:DatagameModel;
      
      protected var _oy9976:Function;
      
      protected var _gg7070:PersonModel;
      
      protected var _cs11070:ChatDataModel;
      
      protected var _pn8869:UIButton;
      
      protected var integracionEscenarios:EntersceneModel;
      
      public function MultiplayergamesModel(param1:MultiplayergamesController, param2:DatagameModel, param3:Function)
      {
         super();
         this.dataGame = param2;
         this._oy9976 = param3;
         var count1:NavigationmenuModel = new NavigationmenuModel();
         count1._ls5877 = NavigationmenuModel._lk15055;
         count1.count2 = NavigationmenuModel._bn928(0);
         count1._vn12441 = 0;
         count1._un6586 = 0;
         count1._eb11619 = 0;
         count1._fq658 = param2.count2;
         count1.name = "";
         this._bl11315 = new TypeescenariosModel(count1,SceneModel._yj5464,param2._lg13977,param2._xm10115);
         this._tv9779 = param1;
         BaseEscenarioMultiplayerGames(param2._lg13977)._BaseEscenarioActivarInstrucciones();
         this._pn8869 = new UIButton();
         this._pn8869._np5723 = new Point(0,1);
         this._pn8869._wg2951 = new Point(0,-45);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         if(this._pn8869 != null)
         {
            this._pn8869.destroy();
            this._pn8869 = null;
         }
      }
      
      public function loop() : void
      {
         if(this._cs11070 != null)
         {
            this._cs11070.loop();
         }
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioLoop();
      }
      
      public function _yj110() : void
      {
      }
      
      public function _vv4788() : void
      {
      }
      
      public function _pq9820(param1:int, param2:int) : void
      {
      }
      
      public function move() : void
      {
         this._cs11070 = new ChatDataModel(this.dataGame._fl1604,this._oy9976);
         this._pn8869.addChild(this._cs11070.movieClip);
         _xw1367.getInstance()._uc3178(this._pn8869,_xw1367.count5);
         this._cs11070.setPosition();
      }
      
      public function destroy() : void
      {
         if(this._cs11070 != null)
         {
            _xw1367.getInstance().move2(this._pn8869,_xw1367.count5);
            this._cs11070.destroy();
            this._cs11070 = null;
         }
      }
      
      public function _ru2004() : void
      {
         UtilsUtils._xl9503(this.dataGame._lg13977[textString4][textString2],UserSession.getInstance()._dx11054.toString());
         UtilsUtils._xl9503(this.dataGame._lg13977[textString3][textString2],UserSession.getInstance()._ea4493.toString());
      }
      
      public function _mb6410(param1:MovieClip, param2:UserSession, param3:int, param4:int, param5:Boolean = false) : void
      {
         this._gg7070 = new PersonModel(param1,param2,true);
         _xw1367.getInstance()._uc3178(this._gg7070,_xw1367.count3);
         this._gg7070._rb2419(param3,param4);
         if(param5)
         {
            this._gg7070._gl8471();
         }
      }
      
      public function _cn4700() : void
      {
         _xw1367.getInstance().move2(this._gg7070,_xw1367.count3);
      }
      
      public function _pr4733() : void
      {
         this._bl11315._pr4733();
      }
      
      public function _qk13047() : void
      {
         this._bl11315._qk13047();
      }
      
      public function show1() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioShowMonedas();
      }
      
      public function hide1() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioHideMonedas();
      }
      
      public function show() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioShowSigno();
      }
      
      public function hide() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioHideSigno();
      }
      
      public function _qt10018() : void
      {
         this.integracionEscenarios = new EntersceneModel(null,null,null,null,this._bl11315);
         this.integracionEscenarios._mv15029(this);
         var count2:String = TextManager._eo5308["textsEscenarios"]["public" + this._bl11315._nr6929._fq658].toXMLString();
         BaseEscenario(this.dataGame._lg13977).integracionEscenarios = this.integracionEscenarios;
         BaseEscenario(this.dataGame._lg13977).xmlTexts = new XML(count2);
         BaseEscenario(this.dataGame._lg13977)._BaseEscenarioInit();
      }
   }
}

