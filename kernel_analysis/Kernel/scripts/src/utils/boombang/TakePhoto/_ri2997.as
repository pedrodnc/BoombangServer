package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ri2997
   {
      
      private static const _vv11062:String = "mcFichaAcerca";
      
      private static const _ui1420:String = "mcBotonFotografiar";
      
      private static const _sp4856:String = "mcBotonCancelar";
      
      private static const _ck688:String = "tfTitle";
      
      private static const _nw2788:String = "tfItem1";
      
      private static const _jj9031:String = "tfItem2";
      
      private static const _cb744:String = "tfItem3";
      
      private static const _ap6116:String = "tfItem4";
      
      private var _xg12631:MovieClip;
      
      private var _hx5783:_qo7568;
      
      private var _xl7701:_qo7568;
      
      public function _ri2997(param1:MovieClip, param2:_qs10251, param3:Function, param4:Function)
      {
         super();
         this._xg12631 = MovieClip(param1[_vv11062]);
         this.init(param2,param3,param4);
      }
      
      private function init(param1:_qs10251, param2:Function, param3:Function) : void
      {
         _yq8362._xl9503(this._xg12631[_ck688],param1._bo7789);
         _yq8362._xl9503(this._xg12631[_nw2788],param1._my6499);
         _yq8362._xl9503(this._xg12631[_jj9031],param1._fc7168);
         _yq8362._xl9503(this._xg12631[_cb744],param1._ky9343);
         _yq8362._xl9503(this._xg12631[_ap6116],param1._oo9812);
         this._hx5783 = new _qo7568(this._xg12631[_ui1420],param3,param1._rv5906);
         this._xl7701 = new _qo7568(this._xg12631[_sp4856],param2,param1._pe7262);
      }
      
      public function destroy() : void
      {
         if(this._hx5783 != null)
         {
            this._hx5783.destroy();
            this._hx5783 = null;
         }
         if(this._xl7701 != null)
         {
            this._xl7701.destroy();
            this._xl7701 = null;
         }
         this._xg12631 = null;
      }
      
      public function _hu12389() : void
      {
         if(this._xg12631.visible)
         {
            this._xg12631.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._xg12631.visible)
         {
            this._xg12631.visible = true;
         }
      }
   }
}

