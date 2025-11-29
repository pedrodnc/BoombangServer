package src.allData.scene.typeEscenarios
{
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   
   public class _il8993
   {
      
      private static var _ut4147:_kn4108;
      
      private static var _ij4980:Boolean = false;
      
      public function _il8993()
      {
         super();
      }
      
      public static function _ou13089(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:String) : void
      {
         _ij4980 = true;
         _ut4147 = new _kn4108();
         _ut4147._ls5877 = _hj3512._bn928(param1);
         _ut4147._kb5211 = _rj12650._bn928(param2);
         _ut4147._vn12441 = int(param3);
         _ut4147._un6586 = int(param4);
         _ut4147._eb11619 = int(param5);
         _ut4147._fq658 = int(param6);
         _ut4147.name = param7;
      }
      
      public static function _sl16071() : Boolean
      {
         return _ij4980;
      }
      
      public static function _ol8098() : _kn4108
      {
         return _ut4147.clone();
      }
      
      public static function get data() : _kn4108
      {
         var _loc1_:_kn4108 = new _kn4108();
         _loc1_._ks12861 = _cd9992._rv11305;
         _loc1_._ls5877 = _ut4147._ls5877;
         _loc1_._kb5211 = _ut4147._kb5211;
         _loc1_._lh4996 = 0;
         _loc1_.name = _ut4147.name;
         _loc1_._sc1342 = 0;
         _loc1_._vn12441 = 0;
         _loc1_._un6586 = _ut4147._un6586;
         _loc1_._eb11619 = _ut4147._vn12441;
         _loc1_._fq658 = _ut4147._eb11619;
         _loc1_._rx11081 = 0;
         return _loc1_;
      }
   }
}

