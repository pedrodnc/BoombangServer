package src.utils.boombang.TakePhoto
{
   import flash.display.*;
   import src.utils.*;
   
   public class TakephotoUtils
   {
      
      private static const _hl12722:String = "mcEnviando";
      
      private static const _nk618:String = "tfEnviando";
      
      private var _nj8677:Function;
      
      private var _rv6670:MovieClip;
      
      private var _oy10636:MovieClip;
      
      private var _ky3006:TakephotoModel;
      
      public function TakephotoUtils(param1:MovieClip, param2:TakephotoModel, param3:Function)
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
         UtilsUtils._xl9503(this._rv6670[_nk618],this._ky3006._vo9020);
      }
   }
}

