package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.modules.interfaz.fichaKeko._bq9536;
   import src.person._um8624;
   
   public class _we6794 extends _go6159
   {
      
      private static const _gr15174:String = "mcPunchColor";
      
      private static const _qt9403:String = "rojo";
      
      private static const _hl12323:String = "rosa";
      
      private static const _eu14136:String = "naranja";
      
      private static const _ny14627:String = "verde";
      
      private static const _kv14987:String = "azul";
      
      private static const _ol11941:String = "blanco";
      
      private static const _la8593:String = "morado";
      
      private static const _nl408:String = "marron";
      
      private static const _em10094:String = "negro";
      
      private static const _hi1987:String = "dorado";
      
      private static const _dk1267:String = "mcIconoProhibido";
      
      private var _qe13801:MovieClip;
      
      private var _ll3015:Array;
      
      private var _bl11315:_il6324;
      
      private var _cy6485:_br13243;
      
      public function _we6794(param1:int, param2:_bq9536, param3:_br13243, param4:_um8624, param5:_il6324, param6:MovieClip, param7:Function, param8:Function = null, param9:Function = null, param10:Object = null)
      {
         this._qe13801 = MovieClip(param6.getChildByName(_dk1267));
         this._ll3015 = [_qt9403,_hl12323,_eu14136,_ny14627,_kv14987,_ol11941,_la8593,_nl408,_em10094,_hi1987];
         this._ll3015.push("amarillo");
         this._ll3015.push("violeta");
         this._ll3015.push("cyan");
         this._ll3015.push("platino");
         this._ll3015.push("mrm");
         this._ll3015.push("ghost");
         this._ll3015.push("multicolor");
         this._bl11315 = param5;
         this._cy6485 = param3;
         super(param1,param2,param4,param6,param7,param8,param9,param10);
      }
      
      override protected function _ds10915() : void
      {
         super._ds10915();
         _pe16126.gotoAndStop(this._ll3015[_lp13903._qb5661]);
         this._qe13801.visible = false;
      }
      
      override protected function _jd12202() : void
      {
         super._jd12202();
         _pe16126.gotoAndStop(this._ll3015[_lp13903._qb5661]);
         this._qe13801.visible = true;
      }
      
      override protected function _om8120(param1:int) : void
      {
         super._om8120(param1);
         _pe16126.gotoAndStop(this._ll3015[_lp13903._qb5661]);
         this._qe13801.visible = false;
      }
      
      override public function _ch1514() : void
      {
         var _loc1_:int = int(_qb57._dh5795(_uq11431));
         var _loc2_:int = _qa2185._ob10395(_loc1_);
         if(_loc2_ > 0)
         {
            this._cy6485._ym5191();
            this._cy6485._ad15308(_loc2_);
         }
         if(_hv12530.getInstance()._ea4493 >= _loc2_ && Boolean(this._bl11315._pe5591) && active)
         {
            _pe16126.alpha = _qk12405;
         }
      }
      
      override public function _iv1460() : void
      {
         var _loc1_:int = int(_qb57._dh5795(_uq11431));
         var _loc2_:int = _qa2185._ob10395(_loc1_);
         if(_loc2_ > 0)
         {
            this._cy6485._ny12054();
            this._cy6485._su5919();
         }
         if(_hv12530.getInstance()._ea4493 >= _loc2_ && Boolean(this._bl11315._pe5591) && active)
         {
            _pe16126.alpha = _jh13574;
         }
      }
   }
}

