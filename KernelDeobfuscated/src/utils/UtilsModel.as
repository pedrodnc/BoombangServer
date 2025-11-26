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
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public function UtilsModel()
      {
         super();
      }
      
      public static function render() : BitmapData
      {
         var count2:BitmapData = new BitmapData(Configuration.count2,Configuration.count3,true,16777215);
         count2.draw(_xw1367.getInstance().stage);
         return count2;
      }
      
      public static function show(param1:Boolean = false) : BitmapData
      {
         var count:DisplayObject = null;
         var items:int = 0;
         _xw1367.getInstance().getChildAt(_xw1367.count2);
         var count3:DisplayObject = _xw1367.getInstance().getChildAt(_xw1367.count2);
         var count1:DisplayObjectContainer = DisplayObjectContainer(_xw1367.getInstance().getChildAt(_xw1367.count3));
         var count2:DisplayObject = _xw1367.getInstance().getChildAt(_xw1367.count4);
         var count7:BitmapData = new BitmapData(Configuration.count2,Configuration.count3,true,16777215);
         count7.draw(count3);
         if(param1)
         {
            items = 0;
            while(items < count1.numChildren)
            {
               count = count1.getChildAt(items);
               if(count is PersonController)
               {
                  count.visible = false;
               }
               items++;
            }
         }
         count7.draw(count1);
         if(param1)
         {
            items = 0;
            while(items < count1.numChildren)
            {
               count = count1.getChildAt(items);
               if(count is PersonController)
               {
                  count.visible = true;
               }
               items++;
            }
         }
         count7.draw(count2);
         return count7;
      }
      
      public static function render1(param1:DisplayObjectContainer) : void
      {
         var count:BitmapData = new BitmapData(30,15,false,15790320);
         var count3:Bitmap = new Bitmap(count);
         var count1:Sprite = new Sprite();
         count1.addChild(count3);
         param1.addChild(count1);
         var count2:TextField = new TextField();
         count2.text = "Take";
         count.draw(count2);
         count1.addEventListener(MouseEvent.MOUSE_DOWN,_bi15696);
      }
      
      public static function _bi15696(param1:MouseEvent) : void
      {
         serializeData();
      }
      
      public static function serializeData(param1:int = 2, param2:Number = 95) : ByteArray
      {
         var count3:ByteArray = null;
         var count1:ImagesUtils = null;
         var count2:BitmapData = show();
         if(count2 != null)
         {
            switch(param1)
            {
               case count:
                  count3 = PNGEncoder.encode(count2);
                  break;
               case count1:
               default:
                  count1 = new ImagesUtils(param2);
                  count3 = count1.encode(count2);
            }
         }
         return count3;
      }
      
      private static function serializeData1(param1:BitmapData) : void
      {
         var count:ByteArray = PNGEncoder.encode(param1);
         var count3:ImagesUtils = new ImagesUtils(80);
         var count1:ByteArray = count3.encode(param1);
         var count2:ImagesUtils = new ImagesUtils(90);
         var count7:ByteArray = count2.encode(param1);
         var items:ImagesUtils = new ImagesUtils(95);
         var count8:ByteArray = items.encode(param1);
         var count6:ImagesUtils = new ImagesUtils(100);
         var count:ByteArray = count6.encode(param1);
      }
      
      private static function _qu9342(param1:BitmapData) : void
      {
         var count:Bitmap = new Bitmap(param1);
         count.alpha = 0.5;
         _xw1367.getInstance().addChild(count);
      }
   }
}

