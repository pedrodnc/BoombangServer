package src.modules.interfaz.fichaKeko.fichaStatics
{
   import flash.display.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.utils.*;
   
   public class _oj7394 extends _vf976
   {
      
      protected static const _pq7099:String = "tfStaticsTitulo";
      
      private static const _oo1021:String = "mcStaticsBarraLevel";
      
      private static const _db13185:String = "mcStaticsBarraProgress";
      
      private static const _kh13754:String = "barra_";
      
      private static const _eg9362:int = 1;
      
      private static const _iy1982:String = "progresoValue";
      
      private static const _ly2497:String = "tfStaticsLevelText";
      
      private static const _ti4532:String = "tfStaticsValue";
      
      public function _oj7394(param1:MovieClip, param2:MovieClip, param3:_mv8563, param4:Array, param5:_aw14744)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function _ck5714(param1:_kc6395) : void
      {
         colorTransform.color = param1._mx10235;
         MovieClip(_hg11010[_yu1023]).transform.colorTransform = colorTransform;
         MovieClip(_hg11010[_oo1021]).transform.colorTransform = colorTransform;
         MovieClip(_hg11010[_db13185]).transform.colorTransform = colorTransform;
         colorTransform.color = param1._rf5817;
         MovieClip(_hg11010[_kh13754 + "0"][_iy1982]).transform.colorTransform = colorTransform;
      }
      
      override public function _ie15491() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < _iw10156.length)
         {
            _loc1_.push(_ad13290._lp13903._ho1277[_iw10156[_loc2_]]);
            _loc2_++;
         }
         var _loc3_:int = int(_loc1_[0]);
         var _loc4_:int = int(_loc1_[1]);
         var _loc5_:int = int(_loc1_[2]);
         var _loc6_:int = int(_loc1_[3]);
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         if(_loc6_ <= 0)
         {
            _loc6_ = 1;
            _loc4_ = 0;
         }
         _loc4_ = _loc4_ > _loc6_ ? _loc6_ : _loc4_;
         if(_loc5_ >= _loc6_)
         {
            _loc5_ = _loc6_ - 1;
         }
         _yq8362._xl9503(_hg11010[_pq7099],_ad13290._wp6696[_cg12580._xf4254()]);
         _yq8362._xl9503(_hg11010[_ly2497],_ad13290._im12039._gx13796 + _loc3_);
         _yq8362._xl9503(_hg11010[_ti4532],_loc4_ + "/" + _loc6_);
         var _loc7_:MovieClip = MovieClip(_hg11010[_kh13754 + "0"][_iy1982]);
         _loc7_.x -= _loc7_.width * (_loc6_ - _loc4_) / (_loc6_ - _loc5_);
      }
   }
}

