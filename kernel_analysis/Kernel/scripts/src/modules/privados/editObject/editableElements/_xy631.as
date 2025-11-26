package src.modules.privados.editObject.editableElements
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.color._pn12847;
   import src.allData.scene.skins.managerObjectSkineables._ui16110;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.allData.scene.typeEscenarios._bq10515;
   import src.modules.privados._bx10683;
   import src.utils.*;
   
   public class _xy631 extends _tc4557
   {
      
      private var _bl11315:_bq10515;
      
      private var _jr2324:_sy9767;
      
      private var _ec3819:_ld6048;
      
      public function _xy631(param1:String, param2:_bq10515, param3:_ld6048, param4:_sy9767, param5:_bx10683)
      {
         this._bl11315 = param2;
         this._jr2324 = param4;
         this._ec3819 = param3;
         super(param1,param5);
      }
      
      override public function _rx12234(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:_ys12811 = null;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc9_:int = 0;
         _xv14798.cleanChildsMovieclip(param1);
         var _loc6_:MovieClip = MovieClip(this._bl11315._wy2643.getChildByName(this._jr2324._hb13923));
         _loc2_ = _xv14798._dx10334(_loc6_);
         var _loc7_:int = _loc2_.numChildren;
         var _loc8_:ColorTransform = new ColorTransform();
         while(_loc9_ < this._jr2324._kr1527.length)
         {
            _loc3_ = _ys12811(this._jr2324._kr1527[_loc9_]);
            if(_loc3_._mn6947 != null)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc7_)
               {
                  _loc5_ = MovieClip(_loc2_.getChildAt(_loc4_));
                  if(_loc5_.name == _loc3_._hb13923)
                  {
                     _loc8_.color = _loc3_._mn6947.color;
                     _loc8_.blueMultiplier = -1;
                     _loc8_.redMultiplier = -1;
                     _loc8_.greenMultiplier = -1;
                     _loc5_.transform.colorTransform = _loc8_;
                  }
                  _loc4_++;
               }
            }
            _loc9_++;
         }
         param1.addChild(_loc2_);
         _loc2_.x = 0;
         _loc2_.y = 0;
         param1.scaleX = 1;
      }
      
      override public function _ef15943() : Boolean
      {
         return true;
      }
      
      override public function _pa13360() : Boolean
      {
         return false;
      }
      
      override public function _wr2641() : Boolean
      {
         return false;
      }
      
      override public function _hi3492() : Boolean
      {
         return false;
      }
      
      override public function _ve1617() : Boolean
      {
         return true;
      }
      
      override public function _eo13013(param1:_pn12847) : void
      {
         this._bl11315._af805(this._jr2324,param1);
      }
      
      override public function _ql12680(param1:_pn12847) : void
      {
         this._bl11315._af805(this._jr2324,param1);
      }
      
      override public function _ds11280() : Boolean
      {
         return true;
      }
      
      override public function _lh4081() : void
      {
         var _loc1_:_ui16110 = this._bl11315._pr16032._nc6280(this._ec3819.id);
         _vp454._gr14049(_loc1_);
      }
   }
}

