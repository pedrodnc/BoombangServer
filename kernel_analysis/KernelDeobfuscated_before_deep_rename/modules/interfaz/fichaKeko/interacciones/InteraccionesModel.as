package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.interfaz.fichaKeko.Fichakeko;
   import src.person.PersonAnimation;
   
   public class InteraccionesModel extends InteraccionesView
   {
      
      protected var _qa2185:Fichakeko;
      
      protected var _uq11431:int;
      
      public function InteraccionesModel(param1:int, param2:Fichakeko, param3:PersonAnimation, param4:MovieClip, param5:Function, param6:Function = null, param7:Function = null, param8:Object = null)
      {
         this._qa2185 = param2;
         this._uq11431 = param1;
         super(param3,param4,param5,param6,param7,param8);
         this._mr15523();
      }
      
      override public function _mr15523() : void
      {
         var _loc1_:int = int(Interacciones._dh5795(this._uq11431));
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
         if(UserSession.getInstance()._ea4493 >= param1)
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

