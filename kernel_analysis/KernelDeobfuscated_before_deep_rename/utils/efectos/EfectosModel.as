package src.utils.efectos
{
   import flash.display.*;
   import flash.geom.*;
   
   public class EfectosModel
   {
      
      private var _tv9195:MovieClip;
      
      private var _nr9839:int;
      
      private var _ap8407:MovieClip;
      
      private var _sc2950:Array;
      
      private var _jr709:int;
      
      private var _xq5962:int;
      
      private var _uu9424:Bitmap;
      
      private var _nj13827:BitmapData;
      
      public function EfectosModel(param1:MovieClip, param2:MovieClip, param3:int, param4:int, param5:int)
      {
         var _loc6_:_tv15736 = null;
         var _loc7_:int = 0;
         this._sc2950 = new Array();
         super();
         this._jr709 = param4;
         this._xq5962 = param3;
         this._tv9195 = param1;
         this._ap8407 = param2;
         this._nr9839 = param5;
         this._nj13827 = new BitmapData(param3,param4,true,0);
         this._uu9424 = new Bitmap(this._nj13827);
         this._uu9424.smoothing = true;
         this._tv9195.addChild(this._uu9424);
         while(_loc7_ < param5)
         {
            _loc6_ = this._cx15928();
            this._sc2950.push(_loc6_);
            _loc7_++;
         }
      }
      
      private static function _af12452(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width + 1,param1.height + 1,true,0);
         _loc2_.draw(param1,param1.transform.matrix,param1.transform.colorTransform,null,null,true);
         return _loc2_;
      }
      
      public static function _so3313(param1:DisplayObject) : MovieClip
      {
         var _loc2_:Class = null;
         _loc2_ = Object(param1).constructor;
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.name = param1.name;
         return _loc3_;
      }
      
      private function _cx15928() : _tv15736
      {
         var _loc1_:_tv15736 = new _tv15736();
         _loc1_.i = 1 + Math.random() * 2;
         _loc1_.k = (-Math.PI + Math.random() * Math.PI) / 180 * Math.PI;
         _loc1_._so1452 = 0;
         var _loc2_:MovieClip = _so3313(this._ap8407);
         _loc2_.scaleX = _loc2_.scaleY = (50 + Math.random() * 100) / 100;
         _loc2_.alpha = (55 + Math.random() * 45) / 100;
         _loc1_._yy6093 = _af12452(_loc2_);
         _loc1_.x = -10 + Math.random() * this._xq5962;
         _loc1_.y = -10 + Math.random() * this._jr709;
         return _loc1_;
      }
      
      private function _pt10142(param1:_tv15736) : void
      {
         param1._so1452 += param1.k;
         param1.x -= Math.cos(param1._so1452);
         param1.y += param1.i;
         if(param1.y >= this._jr709)
         {
            param1.y = -5;
         }
         if(param1.x >= this._xq5962 || param1.x <= 0)
         {
            param1.x = -10 + Math.random() * this._xq5962;
            param1.y = -5;
         }
      }
      
      public function loop() : void
      {
         var _loc1_:_tv15736 = null;
         this._nj13827.lock();
         this._nj13827.fillRect(new Rectangle(0,0,this._xq5962,this._jr709),0);
         var _loc2_:Rectangle = new Rectangle();
         var _loc3_:Point = new Point();
         for each(_loc1_ in this._sc2950)
         {
            _loc2_.width = _loc1_._yy6093.width;
            _loc2_.height = _loc1_._yy6093.height;
            _loc3_.x = _loc1_.x;
            _loc3_.y = _loc1_.y;
            this._nj13827.copyPixels(_loc1_._yy6093,_loc2_,_loc3_,null,null,true);
            this._pt10142(_loc1_);
         }
         this._nj13827.unlock();
      }
      
      public function destroy() : void
      {
         this._tv9195.removeChild(this._uu9424);
         this._nj13827.dispose();
         this._uu9424 = null;
         this._nj13827 = null;
         this._sc2950.length = 0;
      }
   }
}

import flash.display.BitmapData;

class _tv15736
{
   
   public var _yy6093:BitmapData;
   
   public var i:Number;
   
   public var k:Number;
   
   public var _so1452:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   public function _tv15736()
   {
      super();
   }
}
