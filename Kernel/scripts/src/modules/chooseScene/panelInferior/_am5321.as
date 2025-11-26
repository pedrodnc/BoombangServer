package src.modules.chooseScene.panelInferior
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.net.*;
   import flash.utils.Timer;
   import src.*;
   import src.allData.*;
   import src.modules.chooseScene.*;
   import src.modules.creditos.*;
   import src.modules.notificaciones._uv13537;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _am5321 extends _rn8936
   {
      
      private static const _vc13227:String = "mcFichaActivarEmail";
      
      private static const _ei2845:String = "mcBotonMember";
      
      private static const _fk12486:String = "mcBotonNoticias";
      
      private static const _str_tfBooms:String = "tfBooms";
      
      private static const _str_tfBoomsDiamante:String = "tfBoomsDiamante";
      
      private static const _bd13807:String = "tfBoomsPlata";
      
      private static const _il14760:String = "mcBotonMarketingViral";
      
      private static const _il14761:String = "mcBotonGashapon";
      
      private static const _lo10254:String = "mcBotonCrearIsla";
      
      private static const _yg12661:String = "mcBotonEditarPersonaje";
      
      private static const _mk5034:String = "mcBotonMonedas";
      
      private static const _re294:String = "mcCountDownMonedaPlata";
      
      private var _bw16023:MovieClip;
      
      private var _wy14677:int;
      
      private var _ff4906:int;
      
      private var _jt12697:int;
      
      private var _jt2393:int;
      
      private var _xs12582:int;
      
      private var _du2403:int;
      
      private var _vs12004:Timer;
      
      private var _nb142:int;
      
      private var _nx617:int;
      
      private var _gy10361:_nw11343;
      
      private var _um5403:_tj14068;
      
      private var _cl12799:int;
      
      private var _tl7614:_uv13537;
      
      private var _hv8403:_qo7568;
      
      private var _lm11084:_qo7568;
      
      private var _nj11040:_qo7568;
      
      private var _yj11884:_qo7568;
      
      private var _yj11885:_qo7568;
      
      private var _kq2270:_qo7568;
      
      private var _nb8880:MovieClip;
      
      private var _il14483:_so5381;
      
      private var _lj4861:Number;
      
      private var _ne13430:Timer;
      
      private var _tl9155:_sd10289;
      
      private var _my15681:_ca11681;
      
      private var _actualcreditosDiamante:int;
      
      private var _totalcreditosDiamante:int;
      
      private var _sumadoscreditosDiamante:int;
      
      public function _am5321(param1:_tj14068, param2:MovieClip, param3:_nw11343, param4:_ij15863, param5:_uv13537, param6:_sd10289)
      {
         super();
         this._bw16023 = param2;
         this._gy10361 = param3;
         this._um5403 = param1;
         this._tl7614 = param5;
         this._tl9155 = param6;
         this._bw16023.tabEnabled = false;
         this._bw16023.tabChildren = false;
         this._bw16023.visible = false;
         this._cl12799 = _xw1367._wa4051;
         this._lj4861 = -1;
         this.init();
      }
      
      private function init() : void
      {
         this._my15681 = new _ca11681();
         this._my15681.text = "gui.buyCreditsIcon.tooltip";
         this._my15681._xe10297 = _wk9007.LEFT;
         this._my15681.fontSize = 15;
         this._my15681._ui11624 = 100;
         this._my15681.x = 0;
         this._my15681.y = -80;
         this._my15681._xe10297 = _wk9007.BOTTOM;
         this._my15681._sl14850();
         this._my15681.visible = false;
         (this._bw16023[_mk5034] as MovieClip).addChild(this._my15681);
         this._hv8403 = new _qo7568(this._bw16023[_mk5034],this._am526,this._gy10361._ba8380,false,this._fv5695,this._wf1576);
         this._lm11084 = new _qo7568(this._bw16023[_ei2845],this._vj6468,this._gy10361._al12102);
         this._nj11040 = new _qo7568(this._bw16023[_yg12661],this._dd7776,this._gy10361._mu5317);
         this._yj11884 = new _qo7568(this._bw16023[_il14760],this._ro2384,this._gy10361._hu9307);
         this._yj11885 = new _qo7568(this._bw16023[_il14761],this._ro2385,this._gy10361._hu9308);
         this._kq2270 = new _qo7568(this._bw16023[_fk12486],this._xk6791,this._gy10361._sv13965);
         this._il14483 = new _so5381(this._bw16023[_vc13227],this._gy10361);
         this._il14483.module = this;
         this._il14483._hu12389();
         this._nb8880 = this._bw16023[_re294];
         this._fn2780();
         this._vb7585();
      }
      
      protected function _wf1576() : void
      {
         this._my15681.visible = false;
      }
      
      protected function _fv5695() : void
      {
         this._my15681.visible = false;
      }
      
      override public function _vb7585() : void
      {
         if(Boolean(this._bw16023) && Boolean(this._bw16023.stage))
         {
            this._bw16023.x = 435;
            this._bw16023.y = this._bw16023.stage.stageHeight;
         }
      }
      
      public function _cf8695() : _tj14068
      {
         return this._um5403;
      }
      
      public function _fn2780() : void
      {
         _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBooms],_hv12530.getInstance()._dx11054.toString());
         _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBoomsDiamante],_hv12530.getInstance().creditosDiamante.toString());
         _yq8362._xl9503(this._bw16023[_mk5034][_bd13807],_hv12530.getInstance()._ea4493.toString());
      }
      
      override public function destroy() : void
      {
         this._nj11040.destroy();
         this._yj11884.destroy();
         this._yj11885.destroy();
         this._hv8403.destroy();
         this._lm11084.destroy();
         this._kq2270.destroy();
         this._il14483.destroy();
         this.removeEventListener(Event.ENTER_FRAME,this._ww5789);
         this.removeEventListener(Event.ENTER_FRAME,this._bd3847);
         this._hu12389();
         super.destroy();
      }
      
      private function _hc3507(param1:Number) : void
      {
         var _loc2_:String = null;
         var _loc3_:_cy398 = _kg12861._os4304(param1);
         var _loc4_:String = _loc3_._df6810 >= 10 ? String(_loc3_._df6810) : "0" + _loc3_._df6810;
         var _loc5_:String = _loc3_._js12081 >= 10 ? String(_loc3_._js12081) : "0" + _loc3_._js12081;
         var _loc6_:String = _loc3_._np9789 >= 10 ? String(_loc3_._np9789) : "0" + _loc3_._np9789;
         if(_loc3_._df6810 > 0)
         {
            _loc2_ = _loc4_ + ":" + _loc5_ + ":" + _loc6_;
         }
         else
         {
            _loc2_ = _loc5_ + ":" + _loc6_;
         }
         _yq8362._xl9503(this._nb8880["tfTimeNextMonedaPlata"],_loc2_);
      }
      
      public function _db5584() : void
      {
         var _loc1_:int = 0;
         if(this._bw16023.visible == false)
         {
            this._fn2780();
            this._bw16023.visible = true;
            this._bw16023[_ei2845].visible = true;
            this._um5403._pt9271(this._bw16023[_fk12486]);
            _loc1_ = _tj14068._of1435 % 10;
            this._il14483.module = this;
            if(_loc1_ == 0)
            {
               this._il14483._db5584();
            }
         }
      }
      
      public function _hu12389() : void
      {
         if(this._bw16023.visible)
         {
            this._bw16023.visible = false;
         }
      }
      
      public function _hk12937() : void
      {
         this._tl7614._bv5027();
      }
      
      private function _vj6468() : void
      {
         ExternalInterface.call("showRanking");
         this._hk12937();
      }
      
      public function _dd7776() : void
      {
         this._um5403._kc8213();
         this._hk12937();
      }
      
      private function _ro2384() : void
      {
         ExternalInterface.call("openClanesWindow");
         this._hk12937();
      }
      
      private function _ro2385() : void
      {
         ExternalInterface.call("openGashaponWindow");
         this._hk12937();
      }
      
      private function _am526() : void
      {
         ExternalInterface.call("showCredits");
         this._hk12937();
      }
      
      private function _xk6791() : void
      {
         navigateToURL(new URLRequest("https://www.boombang.tv/blog"),"_blank");
         this._hk12937();
      }
      
      public function loop() : void
      {
         this._hc3507(_sd10289._cd5741);
      }
      
      public function _br12090(param1:int) : void
      {
         this._ff4906 = _hv12530.getInstance()._dx11054;
         this._jt12697 = this._ff4906 + param1;
         this._wy14677 = 0;
         this.addEventListener(Event.ENTER_FRAME,this._ww5789,false,0,true);
      }
      
      private function _ww5789(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this._wy14677 > _sd10289._cr4002)
         {
            if(this._wy14677 - _sd10289._cr4002 <= _sd10289._hl11530)
            {
               _loc2_ = this._ff4906 + (this._jt12697 - this._ff4906) * (this._wy14677 - _sd10289._cr4002) / _sd10289._hl11530;
               _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBooms],_loc2_.toString());
            }
            else
            {
               this.removeEventListener(Event.ENTER_FRAME,this._ww5789);
               _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBooms],_hv12530.getInstance()._dx11054.toString());
            }
         }
         ++this._wy14677;
      }
      
      public function _actualizaDiamante(param1:int) : void
      {
         this._actualcreditosDiamante = _hv12530.getInstance().creditosDiamante;
         this._totalcreditosDiamante = this._actualcreditosDiamante + param1;
         this._sumadoscreditosDiamante = 0;
         this.addEventListener(Event.ENTER_FRAME,this._sumaDiamante,false,0,true);
      }
      
      private function _sumaDiamante(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this._sumadoscreditosDiamante > _sd10289._cr4002)
         {
            if(this._sumadoscreditosDiamante - _sd10289._cr4002 <= _sd10289._hl11530)
            {
               _loc2_ = this._actualcreditosDiamante + (this._totalcreditosDiamante - this._actualcreditosDiamante) * (this._sumadoscreditosDiamante - _sd10289._cr4002) / _sd10289._hl11530;
               _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBoomsDiamante],_loc2_.toString());
            }
            else
            {
               this.removeEventListener(Event.ENTER_FRAME,this._sumaDiamante);
               _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBoomsDiamante],_hv12530.getInstance().creditosDiamante.toString());
            }
         }
         ++this._sumadoscreditosDiamante;
      }
      
      public function _tl1774(param1:int) : void
      {
         this._xs12582 = _hv12530.getInstance()._ea4493;
         this._du2403 = this._xs12582 + param1;
         this._jt2393 = 0;
         this.addEventListener(Event.ENTER_FRAME,this._bd3847,false,0,true);
      }
      
      private function _bd3847(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this._jt2393 > _sd10289._cr4002)
         {
            if(this._jt2393 - _sd10289._cr4002 <= _sd10289._hl11530)
            {
               _loc2_ = this._xs12582 + (this._du2403 - this._xs12582) * (this._jt2393 - _sd10289._cr4002) / _sd10289._hl11530;
               _yq8362._xl9503(this._bw16023[_mk5034][_bd13807],_loc2_.toString());
            }
            else
            {
               this.removeEventListener(Event.ENTER_FRAME,this._bd3847);
               _yq8362._xl9503(this._bw16023[_mk5034][_bd13807],_hv12530.getInstance()._ea4493.toString());
            }
         }
         ++this._jt2393;
      }
      
      public function _tp10773() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this._ww5789);
         var _loc1_:int = int(_hv12530.getInstance()._dx11054);
         _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBooms],_loc1_.toString());
      }
      
      public function _restaDiamantes() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this._ww5789);
         var _loc1_:int = int(_hv12530.getInstance().creditosDiamante);
         _yq8362._xl9503(this._bw16023[_mk5034][_str_tfBoomsDiamante],_loc1_.toString());
      }
      
      public function _qc3804() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this._bd3847);
         var _loc1_:int = int(_hv12530.getInstance()._ea4493);
         _yq8362._xl9503(this._bw16023[_mk5034][_bd13807],_loc1_.toString());
      }
   }
}

