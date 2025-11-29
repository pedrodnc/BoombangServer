package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.*;
   
   public class _ky6263
   {
      
      private static const _hl12722:String = "mcEnviando";
      
      private static const _nk618:String = "tfEnviando";
      
      private var _nj8677:Function;
      
      private var _rv6670:MovieClip;
      
      private var _oy10636:MovieClip;
      
      private var _ky3006:_qs10251;
      
      public function _ky6263(param1:MovieClip, param2:_qs10251, param3:Function)
      {
         super();
         this._ky3006 = param2;
         this._rv6670 = MovieClip(param1[_hl12722]);
         this._nj8677 = param3;
         this._si4133();
      }
      
      public function destroy() : void
      {
         this._rv6670 = null;
         this._oy10636 = null;
         this._nj8677 = null;
         this._ky3006 = null;
      }
      
      public function _hu12389() : void
      {
         if(this._rv6670.visible)
         {
            this._rv6670.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._rv6670.visible)
         {
            this._rv6670.visible = true;
         }
      }
      
      public function _si4133() : void
      {
         _yq8362._xl9503(this._rv6670[_nk618],this._ky3006._vo9020);
      }
   }
}

