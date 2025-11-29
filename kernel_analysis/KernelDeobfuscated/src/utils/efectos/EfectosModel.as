package src.utils.efectos
{
   import flash.display.*;
   import flash.geom.*;
   
   public class EfectosModel
   {
      
      private var _tv9195:MovieClip;
      
      private var count:int;
      
      private var _ap8407:MovieClip;
      
      private var items:Array;
      
      private var count1:int;
      
      private var count2:int;
      
      private var _uu9424:Bitmap;
      
      private var _nj13827:BitmapData;
      
      public function EfectosModel(param1:MovieClip, param2:MovieClip, param3:int, param4:int, param5:int)
      {
         var count7:_tv15736 = null;
         var items:int = 0;
         this.items = new Array();
         super();
         this.count1 = param4;
         this.count2 = param3;
         this._tv9195 = param1;
         this._ap8407 = param2;
         this.count = param5;
         this._nj13827 = new BitmapData(param3,param4,true,0);
         this._uu9424 = new Bitmap(this._nj13827);
         this._uu9424.smoothing = true;
         this._tv9195.addChild(this._uu9424);
         while(items < param5)
         {
            count7 = this._cx15928();
            this.items.push(count7);
            items++;
         }
      }
      
      private static function render(param1:DisplayObject) : BitmapData
      {
         var count:BitmapData = new BitmapData(param1.width + 1,param1.height + 1,true,0);
         count.draw(param1,param1.transform.matrix,param1.transform.colorTransform,null,null,true);
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
      
      private function _cx15928() : _tv15736
      {
         var count2:_tv15736 = new _tv15736();
         count2.i = 1 + Math.random() * 2;
         count2.k = (-Math.PI + Math.random() * Math.PI) / 180 * Math.PI;
         count2.count4 = 0;
         var count:MovieClip = _so3313(this._ap8407);
         count.scaleX = count.scaleY = (50 + Math.random() * 100) / 100;
         count.alpha = (55 + Math.random() * 45) / 100;
         count2._yy6093 = render(count);
         count2.x = -10 + Math.random() * this.count2;
         count2.y = -10 + Math.random() * this.count1;
         return count2;
      }
      
      private function _pt10142(param1:_tv15736) : void
      {
         param1.count4 += param1.k;
         param1.x -= Math.cos(param1.count4);
         param1.y += param1.i;
         if(param1.y >= this.count1)
         {
            param1.y = -5;
         }
         if(param1.x >= this.count2 || param1.x <= 0)
         {
            param1.x = -10 + Math.random() * this.count2;
            param1.y = -5;
         }
      }
      
      public function loop() : void
      {
         var count2:_tv15736 = null;
         this._nj13827.lock();
         this._nj13827.fillRect(new Rectangle(0,0,this.count2,this.count1),0);
         var count:Rectangle = new Rectangle();
         var count3:Point = new Point();
         for each(count2 in this.items)
         {
            count.width = count2._yy6093.width;
            count.height = count2._yy6093.height;
            count3.x = count2.x;
            count3.y = count2.y;
            this._nj13827.copyPixels(count2._yy6093,count,count3,null,null,true);
            this._pt10142(count2);
         }
         this._nj13827.unlock();
      }
      
      public function destroy() : void
      {
         this._tv9195.removeChild(this._uu9424);
         this._nj13827.dispose();
         this._uu9424 = null;
         this._nj13827 = null;
         this.items.length = 0;
      }
   }
}

import flash.display.BitmapData;

class _tv15736
{
   
   public var _yy6093:BitmapData;
   
   public var i:Number;
   
   public var k:Number;
   
   public var count4:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   public function _tv15736()
   {
      super();
   }
}
