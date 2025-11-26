package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.interfaz.fichaKeko._bq9536;
   import src.person._um8624;
   
   public class _go6159 extends _ag8921
   {
      
      protected var _qa2185:_bq9536;
      
      protected var _uq11431:int;
      
      public function _go6159(param1:int, param2:_bq9536, param3:_um8624, param4:MovieClip, param5:Function, param6:Function = null, param7:Function = null, param8:Object = null)
      {
         this._qa2185 = param2;
         this._uq11431 = param1;
         super(param3,param4,param5,param6,param7,param8);
         this._mr15523();
      }
      
      override public function _mr15523() : void
      {
         var _loc1_:int = int(_qb57._dh5795(this._uq11431));
         if(_loc1_ == -1)
         {
            this.setState(true);
            return;
         }
         var _loc2_:int = int(this._qa2185._ob10395(_loc1_));
         if(_loc2_ == 0)
         {
            this._ds10915();
         }
         else if(_loc2_ == -1)
         {
            this._jd12202();
         }
         else if(_loc2_ > 0)
         {
            this._om8120(_loc2_);
         }
      }
      
      override public function _ch1514() : void
      {
         if(active)
         {
            super._ch1514();
         }
      }
      
      override public function _iv1460() : void
      {
         if(active)
         {
            super._iv1460();
         }
      }
      
      protected function _ds10915() : void
      {
         this.setState(true);
      }
      
      protected function _jd12202() : void
      {
         this.setState(false);
      }
      
      protected function _om8120(param1:int) : void
      {
         if(_hv12530.getInstance()._ea4493 >= param1)
         {
            this.setState(true);
         }
         else
         {
            this.setState(false);
         }
      }
      
      override public function setState(param1:Boolean) : void
      {
         active = param1;
         _pe16126.alpha = param1 ? 1 : _qk12405;
      }
   }
}

