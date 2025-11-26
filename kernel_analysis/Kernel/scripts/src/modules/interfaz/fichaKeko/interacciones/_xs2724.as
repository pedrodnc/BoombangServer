package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.person._um8624;
   
   public class _xs2724 extends _ka8542
   {
      
      public function _xs2724(param1:Function, param2:_um8624, param3:MovieClip, param4:Function, param5:Function = null, param6:Function = null, param7:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function _mr15523() : void
      {
         this.setState(_lp13903._nw13075);
      }
      
      override public function setState(param1:Boolean) : void
      {
         active = param1;
         _pe16126.alpha = param1 ? 1 : _qk12405;
      }
      
      override public function _ch1514() : void
      {
         if(active)
         {
            super._ch1514();
         }
         else
         {
            _om9833(this,_dj4861);
         }
      }
      
      override public function _iv1460() : void
      {
         if(active)
         {
            super._iv1460();
         }
         else
         {
            _el16166(this,_dj4861);
         }
      }
   }
}

