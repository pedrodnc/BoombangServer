package src.utils.showObjects
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import src.allData.catObjects._uq7753;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _ex13074
   {
      
      private var _ml5932:MovieClip;
      
      private var _sl11700:_uq7753;
      
      private var _dl3635:MovieClip;
      
      public function _ex13074(param1:MovieClip, param2:_uq7753, param3:MovieClip)
      {
         super();
         this._ml5932 = param1;
         this._sl11700 = param2;
         this._dl3635 = param3;
      }
      
      public function destroy() : void
      {
         _mg605.getInstance().removeEventListener(_jj10306._bs1884,this._hb4573);
      }
      
      public function show() : void
      {
         var _loc1_:MovieClip = null;
         if(this._sl11700._nk15832 != null)
         {
            this._bg5434();
         }
         else
         {
            _xv14798.cleanChildsMovieclip(this._ml5932);
            _loc1_ = _xv14798._so3313(this._dl3635);
            this._ml5932.addChild(_loc1_);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            if(this._sl11700._su5362)
            {
               (_lh7543.get(_hc11274) as _hc11274)._vv13029([this._sl11700._le1402],this._bg5434);
            }
            else
            {
               _mg605.getInstance().addEventListener(_jj10306._bs1884,this._hb4573);
               _mg605.getInstance()._dc2044(this._sl11700);
            }
         }
      }
      
      private function _bg5434() : void
      {
         _xv14798.cleanChildsMovieclip(this._ml5932);
         this._ml5932.addChild(this._er6996(this._sl11700._nk15832));
      }
      
      private function _hb4573(param1:_jj10306) : void
      {
         var _loc2_:_uq7753 = param1.obj.obj._sl11700;
         if(this._sl11700.id == _loc2_.id)
         {
            _mg605.getInstance().removeEventListener(_jj10306._bs1884,this._hb4573);
            this._bg5434();
         }
      }
      
      private function _er6996(param1:DisplayObject) : Bitmap
      {
         var _loc2_:Bitmap = _xv14798._wl6502(param1);
         _loc2_.x = -_loc2_.width / 2;
         _loc2_.y = -_loc2_.height / 2;
         _loc2_.smoothing = true;
         return _loc2_;
      }
   }
}

