package src.modules.interfaz.fichaKeko.flecha
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.utils.commonComponents._kg183;
   
   public class _ul6720 extends _kg183
   {
      
      private var colorTransform:ColorTransform;
      
      private var _ts642:_kc6395;
      
      public function _ul6720(param1:MovieClip, param2:Function, param3:_kc6395)
      {
         this.colorTransform = new ColorTransform();
         super(param1,param2,this._ff6928,this._cc11864);
         this._dn10392(param3);
      }
      
      public function _dn10392(param1:_kc6395) : void
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

