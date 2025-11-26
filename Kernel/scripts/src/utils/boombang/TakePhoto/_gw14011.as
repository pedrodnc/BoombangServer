package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.commonComponents.*;
   
   public class _gw14011
   {
      
      private static const _rt11025:String = "mcTomarFoto";
      
      private static const _ui1420:String = "mcBotonFotografiar";
      
      private static const _jj4855:String = "mcBotonCerrar";
      
      private static const _ms182:String = "mcFlash";
      
      private static const _fg12368:int = 39372;
      
      private static const _tm6107:int = 86663;
      
      private var _dm4083:MovieClip;
      
      private var _pm14631:MovieClip;
      
      private var _hx5783:_qo7568;
      
      private var _ch12762:_qo7568;
      
      public function _gw14011(param1:MovieClip, param2:_qs10251, param3:Function, param4:Function)
      {
         super();
         this._dm4083 = MovieClip(param1[_rt11025]);
         this.init(param2,param3,param4);
      }
      
      private function init(param1:_qs10251, param2:Function, param3:Function) : void
      {
         this._pm14631 = MovieClip(this._dm4083[_ms182]);
         this._pm14631.visible = false;
         this._hx5783 = new _qo7568(this._dm4083[_ui1420],param2,param1._rv5906);
         this._hx5783._ix10516 = this._ol9700;
         this._hx5783._ct5529 = this._mb4028;
         this._ch12762 = new _qo7568(this._dm4083[_jj4855],param3,param1._fb11378,true);
         this._ch12762._lq8071 = _fg12368;
         this._ch12762._vd8836 = _tm6107;
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
         this._dm4083 = null;
         this._pm14631 = null;
      }
      
      private function _mb4028() : void
      {
         this._pm14631.visible = true;
      }
      
      private function _ol9700() : void
      {
         this._pm14631.visible = false;
      }
      
      public function _hu12389() : void
      {
         if(this._dm4083.visible)
         {
            this._dm4083.visible = false;
            this._pm14631.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._dm4083.visible)
         {
            this._dm4083.visible = true;
         }
      }
   }
}

