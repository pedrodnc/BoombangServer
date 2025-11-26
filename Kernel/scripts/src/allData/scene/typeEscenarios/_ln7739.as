package src.allData.scene.typeEscenarios
{
   import flash.display.*;
   import src.*;
   import src.allData.scene.*;
   import src.tv.boombang.core.datatypes.navigationMenu._kn4108;
   
   public class _ln7739 extends _il6324
   {
      
      public function _ln7739(param1:_kn4108, param2:int, param3:MovieClip, param4:XML)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function _pr4733() : void
      {
         var _loc1_:_lr1664 = null;
         var _loc2_:MovieClip = null;
         var _loc7_:int = 0;
         var _loc4_:Array = _mq2583._co4151(_ir13656);
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:_xw1367 = _xw1367.getInstance();
         while(_loc7_ < _loc5_)
         {
            _loc1_ = _lr1664(_loc4_[_loc7_]);
            _loc2_ = MovieClip(_wy2643.getChildByName(_loc1_.name));
            if(_loc2_.numChildren > 0)
            {
               var _loc3_:DisplayObject = DisplayObject(_loc2_.getChildAt(0));
               null.x -= _loc1_._cd7708.x;
               null.y -= _loc1_._cd7708.y;
               _loc2_.x += _loc1_._cd7708.x;
               _loc2_.y += _loc1_._cd7708.y;
            }
            if(_loc1_.locz > 0)
            {
               _loc2_.locz = _loc1_.locz;
            }
            _loc6_._uc3178(_loc2_,_loc1_._ok7591);
            _loc7_++;
         }
      }
      
      override public function _qk13047() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:_xw1367 = null;
         var _loc4_:int = 0;
         var _loc5_:_lr1664 = null;
         if(_ir13656 != null)
         {
            _loc1_ = _mq2583._co4151(_ir13656);
            _loc2_ = int(_loc1_.length);
            _loc3_ = _xw1367.getInstance();
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = _lr1664(_loc1_[_loc4_]);
               _loc3_._bi13167(_loc5_.name,_loc5_._ok7591);
               _loc4_++;
            }
         }
      }
      
      override public function _ct15269() : String
      {
         return "public";
      }
   }
}

