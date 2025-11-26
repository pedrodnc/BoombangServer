package src.loaders
{
   import flash.display.*;
   
   public class _ap6277 extends _jr15810
   {
      
      protected static const _dg9384:String = "mcBarraProgreso";
      
      protected static const _vd15368:String = "mcBarra";
      
      protected var _vl12074:MovieClip;
      
      protected var _wm265:MovieClip;
      
      public function _ap6277(param1:MovieClip)
      {
         super(param1);
         this.init();
      }
      
      protected function init() : void
      {
         this._vl12074 = MovieClip(_eh11850.getChildByName(_dg9384));
         this._wm265 = MovieClip(this._vl12074.getChildByName(_vd15368));
         _mk15381();
      }
      
      override public function _aj8898(param1:int) : void
      {
         super._aj8898(param1);
         this._wm265.gotoAndStop(param1);
      }
   }
}

