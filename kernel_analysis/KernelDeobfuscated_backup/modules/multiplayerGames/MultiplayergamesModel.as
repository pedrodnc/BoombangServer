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
   import src.modules.multiplayerGames.dataGame._cc12354;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.utils.*;
   
   public class _cx9701
   {
      
      protected static const _sg6179:String = "mcMonedaOro";
      
      protected static const _xg11439:String = "mcMonedaPlata";
      
      protected static const _el2728:String = "tfText";
      
      protected var _bl11315:_ni13068;
      
      protected var _tv9779:_xl8523;
      
      protected var dataGame:_cc12354;
      
      protected var _oy9976:Function;
      
      protected var _gg7070:_od6763;
      
      protected var _cs11070:_db12795;
      
      protected var _pn8869:_rn8936;
      
      protected var integracionEscenarios:_aw742;
      
      public function _cx9701(param1:_xl8523, param2:_cc12354, param3:Function)
      {
         super();
         this.dataGame = param2;
         this._oy9976 = param3;
         var _loc4_:_kn4108 = new _kn4108();
         _loc4_._ls5877 = _hj3512._lk15055;
         _loc4_._kb5211 = _rj12650._bn928(0);
         _loc4_._vn12441 = 0;
         _loc4_._un6586 = 0;
         _loc4_._eb11619 = 0;
         _loc4_._fq658 = param2._nb15238;
         _loc4_.name = "";
         this._bl11315 = new _ni13068(_loc4_,_cf9831._yj5464,param2._lg13977,param2._xm10115);
         this._tv9779 = param1;
         BaseEscenarioMultiplayerGames(param2._lg13977)._BaseEscenarioActivarInstrucciones();
         this._pn8869 = new _rn8936();
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
      
      public function _ke10054() : void
      {
         this._cs11070 = new _db12795(this.dataGame._fl1604,this._oy9976);
         this._pn8869.addChild(this._cs11070.movieClip);
         _xw1367.getInstance()._uc3178(this._pn8869,_xw1367._wa4051);
         this._cs11070.setPosition();
      }
      
      public function _rd13406() : void
      {
         if(this._cs11070 != null)
         {
            _xw1367.getInstance()._na10792(this._pn8869,_xw1367._wa4051);
            this._cs11070.destroy();
            this._cs11070 = null;
         }
      }
      
      public function _ru2004() : void
      {
         _yq8362._xl9503(this.dataGame._lg13977[_sg6179][_el2728],_hv12530.getInstance()._dx11054.toString());
         _yq8362._xl9503(this.dataGame._lg13977[_xg11439][_el2728],_hv12530.getInstance()._ea4493.toString());
      }
      
      public function _mb6410(param1:MovieClip, param2:_hv12530, param3:int, param4:int, param5:Boolean = false) : void
      {
         this._gg7070 = new _od6763(param1,param2,true);
         _xw1367.getInstance()._uc3178(this._gg7070,_xw1367._jf1741);
         this._gg7070._rb2419(param3,param4);
         if(param5)
         {
            this._gg7070._gl8471();
         }
      }
      
      public function _cn4700() : void
      {
         _xw1367.getInstance()._na10792(this._gg7070,_xw1367._jf1741);
      }
      
      public function _pr4733() : void
      {
         this._bl11315._pr4733();
      }
      
      public function _qk13047() : void
      {
         this._bl11315._qk13047();
      }
      
      public function _kp1960() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioShowMonedas();
      }
      
      public function _bi15407() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioHideMonedas();
      }
      
      public function _dw1258() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioShowSigno();
      }
      
      public function _en7017() : void
      {
         BaseEscenarioMultiplayerGames(this.dataGame._lg13977)._BaseEscenarioHideSigno();
      }
      
      public function _qt10018() : void
      {
         this.integracionEscenarios = new _aw742(null,null,null,null,this._bl11315);
         this.integracionEscenarios._mv15029(this);
         var _loc1_:String = _yh6510._eo5308["textsEscenarios"]["public" + this._bl11315._nr6929._fq658].toXMLString();
         BaseEscenario(this.dataGame._lg13977).integracionEscenarios = this.integracionEscenarios;
         BaseEscenario(this.dataGame._lg13977).xmlTexts = new XML(_loc1_);
         BaseEscenario(this.dataGame._lg13977)._BaseEscenarioInit();
      }
   }
}

