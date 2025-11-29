package src.modules.privados.editObject.editableElements
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.color._pn12847;
   import src.allData.scene._xd7248;
   import src.allData.scene.typeEscenarios._bq10515;
   import src.modules.privados._bx10683;
   import src.utils.*;
   
   public class _bf13578 extends _tc4557
   {
      
      private static const _di11766:String = "mcMiniColor";
      
      private var _bl11315:_bq10515;
      
      private var _mb2454:MovieClip;
      
      private var _yw3104:_xd7248;
      
      public function _bf13578(param1:String, param2:_bq10515, param3:MovieClip, param4:_xd7248, param5:_bx10683)
      {
         this._bl11315 = param2;
         this._mb2454 = param3;
         this._yw3104 = param4;
         super(param1,param5);
      }
      
      override public function _rx12234(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc10_:int = 0;
         _xv14798.cleanChildsMovieclip(param1);
         if(this._yw3104._hb13923 != "")
         {
            _loc2_ = MovieClip(this._bl11315._wy2643.getChildByName(this._yw3104._hb13923));
         }
         else
         {
            _loc2_ = MovieClip(this._bl11315._wy2643.getChildByName(_di11766 + this._yw3104._un11300));
         }
         var _loc7_:MovieClip = _xv14798._dx10334(_loc2_);
         var _loc8_:int = _loc7_.numChildren;
         var _loc9_:ColorTransform = new ColorTransform();
         while(_loc10_ < _loc8_)
         {
            _loc3_ = MovieClip(_loc7_.getChildAt(_loc10_));
            _loc4_ = _loc3_.name.slice(11,13);
            _loc5_ = int(_loc4_);
            if(_loc5_ == this._yw3104._un11300 || _loc3_.name.indexOf(this._yw3104._hb13923) >= 0)
            {
               _loc6_ = uint(this._bl11315._wy10098._jk5923(this._yw3104._un11300));
               _loc9_.color = _loc6_;
               _loc9_.blueMultiplier = -1;
               _loc9_.redMultiplier = -1;
               _loc9_.greenMultiplier = -1;
               _loc3_.transform.colorTransform = _loc9_;
            }
            _loc10_++;
         }
         param1.addChild(_loc7_);
         _loc7_.x = 0;
         _loc7_.y = 0;
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
         return false;
      }
      
      override public function _eo13013(param1:_pn12847) : void
      {
         this._bl11315._cp2768(param1);
      }
      
      override public function _ql12680(param1:_pn12847) : void
      {
         this._bl11315._cp2768(param1);
      }
      
      override public function _ds11280() : Boolean
      {
         return false;
      }
      
      override public function _tw11867() : _pn12847
      {
         return this._bl11315._wy10098._yy6948(this._yw3104._un11300);
      }
      
      override public function _lh4081() : void
      {
         var _loc1_:Array = this._bl11315._or5423();
         _vp454._ba944(_loc1_[0],_loc1_[1]);
      }
   }
}

