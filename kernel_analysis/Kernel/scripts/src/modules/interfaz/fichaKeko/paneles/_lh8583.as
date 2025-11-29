package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.*;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.person.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.interactions.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _lh8583 extends _pa7905
   {
      
      private static var _lp13903:_um8624;
      
      private static var _hp9397:int;
      
      private static const _bb1831:String = "tfEnviado";
      
      private static const _wv12723:String = "tfEnviadoA";
      
      private static const _yv1877:String = "tfNombreEnviado";
      
      private static const _xb6437:String = "mcOutBoxAction";
      
      private static const _ux3409:String = "mcOutboxCareto";
      
      private static const _th14376:String = "mcOutboxWaiting";
      
      private static const _ed9428:String = "tfWaiting";
      
      private static const _xj1441:String = "mcOutboxStop";
      
      private var parameters:_wa5855;
      
      private var _mp9994:_to1859;
      
      private var _gh3601:_kg183;
      
      public function _lh8583(param1:MovieClip, param2:MovieClip, param3:_wa5855, param4:_aw14744)
      {
         super(param1,param2,param4);
         this.parameters = param3;
         _yq8362._xl9503(param2[_bb1831],param3._im12039._ry12868);
         _yq8362._xl9503(param2[_wv12723],param3._im12039._fp11058);
         _yq8362._xl9503(param2[_yv1877],_lp13903.name);
         _yq8362._xl9503(param2[_th14376][_ed9428],param3._im12039._wp4682);
         var _loc5_:_ta2443 = _ta2443(param3._ix11826._pf8204[_lp13903._jr9311]);
         this._mp9994 = new _to1859(param2[_xb6437],param2[_ux3409],_hp9397,_lp13903,_loc5_,param4);
         this._gh3601 = new _kg183(param2[_xj1441],this._vg10931);
         MovieClip(param2[_th14376]).addFrameScript(0,this._xk2106);
      }
      
      public static function setData(param1:_um8624, param2:int) : void
      {
         _lp13903 = param1;
         _hp9397 = param2;
      }
      
      private function _xk2106() : void
      {
         _yq8362._xl9503(_hg11010[_th14376][_ed9428],this.parameters._im12039._wp4682);
      }
      
      public function _vg10931() : void
      {
         if(_lp13903 == null)
         {
            return;
         }
         _yp4672._ux14138(_ya5360._ob13942(_hp9397 + 1),_lp13903._jr9311);
         this.parameters._lh9417(_lp13903._jr9311);
      }
      
      public function _gn14675(param1:int) : Boolean
      {
         if(_lp13903 == null)
         {
            return false;
         }
         if(_lp13903._jr9311 == param1)
         {
            return true;
         }
         return false;
      }
      
      override public function destroy() : void
      {
         MovieClip(_hg11010[_th14376]).addFrameScript(0,null);
         var _loc1_:MovieClip = MovieClip(_hg11010[_xb6437]);
         if(_loc1_ != null && _loc1_.stage != null)
         {
            if(_loc1_.hitTestPoint(_loc1_.stage.mouseX,_loc1_.stage.mouseY))
            {
               _vc4824._tj8775();
            }
         }
         super.destroy();
         if(this._mp9994 != null)
         {
            this._mp9994.destroy();
            this._mp9994 = null;
         }
         if(this._gh3601 != null)
         {
            this._gh3601.destroy();
            this._gh3601 = null;
         }
      }
   }
}

