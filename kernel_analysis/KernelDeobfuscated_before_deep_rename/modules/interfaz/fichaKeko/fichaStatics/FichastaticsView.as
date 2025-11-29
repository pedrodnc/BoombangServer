package src.modules.interfaz.fichaKeko.fichaStatics
{
   import flash.display.*;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class FichastaticsView extends CommoncomponentsController
   {
      
      private static const _nr6474:String = "mcSwapPageColor";
      
      private static const _hk1754:String = "mcFlechaSwap";
      
      private var colorTransform:ColorTransform;
      
      private var _ts642:FichakekoView;
      
      public function FichastaticsView(param1:MovieClip, param2:Function)
      {
         this.colorTransform = new ColorTransform();
         super(param1,param2);
      }
      
      public function _dn10392(param1:FichakekoView) : void
      {
         this._ts642 = param1;
         this.colorTransform.color = param1._sf7808;
         MovieClip(_pe16126[_nr6474]).transform.colorTransform = this.colorTransform;
         this._iv1460();
      }
      
      override public function _ch1514() : void
      {
         this.colorTransform.color = this._ts642._sf7808;
         MovieClip(_pe16126[_hk1754]).transform.colorTransform = this.colorTransform;
      }
      
      override public function _iv1460() : void
      {
         if(this._ts642 != null && MovieClip(_pe16126[_hk1754]) != null)
         {
            this.colorTransform.color = this._ts642._mx10235;
            MovieClip(_pe16126[_hk1754]).transform.colorTransform = this.colorTransform;
         }
      }
   }
}

