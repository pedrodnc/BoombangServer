package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.person._um8624;
   
   public class _ka8542 extends _ag8921
   {
      
      protected var _pt4757:Function;
      
      protected var _om9833:Function;
      
      protected var _el16166:Function;
      
      public function _ka8542(param1:Function, param2:_um8624, param3:MovieClip, param4:Function, param5:Function, param6:Function, param7:Object = null)
      {
         this._om9833 = param5;
         this._el16166 = param6;
         super(param2,param3,param4,null,null,param7);
         this._pt4757 = param1;
      }
      
      override public function _ch1514() : void
      {
         super._ch1514();
         this._om9833(this,_dj4861);
      }
      
      override public function _iv1460() : void
      {
         super._iv1460();
         this._el16166(this,_dj4861);
      }
   }
}

