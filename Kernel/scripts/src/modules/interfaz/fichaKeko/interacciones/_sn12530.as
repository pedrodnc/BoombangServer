package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.person._um8624;
   
   public class _sn12530 extends _ka8542
   {
      
      private static const _xu10599:String = "on";
      
      private static const _uw2950:String = "off";
      
      private var _cb10786:Function;
      
      public function _sn12530(param1:Function, param2:Function, param3:_um8624, param4:MovieClip, param5:Function, param6:Function = null, param7:Function = null, param8:Object = null)
      {
         this._cb10786 = param2;
         super(param1,param3,param4,param5,param6,param7,param8);
      }
      
      override public function _mr15523() : void
      {
         if(this._cb10786(_lp13903.id))
         {
            _pe16126.gotoAndStop(_xu10599);
         }
         else
         {
            _pe16126.gotoAndStop(_uw2950);
         }
      }
      
      override public function _ch1514() : void
      {
         _pe16126.alpha = _qk12405;
         _om9833(this,_dj4861);
      }
      
      override public function _iv1460() : void
      {
         _pe16126.alpha = _jh13574;
         _el16166(this,_dj4861);
      }
   }
}

