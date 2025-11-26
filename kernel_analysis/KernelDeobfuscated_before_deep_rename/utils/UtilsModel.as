package src.utils
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.ByteArray;
   import src.*;
   import src.config.*;
   import src.person.*;
   import src.utils.images.*;
   
   public class UtilsModel
   {
      
      public static const _en12910:int = 1;
      
      public static const _ov2170:int = 2;
      
      public function UtilsModel()
      {
         super();
      }
      
      public static function _xk2975() : BitmapData
      {
         var _loc1_:BitmapData = new BitmapData(Configuration._wc13865,Configuration._kl10731,true,16777215);
         _loc1_.draw(_xw1367.getInstance().stage);
         return _loc1_;
      }
      
      public static function _sy7006(param1:Boolean = false) : BitmapData
      {
         var _loc2_:DisplayObject = null;
         var _loc7_:int = 0;
         _xw1367.getInstance().getChildAt(_xw1367._vn1830);
         var _loc3_:DisplayObject = _xw1367.getInstance().getChildAt(_xw1367._vn1830);
         var _loc4_:DisplayObjectContainer = DisplayObjectContainer(_xw1367.getInstance().getChildAt(_xw1367._jf1741));
         var _loc5_:DisplayObject = _xw1367.getInstance().getChildAt(_xw1367._co9468);
         var _loc6_:BitmapData = new BitmapData(Configuration._wc13865,Configuration._kl10731,true,16777215);
         _loc6_.draw(_loc3_);
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc4_.numChildren)
            {
               _loc2_ = _loc4_.getChildAt(_loc7_);
               if(_loc2_ is PersonController)
               {
                  _loc2_.visible = false;
               }
               _loc7_++;
            }
         }
         _loc6_.draw(_loc4_);
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc4_.numChildren)
            {
               _loc2_ = _loc4_.getChildAt(_loc7_);
               if(_loc2_ is PersonController)
               {
                  _loc2_.visible = true;
               }
               _loc7_++;
            }
         }
         _loc6_.draw(_loc5_);
         return _loc6_;
      }
      
      public static function _bv104(param1:DisplayObjectContainer) : void
      {
         var _loc2_:BitmapData = new BitmapData(30,15,false,15790320);
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         var _loc4_:Sprite = new Sprite();
         _loc4_.addChild(_loc3_);
         param1.addChild(_loc4_);
         var _loc5_:TextField = new TextField();
         _loc5_.text = "Take";
         _loc2_.draw(_loc5_);
         _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,_bi15696);
      }
      
      public static function _bi15696(param1:MouseEvent) : void
      {
         _ae15158();
      }
      
      public static function _ae15158(param1:int = 2, param2:Number = 95) : ByteArray
      {
         var _loc3_:ByteArray = null;
         var _loc4_:ImagesUtils = null;
         var _loc5_:BitmapData = _sy7006();
         if(_loc5_ != null)
         {
            switch(param1)
            {
               case _en12910:
                  _loc3_ = PNGEncoder.encode(_loc5_);
                  break;
               case _ov2170:
               default:
                  _loc4_ = new ImagesUtils(param2);
                  _loc3_ = _loc4_.encode(_loc5_);
            }
         }
         return _loc3_;
      }
      
      private static function _ie14699(param1:BitmapData) : void
      {
         var _loc2_:ByteArray = PNGEncoder.encode(param1);
         var _loc3_:ImagesUtils = new ImagesUtils(80);
         var _loc4_:ByteArray = _loc3_.encode(param1);
         var _loc5_:ImagesUtils = new ImagesUtils(90);
         var _loc6_:ByteArray = _loc5_.encode(param1);
         var _loc7_:ImagesUtils = new ImagesUtils(95);
         var _loc8_:ByteArray = _loc7_.encode(param1);
         var _loc9_:ImagesUtils = new ImagesUtils(100);
         var _loc10_:ByteArray = _loc9_.encode(param1);
      }
      
      private static function _qu9342(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1);
         _loc2_.alpha = 0.5;
         _xw1367.getInstance().addChild(_loc2_);
      }
   }
}

