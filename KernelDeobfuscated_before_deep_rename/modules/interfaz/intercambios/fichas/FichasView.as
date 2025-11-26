package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class FichasView extends FichasController
   {
      
      private static const _lk10568:String = "mcBotonSeguir";
      
      private var _kl6567:CommoncomponentsView;
      
      public function FichasView(param1:MovieClip, param2:FichasUtils, param3:String)
      {
         super(param1,param2);
         this._kl6567 = new CommoncomponentsView(param1[_lk10568],_hu12389,param3);
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

