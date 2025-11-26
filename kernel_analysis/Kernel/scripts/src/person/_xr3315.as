package src.person
{
   import flash.display.MovieClip;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _xr3315
   {
      
      public function _xr3315()
      {
         super();
      }
      
      public static function _ju6982(param1:String) : MovieClip
      {
         return (_lh7543.get(_vy3822) as _vy3822)._bn15619("personsResources.swf",param1,false);
      }
      
      public static function _ku11706(param1:_um8624, param2:String, param3:int = 1) : MovieClip
      {
         var _loc4_:_ga7956 = _ga7956.getInstance();
         var _loc5_:MovieClip = (_lh7543.get(_vy3822) as _vy3822)._bn15619(_loc4_._ft6573(param1._jn11596),param2,false);
         _loc5_.gotoAndPlay(param3);
         _ei4944.getInstance()._jm6145(_loc5_,param1,param2,param3);
         return _loc5_;
      }
   }
}

