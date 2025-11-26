package src.modules.privados.editObject.editableElements
{
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.sceneObjects.dataObjects._hl15578;
   import src.modules.privados._bx10683;
   import src.tv.boombang.core.communications.*;
   import src.utils.*;
   
   public class _tb12838 extends _tc4557
   {
      
      private var _pd4457:_hl15578;
      
      public function _tb12838(param1:_hl15578, param2:_bx10683)
      {
         super(param1._sl11700.name,param2);
         this._pd4457 = param1;
      }
      
      public function get _rs14922() : _hl15578
      {
         return this._pd4457;
      }
      
      override public function _rx12234(param1:MovieClip) : void
      {
         _xv14798.cleanChildsMovieclip(param1);
         var _loc2_:Bitmap = this._pd4457._vd13151(68);
         param1.addChild(_loc2_);
         if(this._pd4457._iy10701 == 0)
         {
            param1.scaleX = 1;
         }
         else
         {
            param1.scaleX = -1;
         }
      }
      
      override public function _uu12953() : Boolean
      {
         if(this._pd4457._sl11700._dv13852 == _uq7753._km4276)
         {
            return true;
         }
         return false;
      }
      
      override public function _gr1722() : void
      {
         var _loc1_:uint = 0;
         if(this._pd4457._dd6502 < this._pd4457._hc15795)
         {
            _loc1_ = this._pd4457._dd6502 + 1;
            _kr10933._db6249([_te13472._ia1486,_te13472._qy2519],[this._pd4457._hw14129,_loc1_]);
         }
      }
      
      override public function _uj10964() : void
      {
         var _loc1_:uint = 0;
         if(this._pd4457._dd6502 > 0)
         {
            _loc1_ = this._pd4457._dd6502 - 1;
            _kr10933._db6249([_te13472._ia1486,_te13472._qy2519],[this._pd4457._hw14129,_loc1_]);
         }
      }
      
      override public function _ef15943() : Boolean
      {
         if(this._pd4457.color.length > 0 && this._pd4457._sl11700._dv13852 != _uq7753._rm14205 && this._pd4457._sl11700._dv13852 != _uq7753._jh10992 && this._pd4457._sl11700._dv13852 != _uq7753._kr1990 && this._pd4457._sl11700._dv13852 != _uq7753._of16060)
         {
            return true;
         }
         return false;
      }
      
      override public function _pa13360() : Boolean
      {
         return true;
      }
      
      override public function _wr2641() : Boolean
      {
         var _loc1_:Boolean = Boolean(this._pd4457._sl11700._oj14094);
         if(_loc1_ && Boolean(this._pd4457._rn2919()))
         {
            _loc1_ = Boolean(this._pd4457._gn15451()._BaseObjectsAllowsFlip());
         }
         return _loc1_;
      }
      
      override public function _hi3492() : Boolean
      {
         if(this._pd4457._sl11700._cg6545[_uq7753._wl5344] == 0 && this._pd4457._sl11700._cg6545[_uq7753._ji11043] == 0)
         {
            return false;
         }
         return true;
      }
      
      override public function _ve1617() : Boolean
      {
         return false;
      }
      
      override public function _eo13013(param1:_pn12847) : void
      {
         this._pd4457._rr14459();
      }
      
      override public function _ql12680(param1:_pn12847) : void
      {
         this._pd4457.color[param1._un11300] = param1;
         this._pd4457._rr14459();
      }
      
      override public function _lm12729(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         if(this._pd4457._rn2919())
         {
            _loc2_ = this._pd4457._gn15451()._BaseObjectsGetMovieClipEditObjects();
            if(_loc2_ != null)
            {
               _xv14798.cleanChildsMovieclip(param1);
               param1.addChild(_loc2_);
            }
         }
      }
      
      override public function _ds11280() : Boolean
      {
         return true;
      }
      
      override public function _lh4081() : void
      {
         var _loc1_:Array = _pn12847._gl15701(this._pd4457.color);
         _vp454._bv13571(this._pd4457._hw14129,_loc1_[0],_loc1_[1],this._pd4457._rm6352);
      }
   }
}

