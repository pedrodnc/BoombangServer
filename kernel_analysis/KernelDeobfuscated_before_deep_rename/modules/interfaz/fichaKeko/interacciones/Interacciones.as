package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.person.*;
   
   public class Interacciones extends InteraccionesView
   {
      
      private static const _sp9902:String = "normal";
      
      private static const _am6426:String = "lengua";
      
      private static const _io7178:String = "voltereta";
      
      public function Interacciones(param1:PersonAnimation, param2:MovieClip, param3:Function, param4:Function = null, param5:Function = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function _if3173() : void
      {
         _pe16126.gotoAndStop(_am6426);
      }
      
      private function _xg13120() : void
      {
         _pe16126.gotoAndStop(_io7178);
      }
      
      private function _vy9965() : void
      {
         _pe16126.gotoAndStop(_sp9902);
      }
      
      override public function _kc1802(param1:PersonAnimation) : void
      {
         if(param1._jn11596 == PersonModel._mh6719)
         {
            this._if3173();
         }
         else if(param1._jn11596 == PersonModel._mk4881 || param1._jn11596 == PersonModel._idNinjaBlanco)
         {
            this._xg13120();
         }
         else
         {
            this._vy9965();
         }
      }
      
      override public function _ch1514() : void
      {
         _pe16126.alpha = _qk12405;
      }
      
      override public function _iv1460() : void
      {
         _pe16126.alpha = _jh13574;
      }
   }
}

