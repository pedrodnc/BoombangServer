package src.modules.interfaz.fichaKeko.hobbies
{
   import flash.display.*;
   import flash.geom.*;
   import flash.text.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.modules.interfaz.fichaKeko.fichaStatics.*;
   import src.modules.interfaz.fichaKeko.paneles._pa7905;
   import src.utils.*;
   
   public class _vf12396 extends _pa7905
   {
      
      private static const _ou1404:int = 3;
      
      private static const _ta337:String = "mcSwapPage";
      
      private static const _pb1539:String = "mcMiniBaseHobbie";
      
      private static const _rw11007:String = "mcBaseHobbies";
      
      private static const _ff1311:String = "mcCaretoHobbie";
      
      private static const _xo15472:String = "mcFondoCaretoHobbie";
      
      private static const _jb5065:String = "tfHobbies";
      
      private static var _ev13962:int = 0;
      
      protected var _qe3110:_ty8078;
      
      protected var _js7490:_pn15182;
      
      protected var _vx770:Array;
      
      protected var colorTransform:ColorTransform;
      
      protected var _ut9257:MovieClip;
      
      protected var _kn15197:MovieClip;
      
      protected var _xg13846:MovieClip;
      
      protected var _pc3151:TextField;
      
      public function _vf12396(param1:MovieClip, param2:MovieClip, param3:_ty8078, param4:_aw14744)
      {
         this._vx770 = new Array();
         this.colorTransform = new ColorTransform();
         super(param1,param2,param4);
         this._qe3110 = param3;
         this._ut9257 = MovieClip(param2.getChildByName(_rw11007));
         this._kn15197 = MovieClip(param2.getChildByName(_ff1311));
         this._xg13846 = MovieClip(this._kn15197.getChildByName(_xo15472));
         this._pc3151 = TextField(param2.getChildByName(_jb5065));
         this._js7490 = new _pn15182(param2[_ta337],this._dl13456);
      }
      
      override public function destroy() : void
      {
         var _loc1_:_pm4012 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._vx770.length)
         {
            _loc1_ = _pm4012(this._vx770[_loc2_]);
            _loc1_.destroy();
            _loc1_ = null;
            _loc2_++;
         }
         if(this._js7490 != null)
         {
            this._js7490.destroy();
            this._js7490 = null;
         }
         this._kj12276();
         super.destroy();
      }
      
      override public function _db5584(param1:_kc6395) : void
      {
         super._db5584(param1);
         this._th185(param1);
      }
      
      private function _th185(param1:_kc6395) : void
      {
         var _loc2_:_pm4012 = null;
         var _loc4_:int = 0;
         var _loc3_:Array = this._cg1276();
         this._vx770 = new Array();
         while(_loc4_ < _ou1404)
         {
            _loc2_ = new _pm4012(_loc4_,param1,this._qe3110._qo15312,_loc3_[_loc4_],this._qe3110._im12039._ue3031,_hg11010[_pb1539 + _loc4_],this._pu2953);
            this._vx770.push(_loc2_);
            _loc4_++;
         }
         this._tr5141();
      }
      
      private function _dl13456() : void
      {
         this._kj12276();
         ++_ev13962;
         if(_ev13962 >= 2)
         {
            _ev13962 = 0;
         }
         this._tr5141();
      }
      
      private function _pu2953(param1:int) : void
      {
         this._kj12276();
      }
      
      override public function _ck5714(param1:_kc6395) : void
      {
         this._js7490._dn10392(param1);
         this.colorTransform.color = param1._mx10235;
         this._ut9257.transform.colorTransform = this.colorTransform;
         this._xg13846.transform.colorTransform = this.colorTransform;
      }
      
      public function _tr5141() : void
      {
         var _loc1_:_pm4012 = null;
         var _loc3_:int = 0;
         var _loc2_:Array = this._cg1276();
         if(_ev13962 == 0)
         {
            _yq8362._xl9503(this._pc3151,this._qe3110._im12039._ja13179);
         }
         else
         {
            _yq8362._xl9503(this._pc3151,this._qe3110._im12039._ja5842);
         }
         while(_loc3_ < this._vx770.length)
         {
            _loc1_ = _pm4012(this._vx770[_loc3_]);
            _loc1_._no3546(_loc2_[_loc3_]);
            _loc3_++;
         }
         this._kn15197.gotoAndStop(_ev13962 + 1);
      }
      
      public function _bh14714(param1:int, param2:int, param3:int, param4:String) : void
      {
         if(this._qe3110._lp13903.id != param1)
         {
            return;
         }
         if(_ev13962 != param2)
         {
            return;
         }
         var _loc5_:Array = this._cg1276();
         _loc5_[param3] = param4;
         this._tr5141();
      }
      
      public function _kj12276() : void
      {
         var _loc1_:_pm4012 = null;
         var _loc2_:Boolean = false;
         var _loc4_:int = 0;
         var _loc3_:Array = this._cg1276();
         while(_loc4_ < this._vx770.length)
         {
            _loc1_ = _pm4012(this._vx770[_loc4_]);
            _loc2_ = _loc1_._vp10797();
            if(_loc2_)
            {
               _loc3_[_loc4_] = _loc1_._yy11727();
               this._qe3110._dv14621._ex11978(_ev13962,_loc4_,_loc3_[_loc4_]);
            }
            _loc4_++;
         }
      }
      
      private function _cg1276() : Array
      {
         if(_ev13962 == 0)
         {
            return this._qe3110._lp13903.hobbies;
         }
         return this._qe3110._lp13903._en11081;
      }
   }
}

