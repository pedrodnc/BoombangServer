package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _me11909
   {
      
      private static const _kl7983:String = "mcFichaEnd";
      
      private static const _aj10641:String = "mcBotonVerFoto";
      
      private static const _jj4855:String = "mcBotonCerrar";
      
      private static const _ck688:String = "tfTitle";
      
      private static const _nw2788:String = "tfItem1";
      
      private static const _jj9031:String = "tfItem2";
      
      private static const _cb744:String = "tfItem3";
      
      private var _pl4818:MovieClip;
      
      private var _hx5783:_qo7568;
      
      private var _ch12762:_qo7568;
      
      public function _me11909(param1:MovieClip, param2:_qs10251, param3:Function, param4:Function)
      {
         super();
         this._pl4818 = MovieClip(param1[_kl7983]);
         this.init(param2,param3,param4);
      }
      
      private function init(param1:_qs10251, param2:Function, param3:Function) : void
      {
         _yq8362._xl9503(this._pl4818[_ck688],param1._qh5790);
         _yq8362._xl9503(this._pl4818[_nw2788],param1._ci4832);
         _yq8362._xl9503(this._pl4818[_jj9031],param1._fy9814);
         _yq8362._xl9503(this._pl4818[_cb744],param1._lq2818);
         this._hx5783 = new _qo7568(this._pl4818[_aj10641],param2,param1._cn11160);
         this._ch12762 = new _qo7568(this._pl4818[_jj4855],param3,param1._fb11378);
      }
      
      public function destroy() : void
      {
         if(this._hx5783 != null)
         {
            this._hx5783.destroy();
            this._hx5783 = null;
         }
         if(this._ch12762 != null)
         {
            this._ch12762.destroy();
            this._ch12762 = null;
         }
         this._pl4818 = null;
      }
      
      public function _hu12389() : void
      {
         if(this._pl4818.visible)
         {
            this._pl4818.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._pl4818.visible)
         {
            this._pl4818.visible = true;
         }
      }
   }
}

