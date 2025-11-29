package src.modules.interfaz.fichaKeko.fichaStatics
{
   import flash.display.*;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.modules.interfaz.fichaKeko.paneles._pa7905;
   import src.utils.*;
   
   public class _cg12580 extends _pa7905
   {
      
      private static var _cm7059:int = 11;
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _xo8830:String = "mcStaticsBeso";
      
      private static const _ux5024:String = "mcStaticsTrago";
      
      private static const _ke11668:String = "mcStaticsFlor";
      
      private static const _pv6219:String = "mcStaticsCoco";
      
      private static const _if10121:String = "mcStaticsRingGame";
      
      private static const _th1339:String = "mcStaticsLianasGame";
      
      private static const _hd10466:String = "mcStaticsCocosGame";
      
      private static const _yn2813:String = "mcStaticsPunch";
      
      private static const _vu13817:String = "mcStaticsNinjaGame";
      
      private static const _ta337:String = "mcSwapPage";
      
      protected static const _yu1023:String = "mcStaticsBase";
      
      protected static const _ap9881:String = "mcStaticsBaseCantEnv";
      
      protected static const _qn8675:String = "mcStaticsBaseCantRec";
      
      protected static const _bn995:String = "mcStaticsBaseTextEnv";
      
      protected static const _oo2343:String = "mcStaticsBaseTextRec";
      
      protected static const _pq7099:String = "tfStaticsTitulo";
      
      protected static const _ac9658:String = "tfStaticsCantEnv";
      
      protected static const _pm557:String = "tfStaticsCantRec";
      
      protected static const _gj14714:String = "tfStaticsTextEnv";
      
      protected static const _yk15768:String = "tfStaticsTextRec";
      
      private static var _hp9397:int = 0;
      
      protected var _iw10156:Array;
      
      protected var _ad13290:_mv8563;
      
      protected var _js7490:_pn15182;
      
      protected var colorTransform:ColorTransform;
      
      public function _cg12580(param1:MovieClip, param2:MovieClip, param3:_mv8563, param4:Array, param5:_aw14744)
      {
         this.colorTransform = new ColorTransform();
         super(param1,param2,param5);
         this._iw10156 = param4;
         this._ad13290 = param3;
         this._js7490 = new _pn15182(param2[_ta337],param3._ce1429);
      }
      
      public static function _xf4254() : int
      {
         return _hp9397;
      }
      
      public static function _do13758() : void
      {
         ++_hp9397;
         if(_hp9397 >= _cm7059)
         {
            _hp9397 = 0;
         }
      }
      
      public static function _ne13111() : void
      {
         _hp9397 = 0;
      }
      
      public static function _ew13700(param1:MovieClip, param2:MovieClip, param3:_mv8563, param4:_aw14744) : _pa7905
      {
         switch(_hp9397)
         {
            case _qb57._oh5695:
               var _loc5_:_pa7905 = new _cg12580(param2,param1[_pd9423](_xo8830),param3,[0,1],param4);
               break;
            case _qb57._ij14791:
               _loc5_ = new _cg12580(param2,param1[_pd9423](_ux5024),param3,[2,3],param4);
               break;
            case _qb57._lj14471:
               _loc5_ = new _cg12580(param2,param1[_pd9423](_ke11668),param3,[4,5],param4);
               break;
            case _qb57._fu3499:
               _loc5_ = new _vd9015(param2,param1[_pd9423](_yn2813),param3,[6,7],param4);
               break;
            case _qb57._fm10949:
               _loc5_ = new _nx7755(param2,param1[_pd9423](_pv6219),param3,[8,9],param4);
               break;
            case _qb57._nq15630:
               _loc5_ = new _vf976(param2,param1[_pd9423](_if10121),param3,[10,11,12,13],param4);
               break;
            case _qb57._oj4688:
               _loc5_ = new _vf976(param2,param1[_pd9423](_th1339),param3,[14,15,16,17],param4);
               break;
            case _qb57._uu11842:
               _loc5_ = new _oj7394(param2,param1[_pd9423](_hd10466),param3,[18,19,20,21],param4);
               break;
            case _qb57._sq2045:
               _loc5_ = new _oj7394(param2,param1[_pd9423](_vu13817),param3,[22,23,24,25],param4);
               break;
            case _qb57._sq2046:
               _loc5_ = new _vf976(param2,param1[_pd9423]("mcStaticsBattleRoyale"),param3,[26,27,28,29],param4);
               break;
            case _qb57._sq2047:
               _loc5_ = new _vf976(param2,param1[_pd9423]("mcStaticsSimonDice"),param3,[30,31,32,33],param4);
         }
         return null;
      }
      
      override public function _db5584(param1:_kc6395) : void
      {
         super._db5584(param1);
         this._js7490._dn10392(param1);
         this._ie15491();
      }
      
      override public function destroy() : void
      {
         if(this._js7490 != null)
         {
            this._js7490.destroy();
            this._js7490 = null;
         }
         super.destroy();
      }
      
      override public function _ck5714(param1:_kc6395) : void
      {
         this.colorTransform.color = param1._mx10235;
         MovieClip(_hg11010[_yu1023]).transform.colorTransform = this.colorTransform;
         MovieClip(_hg11010[_ap9881]).transform.colorTransform = this.colorTransform;
         MovieClip(_hg11010[_qn8675]).transform.colorTransform = this.colorTransform;
         this.colorTransform.color = param1._rf5817;
         MovieClip(_hg11010[_bn995]).transform.colorTransform = this.colorTransform;
         MovieClip(_hg11010[_oo2343]).transform.colorTransform = this.colorTransform;
      }
      
      public function _ie15491() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this._iw10156.length)
         {
            _loc1_.push(this._ad13290._lp13903._ho1277[this._iw10156[_loc2_]]);
            _loc2_++;
         }
         _yq8362._xl9503(_hg11010[_pq7099],this._ad13290._wp6696[_hp9397]);
         _yq8362._xl9503(_hg11010[_gj14714],this._ad13290._im12039._ry12868);
         _yq8362._xl9503(_hg11010[_yk15768],this._ad13290._im12039._ix7873);
         _yq8362._xl9503(_hg11010[_ac9658],_loc1_[0]);
         _yq8362._xl9503(_hg11010[_pm557],_loc1_[1]);
      }
   }
}

