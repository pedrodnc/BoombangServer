package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ae15172
   {
      
      private static const _pc9654:String = "mcFichaError";
      
      private static const _jj4855:String = "mcBotonCerrar";
      
      private static const _ck688:String = "tfTitle";
      
      private static const _nw2788:String = "tfItem1";
      
      private static const _jj9031:String = "tfItem2";
      
      private var _xu3081:MovieClip;
      
      private var _xl7701:_qo7568;
      
      public function _ae15172(param1:MovieClip, param2:_qs10251, param3:Function)
      {
         super();
         this._xu3081 = MovieClip(param1[_pc9654]);
         this.init(param2,param3);
      }
      
      private function init(param1:_qs10251, param2:Function) : void
      {
         _yq8362._xl9503(this._xu3081[_ck688],param1._pi12935);
         _yq8362._xl9503(this._xu3081[_nw2788],param1._mi6427);
         _yq8362._xl9503(this._xu3081[_jj9031],param1._pg5961);
         this._xl7701 = new _qo7568(this._xu3081[_jj4855],param2,param1._fb11378);
      }
      
      public function destroy() : void
      {
         if(this._xl7701 != null)
         {
            this._xl7701.destroy();
            this._xl7701 = null;
         }
         this._xu3081 = null;
      }
      
      public function _hu12389() : void
      {
         if(this._xu3081.visible)
         {
            this._xu3081.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._xu3081.visible)
         {
            this._xu3081.visible = true;
         }
      }
   }
}

