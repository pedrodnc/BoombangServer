package src.allData.scene.typeEscenarios
{
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   
   public class SceneTypePrivate
   {
      
      private static var _ut4147:NavigationmenuModel;
      
      private static var isEnabled:Boolean = false;
      
      public function SceneTypePrivate()
      {
         super();
      }
      
      public static function _ou13089(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:String) : void
      {
         isEnabled = true;
         _ut4147 = new NavigationmenuModel();
         _ut4147._ls5877 = NavigationmenuModel._bn928(param1);
         _ut4147.count2 = NavigationmenuModel._bn928(param2);
         _ut4147._vn12441 = int(param3);
         _ut4147._un6586 = int(param4);
         _ut4147._eb11619 = int(param5);
         _ut4147._fq658 = int(param6);
         _ut4147.name = param7;
      }
      
      public static function _sl16071() : Boolean
      {
         return isEnabled;
      }
      
      public static function _ol8098() : NavigationmenuModel
      {
         return _ut4147.clone();
      }
      
      public static function get data() : NavigationmenuModel
      {
         var count2:NavigationmenuModel = new NavigationmenuModel();
         count2._ks12861 = NavigationmenuModel._rv11305;
         count2._ls5877 = _ut4147._ls5877;
         count2.count2 = _ut4147.count2;
         count2._lh4996 = 0;
         count2.name = _ut4147.name;
         count2._sc1342 = 0;
         count2._vn12441 = 0;
         count2._un6586 = _ut4147._un6586;
         count2._eb11619 = _ut4147._vn12441;
         count2._fq658 = _ut4147._eb11619;
         count2._rx11081 = 0;
         return count2;
      }
   }
}

