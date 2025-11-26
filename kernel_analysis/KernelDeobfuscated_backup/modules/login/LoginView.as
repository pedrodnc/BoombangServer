package src.modules.login
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _iu11270
   {
      
      private static const _ck688:String = "tfTitle";
      
      private static const _dt16115:String = "tfDescription";
      
      private static const _rt11053:String = "mcAdvertencia";
      
      private static const _gu10471:String = "mcClose";
      
      private var _lv1695:MovieClip;
      
      private var _rr3911:_kg183;
      
      public function _iu11270(param1:MovieClip, param2:_wi878)
      {
         super();
         this._lv1695 = param1[_rt11053];
         this._qx2504(param2);
         this._rr3911 = new _kg183(this._lv1695[_gu10471],this._hu12389);
         this._hu12389();
      }
      
      public function destroy() : void
      {
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
         this._lv1695 = null;
      }
      
      private function _qx2504(param1:_wi878) : void
      {
         _yq8362._xl9503(this._lv1695[_ck688],param1._wd14697);
         _yq8362._xl9503(this._lv1695[_dt16115],param1._mx576);
         TextField(this._lv1695[_ck688]).mouseEnabled = false;
         TextField(this._lv1695[_dt16115]).mouseEnabled = false;
      }
      
      public function _db5584() : void
      {
         if(!this._lv1695.visible)
         {
            this._lv1695.visible = true;
         }
      }
      
      public function _hu12389() : void
      {
         if(this._lv1695.visible)
         {
            this._lv1695.visible = false;
         }
      }
   }
}

