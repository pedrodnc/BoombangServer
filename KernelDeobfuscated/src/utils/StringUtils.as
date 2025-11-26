package src.utils
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.color.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.tv.boombang.application.global.gui.components.*;
   
   public class StringUtils
   {
      
      private static const textString:String = "locz";
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const TOP_LEFT:String = "TopLeft";
      
      public static const TOP:String = "Top";
      
      public static const TOP_RIGHT:String = "TopRight";
      
      public static const RIGHT:String = "Right";
      
      public static const BOTTOM_RIGHT:String = "BottomRight";
      
      public static const BOTTOM:String = "Bottom";
      
      public static const BOTTOM_LEFT:String = "BottomLeft";
      
      public static const LEFT:String = "Left";
      
      public function StringUtils()
      {
         super();
      }
      
      public static function _tm12465(param1:MovieClip, param2:String) : int
      {
         var count3:FrameLabel = null;
         var count2:int = 0;
         var count1:Array = param1.currentLabels;
         while(count2 < count1.length)
         {
            count3 = count1[count2];
            if(count3.name == param2)
            {
               return count3.frame;
            }
            count2++;
         }
         return -1;
      }
      
      public static function stop(param1:MovieClip, param2:String) : void
      {
         var count3:int = _tm12465(param1,param2);
         if(count3 != -1)
         {
            param1.gotoAndStop(param2);
         }
      }
      
      public static function cleanChildsMovieclip(param1:MovieClip) : void
      {
         var count3:int = 0;
         if(param1 == null)
         {
            return;
         }
         var count:int = param1.numChildren;
         while(count3 < count)
         {
            param1.removeChildAt(0);
            count3++;
         }
      }
      
      public static function getList(param1:Array) : Array
      {
         var count:Array = null;
         var count3:int = 0;
         var count1:int = 0;
         var items:int = 0;
         var count2:Array = new Array();
         if(param1 == null || param1.length == 0)
         {
            return count2;
         }
         var count7:int = int(param1.length);
         while(items < count7)
         {
            if(param1[items] == null)
            {
               count = new Array();
            }
            else
            {
               count3 = int(param1[items].length);
               count = new Array();
               count1 = 0;
               while(count1 < count3)
               {
                  count.push(param1[items][count1]);
                  count1++;
               }
            }
            count2.push(count);
            items++;
         }
         return count2;
      }
      
      public static function getList1(param1:Array) : Array
      {
         var count1:int = 0;
         var count:Array = new Array();
         var count3:int = int(param1.length);
         while(count1 < count3)
         {
            count.push(param1[count1]);
            count1++;
         }
         return count;
      }
      
      private static function _yx60(param1:Number, param2:Number, param3:Number) : Number
      {
         if(param2 <= param3)
         {
            if(param1 <= param2)
            {
               return param1;
            }
            return param2;
         }
         if(param1 <= param3)
         {
            return param1;
         }
         return param3;
      }
      
      private static function _pf13420(param1:Number, param2:Number, param3:Number) : Number
      {
         if(param2 >= param3)
         {
            if(param1 >= param2)
            {
               return param1;
            }
            return param2;
         }
         if(param1 >= param3)
         {
            return param1;
         }
         return param3;
      }
      
      private static function getList2(param1:Number, param2:Number, param3:Number) : Array
      {
         var count1:Number = NaN;
         var count2:Number = NaN;
         var count7:Number = NaN;
         var items:Number = NaN;
         var count8:Number = NaN;
         var count6:Number = NaN;
         count1 = Number(_yx60(param1,param2,param3));
         count6 = count2 = Number(_pf13420(param1,param2,param3));
         count7 = count2 - count1;
         if(count7 == 0)
         {
            items = 0;
            count8 = 0;
            return [items,count8,count6];
         }
         if(count2 != 0)
         {
            count8 = count7 / count2;
            if(param1 == count2)
            {
               items = (param2 - param3) / count7;
            }
            else if(param2 == count2)
            {
               items = 2 + (param3 - param1) / count7;
            }
            else
            {
               items = 4 + (param1 - param2) / count7;
            }
            items *= 60;
            if(items < 0)
            {
               items += 360;
            }
            return [items,count8,count6];
         }
         count8 = 0;
         items = -1;
         return [items,count8,count6];
      }
      
      private static function _nl13417(param1:uint) : uint
      {
         var count:uint = param1;
         if(count < 0)
         {
            count = 0;
         }
         else if(255 < count)
         {
            count = 255;
         }
         return count;
      }
      
      private static function _eo15757(param1:uint) : Number
      {
         var count:Number = param1 >> 16 & 0xFF;
         var count3:Number = param1 >> 8 & 0xFF;
         var count1:Number = param1 & 0xFF;
         var count2:Number = Math.sqrt(count * count * 0.241 + count3 * count3 * 0.691 + count1 * count1 * 0.068);
         return count2 / 255;
      }
      
      public static function getList3(param1:uint) : Array
      {
         var count:ColorTransform = new ColorTransform();
         count.color = param1;
         var count3:Object = getList2(count.redOffset,count.greenOffset,count.blueOffset);
         var count1:Point = Point.polar(count3[1],count3[0] * Math.PI / 180);
         count1.x *= 0.5;
         count1.y *= 0.5;
         count1.x = (count1.x + 0.5) * 144;
         count1.y = (1 - (count1.y + 0.5)) * 144;
         return [Math.ceil(count1.x),Math.ceil(count1.y),Math.ceil(count3[2] * 100 / 255)];
      }
      
      public static function _dm1958(param1:uint, param2:Number, param3:uint = 0) : uint
      {
         var count1:ColorTransform = new ColorTransform();
         count1.color = param3;
         var count2:ColorTransform = new ColorTransform();
         count2.color = param1;
         count2.redOffset = count2.redOffset * param2 + count1.redOffset * (1 - param2);
         count2.greenOffset = count2.greenOffset * param2 + count1.greenOffset * (1 - param2);
         count2.blueOffset = count2.blueOffset * param2 + count1.blueOffset * (1 - param2);
         var count7:Object = getList3(count2.color);
         return count2.color;
      }
      
      public static function _um4715(param1:uint) : ColorTransform
      {
         var count:ColorTransform = new ColorTransform();
         count.color = param1;
         return count;
      }
      
      public static function _so3313(param1:DisplayObject) : MovieClip
      {
         var count:Class = null;
         count = Object(param1).constructor;
         var count3:MovieClip = new count();
         count3.name = param1.name;
         return count3;
      }
      
      public static function _dx10334(param1:DisplayObject) : MovieClip
      {
         var count:Class = null;
         count = Object(param1).constructor;
         var count3:MovieClip = new count();
         if(param1.transform.colorTransform != null)
         {
            count3.transform.colorTransform = param1.transform.colorTransform;
         }
         if(param1.transform.matrix != null)
         {
            count3.transform.matrix = param1.transform.matrix;
         }
         count3.filters = param1.filters;
         count3.cacheAsBitmap = param1.cacheAsBitmap;
         count3.name = param1.name;
         count3.opaqueBackground = param1.opaqueBackground;
         return count3;
      }
      
      public static function _xl10571(param1:Object) : Object
      {
         var count:Class = null;
         count = param1.constructor;
         return new count();
      }
      
      public static function render(param1:DisplayObject) : BitmapData
      {
         var count:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         count.draw(param1,new Matrix());
         return count;
      }
      
      public static function render1(param1:DisplayObject) : Bitmap
      {
         var count:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         count.draw(param1,new Matrix());
         return new Bitmap(count);
      }
      
      public static function _tv8248(param1:MovieClip) : void
      {
         var count:MovieClip = null;
         var count3:int = 0;
         param1.play();
         while(count3 < param1.numChildren)
         {
            count = param1.getChildAt(count3) as MovieClip;
            if(count != null)
            {
               _tv8248(count);
            }
            count3++;
         }
      }
      
      public static function stop1(param1:MovieClip) : void
      {
         var count:MovieClip = null;
         var count3:int = 0;
         param1.stop();
         while(count3 < param1.numChildren)
         {
            count = param1.getChildAt(count3) as MovieClip;
            if(count != null)
            {
               stop1(count);
            }
            count3++;
         }
      }
      
      public static function render2(param1:MovieClip, param2:Number) : Bitmap
      {
         var count2:MovieClip = MovieClip(param1.getChildByName(LoadobjectModel.urlString));
         var count7:MovieClip = MovieClip(count2.getChildByName(LoadobjectModel.urlString1));
         var items:BitmapData = new BitmapData(count7.width,count7.height,true,0);
         var count8:Matrix = new Matrix();
         count8.translate(-count7.x,-count7.y);
         items.draw(count2,count8,null,null,null,true);
         var count6:Bitmap = new Bitmap(items,PixelSnapping.ALWAYS,true);
         if(param2 != 1)
         {
            count6.scaleX = count6.scaleY = param2;
            var count3:BitmapData = new BitmapData(count7.width * param2,count7.height * param2,true,0);
            count8 = new Matrix();
            count8.scale(param2,param2);
            null.draw(count6,count8);
            var count1:Bitmap = new Bitmap(null);
            count6.bitmapData.dispose();
            count6 = null;
         }
         count6.x = Math.round(count7.x * param2);
         count6.y = Math.round(count7.y * param2);
         return count6;
      }
      
      public static function render3(param1:DisplayObject, param2:Point) : uint
      {
         var count3:Number = Math.ceil(param1.width);
         var count1:Number = Math.ceil(param1.height);
         var count2:BitmapData = new BitmapData(count3,count1,true,0);
         count2.draw(param1,new Matrix());
         var count7:uint = count2.getPixel(param2.x,param2.y);
         count2.dispose();
         return count7;
      }
      
      public static function attack(param1:DisplayObject, param2:Point, param3:Boolean = true) : Boolean
      {
         var count1:Number = NaN;
         var count2:Number = NaN;
         var count7:BitmapData = null;
         var items:Boolean = false;
         if(!param1.hitTestPoint(param2.x,param2.y,param3))
         {
            return false;
         }
         count1 = Math.ceil(param1.width);
         count2 = Math.ceil(param1.height);
         count7 = new BitmapData(count1,count2,true,0);
         count7.draw(param1,new Matrix());
         items = count7.hitTest(new Point(0,0),0,param1.globalToLocal(param2));
         count7.dispose();
         return items;
      }
      
      public static function render4(param1:MovieClip, param2:Point, param3:Number = 1) : Boolean
      {
         var count8:Boolean = false;
         var count2:BitmapData = new BitmapData(2,2,true,0);
         var count7:Matrix = new Matrix();
         var items:Point = param1.globalToLocal(param2);
         count7.translate(-items.x,-items.y);
         count2.draw(param1,count7);
         count8 = count2.hitTest(new Point(0,0),0,new Point(1,1));
         count2.dispose();
         return count8;
      }
      
      public static function show(param1:MovieClip, param2:Point) : Boolean
      {
         if(param1.numChildren > 0)
         {
            var count3:DisplayObject = DisplayObject(param1.getChildAt(0));
            var count1:BitmapData = new BitmapData(param1.width,param1.height,true,0);
            var count2:Matrix = new Matrix();
            var count7:Point = param1.globalToLocal(param2);
            null.translate(-null.x,-null.y);
            null.x += -null.x;
            null.y += -null.y;
            null.draw(param1,null);
            var items:Boolean = Boolean(null.hitTest(new Point(0,0),128,null));
            null.dispose();
            return false;
         }
         return false;
      }
      
      public static function _tx2457(param1:DisplayObjectContainer) : void
      {
         var count:MovieClip = null;
         var count3:MovieClip = null;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         var count6:int = 0;
         var items:Boolean = true;
         var count8:int = param1.numChildren;
         while(count6 < count8 && items == true)
         {
            items = false;
            count7 = 0;
            while(count7 < count8 - 1 - count6)
            {
               count = MovieClip(param1.getChildAt(count7));
               count3 = MovieClip(param1.getChildAt(count7 + 1));
               count1 = 0;
               count2 = 0;
               if(MovieClip(count).hasOwnProperty(textString))
               {
                  count1 = int(count.locz);
               }
               if(MovieClip(count3).hasOwnProperty(textString))
               {
                  count2 = int(count3.locz);
               }
               if(count.y + count1 > count3.y + count2)
               {
                  param1.swapChildrenAt(count7,count7 + 1);
                  items = true;
               }
               count7++;
            }
            count6++;
         }
      }
      
      public static function _ts14032(param1:DisplayObject, param2:uint) : void
      {
         var count3:ColorTransform = new ColorTransform();
         count3.color = param2;
         param1.transform.colorTransform = count3;
      }
      
      public static function show1(param1:MovieClip, param2:Array) : void
      {
         var count1:DisplayObject = null;
         var count10:int = 0;
         var count8:int = int(param2.length);
         var count6:ColorTransform = new ColorTransform();
         var count:int = param1.numChildren;
         while(count10 < count)
         {
            count1 = param1.getChildAt(count10);
            if(count1 is MovieClip)
            {
               var count2:MovieClip = MovieClip(count1);
               var count7:String = count2.name.charAt(7);
               var items:int = int(null);
               if(items != 0 && 0 - 1 < param2.length)
               {
                  count6.color = ColorModel(param2[0 - 1]).color;
                  count6.blueMultiplier = -1;
                  count6.redMultiplier = -1;
                  count6.greenMultiplier = -1;
                  null.transform.colorTransform = count6;
               }
            }
            count10++;
         }
      }
      
      public static function _ll15297(param1:DisplayObject, param2:uint, param3:Number) : void
      {
         var count1:ColorTransform = new ColorTransform();
         var count2:Number = 1 - param3;
         var count7:Number = Math.round(param3 * _gm7694(param2));
         var items:Number = Math.round(param3 * _cx6761(param2));
         var count8:Number = Math.round(param3 * _qu8222(param2));
         count1 = new ColorTransform(count2,count2,count2,1,count7,items,count8,0);
         param1.transform.colorTransform = count1;
      }
      
      private static function _gm7694(param1:uint) : uint
      {
         return param1 >> 16 & 0xFF;
      }
      
      private static function _cx6761(param1:uint) : uint
      {
         return param1 >> 8 & 0xFF;
      }
      
      private static function _qu8222(param1:uint) : uint
      {
         return param1 & 0xFF;
      }
      
      public static function _sf1581(param1:DisplayObject, param2:uint, param3:Number) : void
      {
         var count1:ColorTransform = new ColorTransform();
         count1.color = param2;
         count1.blueMultiplier = param3;
         count1.redMultiplier = param3;
         count1.greenMultiplier = param3;
         param1.transform.colorTransform = count1;
      }
      
      public static function getString(param1:int, param2:int, param3:int) : String
      {
         var count1:String = param1.toString();
         var count2:String = param2.toString();
         var count7:String = param3.toString();
         while(count1.length < 2)
         {
            count1 = "0" + count1;
         }
         while(count2.length < 2)
         {
            count2 = "0" + count2;
         }
         while(count7.length < 4)
         {
            count7 = "0" + count7;
         }
         return count7 + "-" + count2 + "-" + count1;
      }
      
      public static function getString1(param1:Date, param2:int, param3:String) : String
      {
         var count2:String = param1.date.toString();
         var count7:String = String(param1.month + 1).toString();
         var items:String = String(param1.fullYear % 100);
         while(count2.length < 2)
         {
            count2 = "0" + count2;
         }
         while(count7.length < 2)
         {
            count7 = "0" + count7;
         }
         while(items.length < 2)
         {
            items = "0" + items;
         }
         switch(param2)
         {
            case count:
               var count1:String = count2 + param3 + count7 + param3 + items;
               break;
            case count1:
               count1 = count7 + param3 + count2 + param3 + items;
         }
         return null;
      }
      
      public static function validateDate(param1:int, param2:int, param3:int) : Boolean
      {
         if(param1 < 1 || param1 > 31)
         {
            return false;
         }
         if(param2 < 1 || param2 > 12)
         {
            return false;
         }
         if(param3 < 1900 || param3 > new Date().fullYear)
         {
            return false;
         }
         switch(param2)
         {
            case 2:
               if(param1 == 29 || param1 == 30 || param1 == 31)
               {
                  return false;
               }
               break;
            case 4:
            case 6:
            case 9:
            case 11:
               if(param1 == 31)
               {
                  return false;
               }
         }
         return true;
      }
      
      public static function getString2(param1:Date) : String
      {
         var count:String = String(param1.getHours());
         var count3:String = String(param1.getMinutes());
         while(count.length < 2)
         {
            count = "0" + count;
         }
         while(count3.length < 2)
         {
            count3 = "0" + count3;
         }
         return count + ":" + count3;
      }
      
      public static function _dp2863(param1:MovieClip, param2:Function) : void
      {
         var count3:FrameLabel = null;
         for each(count3 in param1.currentLabels)
         {
            param1.addFrameScript(count3.frame - 1,param2);
         }
      }
      
      public static function _ff5056(param1:MovieClip) : void
      {
         var count:FrameLabel = null;
         for each(count in param1.currentLabels)
         {
            param1.addFrameScript(count.frame - 1,null);
         }
      }
      
      public static function createBox(param1:Number, param2:Number, param3:Number = 17774, param4:Number = 0) : MovieClip
      {
         var count2:MovieClip = new MovieClip();
         count2.graphics.beginFill(param3);
         count2.graphics.drawRoundRect(0,0,param1,param2,param4);
         count2.graphics.endFill();
         return count2;
      }
      
      public static function _ay2315(param1:Sprite, param2:UITextField = null, param3:Number = 24, param4:Number = 37, param5:Number = 17774, param6:Number = 0, param7:Number = 0, param8:Number = 0) : void
      {
         if(param2 == null)
         {
            param2 = UITextField.BOTTOM;
         }
         var count6:Sprite = new Sprite();
         count6.graphics.beginFill(param5);
         count6.graphics.moveTo(0,0);
         count6.graphics.lineTo(param3,0);
         count6.graphics.lineTo(param3 / 2 + param6,param4);
         count6.graphics.lineTo(0,0);
         switch(param2)
         {
            case UITextField.BOTTOM:
               count6.x = param1.width / 2 - param3 / 2 + param7;
               count6.y = param1.height + param8;
               break;
            case UITextField.RIGHT:
               count6.rotation = -90;
               count6.y = param1.height / 2 + param3 / 2 + param8;
               count6.x = param1.width + param7;
               break;
            case UITextField.BOTTOM_LEFT:
               count6.rotation = 45;
               count6.y = param1.height - count6.height / 2 + param8;
               count6.x = param7;
               break;
            case UITextField.LEFT:
               count6.rotation = 90;
               count6.y = param1.height / 2 - param3 / 2 + param8;
               count6.x = param7;
               break;
            case UITextField.BOTTOM_RIGHT:
               count6.rotation = -45;
               count6.y = param1.height + param8;
               count6.x = param1.width - count6.width / 2 + param7;
               break;
            case UITextField.TOP:
               count6.rotation = 180;
               count6.x = param1.width / 2 + param3 / 2 + param7;
               count6.y = param8;
               break;
            case UITextField.TOP_LEFT:
               count6.rotation = 135;
               count6.y = param8;
               count6.x = count6.width / 2 + param7;
               break;
            case UITextField.TOP_RIGHT:
               count6.rotation = -135;
               count6.y = count6.height / 2 + param8;
               count6.x = param1.width + param7;
         }
         param1.addChildAt(count6,0);
      }
   }
}

