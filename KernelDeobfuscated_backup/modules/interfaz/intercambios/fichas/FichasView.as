package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   import src.utils.fichas._wq1414;
   
   public class _yf15299 extends _wq1414
   {
      
      private static const _lk10568:String = "mcBotonSeguir";
      
      private var _kl6567:_qo7568;
      
      public function _yf15299(param1:MovieClip, param2:_ox15379, param3:String)
      {
         super(param1,param2);
         this._kl6567 = new _qo7568(param1[_lk10568],_hu12389,param3);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._kl6567 != null)
         {
            this._kl6567.destroy();
            this._kl6567 = null;
         }
      }
   }
}

