package src.tv.boombang.application.objects.drag
{
   import flash.events.Event;
   import flash.geom.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._px10602;
   
   public class _yc3885 extends _ut10448
   {
      
      public function _yc3885(param1:_px10602, param2:_il6324, param3:int, param4:int = 0, param5:int = 0)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function _ir4212(param1:Event) : void
      {
         var _loc2_:Object = _er10160();
         _sg10179(_loc2_._jo12299,_loc2_._qu12668);
         _nl5511();
         if(_loc2_._jo12299 < 1012 && _loc2_._qu12668 < 657 && _loc2_._jo12299 > 0 && _loc2_._qu12668 > 0)
         {
            _br9328.alpha = 1;
            _br9328.x = _loc2_._jo12299;
            _br9328.y = _loc2_._qu12668;
            _ji8333 = new Point(_loc2_._jo12299,_loc2_._qu12668);
            _db13109 = true;
            return;
         }
         _br9328.alpha = 0.5;
         _db13109 = false;
      }
   }
}

