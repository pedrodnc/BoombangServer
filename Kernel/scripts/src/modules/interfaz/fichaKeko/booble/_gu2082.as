package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.*;
   import flash.geom.*;
   
   public class _gu2082
   {
      
      private static const _cq13044:String = "mcBaseBooble";
      
      private static const _av519:String = "mcShadowBooble";
      
      protected var _ml5932:MovieClip;
      
      protected var _eh11850:MovieClip;
      
      protected var colorTransform:ColorTransform;
      
      protected var _kf7619:_rn3949;
      
      protected var _gn3462:MovieClip;
      
      protected var _yj14476:MovieClip;
      
      public function _gu2082(param1:MovieClip, param2:MovieClip, param3:_rn3949)
      {
         this.colorTransform = new ColorTransform();
         super();
         this._ml5932 = param1;
         this._eh11850 = param2;
         this._kf7619 = param3;
         this._gn3462 = MovieClip(param2.getChildByName(_cq13044));
         this._yj14476 = MovieClip(param2.getChildByName(_av519));
         this._eg5588();
      }
      
      protected function _eg5588() : void
      {
         this._ml5932.addChild(this._eh11850);
      }
      
      public function destroy() : void
      {
         if(this._ml5932 != null && this._eh11850 != null)
         {
            if(this._ml5932.contains(this._eh11850))
            {
               this._ml5932.removeChild(this._eh11850);
            }
         }
      }
   }
}

