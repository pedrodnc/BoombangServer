package src.modules.interfaz.fichaKeko.flecha
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class FlechaView extends CommoncomponentsController
   {
      
      private var colorTransform:ColorTransform;
      
      private var _ts642:FichakekoView;
      
      public function FlechaView(param1:MovieClip, param2:Function, param3:FichakekoView)
      {
         this.colorTransform = new ColorTransform();
         super(param1,param2,this._ff6928,this._cc11864);
         this._dn10392(param3);
      }
      
      public function _dn10392(param1:FichakekoView) : void
      {
         this._ts642 = param1;
         this._cc11864();
      }
      
      private function _ff6928() : void
      {
         this.colorTransform.color = 16776960;
         _pe16126.transform.colorTransform = this.colorTransform;
      }
      
      private function _cc11864() : void
      {
         this.colorTransform.color = this._ts642._mx10235;
         _pe16126.transform.colorTransform = this.colorTransform;
      }
   }
}

