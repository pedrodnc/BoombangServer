package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.interfaz.fichaKeko._bq9536;
   import src.person._um8624;
   
   public class _bg71 extends _go6159
   {
      
      private static const _jc12672:String = "coco";
      
      private var _cy6485:_br13243;
      
      public function _bg71(param1:int, param2:_bq9536, param3:_br13243, param4:_um8624, param5:MovieClip, param6:Function, param7:Function = null, param8:Function = null, param9:Object = null)
      {
         this._cy6485 = param3;
         super(param1,param2,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function _ds10915() : void
      {
         super._ds10915();
         _pe16126.gotoAndStop(_jc12672 + _lp13903._ph14059);
      }
      
      override protected function _jd12202() : void
      {
         super._jd12202();
         _pe16126.gotoAndStop(_jc12672 + _lp13903._ph14059);
      }
      
      override protected function _om8120(param1:int) : void
      {
         super._om8120(param1);
         _pe16126.gotoAndStop(_jc12672 + _lp13903._ph14059);
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
         if(_hv12530.getInstance()._ea4493 >= _loc2_ && active)
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
         if(_hv12530.getInstance()._ea4493 >= _loc2_ && active)
         {
            _pe16126.alpha = _jh13574;
         }
      }
   }
}

