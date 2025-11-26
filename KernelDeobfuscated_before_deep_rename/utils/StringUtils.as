package src.utils
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.color.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.tv.boombang.application.global.gui.components.*;
   
   public class StringUtils
   {
      
      private static const _ue1139:String = "locz";
      
      public static const _xu10930:int = 1;
      
      public static const _cb11919:int = 2;
      
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
         var _loc3_:FrameLabel = null;
         var _loc5_:int = 0;
         var _loc4_:Array = param1.currentLabels;
         while(_loc5_ < _loc4_.length)
         {
            _loc3_ = _loc4_[_loc5_];
            if(_loc3_.name == param2)
            {
               return _loc3_.frame;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public static function _nw2053(param1:MovieClip, param2:String) : void
      {
         var _loc3_:int = _tm12465(param1,param2);
         if(_loc3_ != -1)
         {
            param1.gotoAndStop(param2);
         }
      }
      
      public static function cleanChildsMovieclip(param1:MovieClip) : void
      {
         var _loc3_:int = 0;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = param1.numChildren;
         while(_loc3_ < _loc2_)
         {
            param1.removeChildAt(0);
            _loc3_++;
         }
      }
      
      public static function _vd15929(param1:Array) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:Array = new Array();
         if(param1 == null || param1.length == 0)
         {
            return _loc5_;
         }
         var _loc6_:int = int(param1.length);
         while(_loc7_ < _loc6_)
         {
            if(param1[_loc7_] == null)
            {
               _loc2_ = new Array();
            }
            else
            {
               _loc3_ = int(param1[_loc7_].length);
               _loc2_ = new Array();
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  _loc2_.push(param1[_loc7_][_loc4_]);
                  _loc4_++;
               }
            }
            _loc5_.push(_loc2_);
            _loc7_++;
         }
         return _loc5_;
      }
      
      public static function _vc10061(param1:Array) : Array
      {
         var _loc4_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            _loc2_.push(param1[_loc4_]);
            _loc4_++;
         }
         return _loc2_;
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
      
      private static function _ej9914(param1:Number, param2:Number, param3:Number) : Array
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         _loc4_ = Number(_yx60(param1,param2,param3));
         _loc9_ = _loc5_ = Number(_pf13420(param1,param2,param3));
         _loc6_ = _loc5_ - _loc4_;
         if(_loc6_ == 0)
         {
            _loc7_ = 0;
            _loc8_ = 0;
            return [_loc7_,_loc8_,_loc9_];
         }
         if(_loc5_ != 0)
         {
            _loc8_ = _loc6_ / _loc5_;
            if(param1 == _loc5_)
            {
               _loc7_ = (param2 - param3) / _loc6_;
            }
            else if(param2 == _loc5_)
            {
               _loc7_ = 2 + (param3 - param1) / _loc6_;
            }
            else
            {
               _loc7_ = 4 + (param1 - param2) / _loc6_;
            }
            _loc7_ *= 60;
            if(_loc7_ < 0)
            {
               _loc7_ += 360;
            }
            return [_loc7_,_loc8_,_loc9_];
         }
         _loc8_ = 0;
         _loc7_ = -1;
         return [_loc7_,_loc8_,_loc9_];
      }
      
      private static function _nl13417(param1:uint) : uint
      {
         var _loc2_:uint = param1;
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         else if(255 < _loc2_)
         {
            _loc2_ = 255;
         }
         return _loc2_;
      }
      
      private static function _eo15757(param1:uint) : Number
      {
         var _loc2_:Number = param1 >> 16 & 0xFF;
         var _loc3_:Number = param1 >> 8 & 0xFF;
         var _loc4_:Number = param1 & 0xFF;
         var _loc5_:Number = Math.sqrt(_loc2_ * _loc2_ * 0.241 + _loc3_ * _loc3_ * 0.691 + _loc4_ * _loc4_ * 0.068);
         return _loc5_ / 255;
      }
      
      public static function _nq1726(param1:uint) : Array
      {
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = param1;
         var _loc3_:Object = _ej9914(_loc2_.redOffset,_loc2_.greenOffset,_loc2_.blueOffset);
         var _loc4_:Point = Point.polar(_loc3_[1],_loc3_[0] * Math.PI / 180);
         _loc4_.x *= 0.5;
         _loc4_.y *= 0.5;
         _loc4_.x = (_loc4_.x + 0.5) * 144;
         _loc4_.y = (1 - (_loc4_.y + 0.5)) * 144;
         return [Math.ceil(_loc4_.x),Math.ceil(_loc4_.y),Math.ceil(_loc3_[2] * 100 / 255)];
      }
      
      public static function _dm1958(param1:uint, param2:Number, param3:uint = 0) : uint
      {
         var _loc4_:ColorTransform = new ColorTransform();
         _loc4_.color = param3;
         var _loc5_:ColorTransform = new ColorTransform();
         _loc5_.color = param1;
         _loc5_.redOffset = _loc5_.redOffset * param2 + _loc4_.redOffset * (1 - param2);
         _loc5_.greenOffset = _loc5_.greenOffset * param2 + _loc4_.greenOffset * (1 - param2);
         _loc5_.blueOffset = _loc5_.blueOffset * param2 + _loc4_.blueOffset * (1 - param2);
         var _loc6_:Object = _nq1726(_loc5_.color);
         return _loc5_.color;
      }
      
      public static function _um4715(param1:uint) : ColorTransform
      {
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = param1;
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
      
      public static function _dx10334(param1:DisplayObject) : MovieClip
      {
         var _loc2_:Class = null;
         _loc2_ = Object(param1).constructor;
         var _loc3_:MovieClip = new _loc2_();
         if(param1.transform.colorTransform != null)
         {
            _loc3_.transform.colorTransform = param1.transform.colorTransform;
         }
         if(param1.transform.matrix != null)
         {
            _loc3_.transform.matrix = param1.transform.matrix;
         }
         _loc3_.filters = param1.filters;
         _loc3_.cacheAsBitmap = param1.cacheAsBitmap;
         _loc3_.name = param1.name;
         _loc3_.opaqueBackground = param1.opaqueBackground;
         return _loc3_;
      }
      
      public static function _xl10571(param1:Object) : Object
      {
         var _loc2_:Class = null;
         _loc2_ = param1.constructor;
         return new _loc2_();
      }
      
      public static function _af12452(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc2_.draw(param1,new Matrix());
         return _loc2_;
      }
      
      public static function _wl6502(param1:DisplayObject) : Bitmap
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc2_.draw(param1,new Matrix());
         return new Bitmap(_loc2_);
      }
      
      public static function _tv8248(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         param1.play();
         while(_loc3_ < param1.numChildren)
         {
            _loc2_ = param1.getChildAt(_loc3_) as MovieClip;
            if(_loc2_ != null)
            {
               _tv8248(_loc2_);
            }
            _loc3_++;
         }
      }
      
      public static function _vb14910(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         param1.stop();
         while(_loc3_ < param1.numChildren)
         {
            _loc2_ = param1.getChildAt(_loc3_) as MovieClip;
            if(_loc2_ != null)
            {
               _vb14910(_loc2_);
            }
            _loc3_++;
         }
      }
      
      public static function _oe11080(param1:MovieClip, param2:Number) : Bitmap
      {
         var _loc5_:MovieClip = MovieClip(param1.getChildByName(LoadobjectModel._lk8138));
         var _loc6_:MovieClip = MovieClip(_loc5_.getChildByName(LoadobjectModel._fb189));
         var _loc7_:BitmapData = new BitmapData(_loc6_.width,_loc6_.height,true,0);
         var _loc8_:Matrix = new Matrix();
         _loc8_.translate(-_loc6_.x,-_loc6_.y);
         _loc7_.draw(_loc5_,_loc8_,null,null,null,true);
         var _loc9_:Bitmap = new Bitmap(_loc7_,PixelSnapping.ALWAYS,true);
         if(param2 != 1)
         {
            _loc9_.scaleX = _loc9_.scaleY = param2;
            var _loc3_:BitmapData = new BitmapData(_loc6_.width * param2,_loc6_.height * param2,true,0);
            _loc8_ = new Matrix();
            _loc8_.scale(param2,param2);
            null.draw(_loc9_,_loc8_);
            var _loc4_:Bitmap = new Bitmap(null);
            _loc9_.bitmapData.dispose();
            _loc9_ = null;
         }
         _loc9_.x = Math.round(_loc6_.x * param2);
         _loc9_.y = Math.round(_loc6_.y * param2);
         return _loc9_;
      }
      
      public static function _dv6831(param1:DisplayObject, param2:Point) : uint
      {
         var _loc3_:Number = Math.ceil(param1.width);
         var _loc4_:Number = Math.ceil(param1.height);
         var _loc5_:BitmapData = new BitmapData(_loc3_,_loc4_,true,0);
         _loc5_.draw(param1,new Matrix());
         var _loc6_:uint = _loc5_.getPixel(param2.x,param2.y);
         _loc5_.dispose();
         return _loc6_;
      }
      
      public static function _gl15973(param1:DisplayObject, param2:Point, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:BitmapData = null;
         var _loc7_:Boolean = false;
         if(!param1.hitTestPoint(param2.x,param2.y,param3))
         {
            return false;
         }
         _loc4_ = Math.ceil(param1.width);
         _loc5_ = Math.ceil(param1.height);
         _loc6_ = new BitmapData(_loc4_,_loc5_,true,0);
         _loc6_.draw(param1,new Matrix());
         _loc7_ = _loc6_.hitTest(new Point(0,0),0,param1.globalToLocal(param2));
         _loc6_.dispose();
         return _loc7_;
      }
      
      public static function _ea11980(param1:MovieClip, param2:Point, param3:Number = 1) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc5_:BitmapData = new BitmapData(2,2,true,0);
         var _loc6_:Matrix = new Matrix();
         var _loc7_:Point = param1.globalToLocal(param2);
         _loc6_.translate(-_loc7_.x,-_loc7_.y);
         _loc5_.draw(param1,_loc6_);
         _loc8_ = _loc5_.hitTest(new Point(0,0),0,new Point(1,1));
         _loc5_.dispose();
         return _loc8_;
      }
      
      public static function _kb1538(param1:MovieClip, param2:Point) : Boolean
      {
         if(param1.numChildren > 0)
         {
            var _loc3_:DisplayObject = DisplayObject(param1.getChildAt(0));
            var _loc4_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
            var _loc5_:Matrix = new Matrix();
            var _loc6_:Point = param1.globalToLocal(param2);
            null.translate(-null.x,-null.y);
            null.x += -null.x;
            null.y += -null.y;
            null.draw(param1,null);
            var _loc7_:Boolean = Boolean(null.hitTest(new Point(0,0),128,null));
            null.dispose();
            return false;
         }
         return false;
      }
      
      public static function _tx2457(param1:DisplayObjectContainer) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         var _loc7_:Boolean = true;
         var _loc8_:int = param1.numChildren;
         while(_loc9_ < _loc8_ && _loc7_ == true)
         {
            _loc7_ = false;
            _loc6_ = 0;
            while(_loc6_ < _loc8_ - 1 - _loc9_)
            {
               _loc2_ = MovieClip(param1.getChildAt(_loc6_));
               _loc3_ = MovieClip(param1.getChildAt(_loc6_ + 1));
               _loc4_ = 0;
               _loc5_ = 0;
               if(MovieClip(_loc2_).hasOwnProperty(_ue1139))
               {
                  _loc4_ = int(_loc2_.locz);
               }
               if(MovieClip(_loc3_).hasOwnProperty(_ue1139))
               {
                  _loc5_ = int(_loc3_.locz);
               }
               if(_loc2_.y + _loc4_ > _loc3_.y + _loc5_)
               {
                  param1.swapChildrenAt(_loc6_,_loc6_ + 1);
                  _loc7_ = true;
               }
               _loc6_++;
            }
            _loc9_++;
         }
      }
      
      public static function _ts14032(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:ColorTransform = new ColorTransform();
         _loc3_.color = param2;
         param1.transform.colorTransform = _loc3_;
      }
      
      public static function _xw3757(param1:MovieClip, param2:Array) : void
      {
         var _loc4_:DisplayObject = null;
         var _loc11_:int = 0;
         var _loc8_:int = int(param2.length);
         var _loc9_:ColorTransform = new ColorTransform();
         var _loc10_:int = param1.numChildren;
         while(_loc11_ < _loc10_)
         {
            _loc4_ = param1.getChildAt(_loc11_);
            if(_loc4_ is MovieClip)
            {
               var _loc5_:MovieClip = MovieClip(_loc4_);
               var _loc6_:String = _loc5_.name.charAt(7);
               var _loc7_:int = int(null);
               if(_loc7_ != 0 && 0 - 1 < param2.length)
               {
                  _loc9_.color = ColorModel(param2[0 - 1]).color;
                  _loc9_.blueMultiplier = -1;
                  _loc9_.redMultiplier = -1;
                  _loc9_.greenMultiplier = -1;
                  null.transform.colorTransform = _loc9_;
               }
            }
            _loc11_++;
         }
      }
      
      public static function _ll15297(param1:DisplayObject, param2:uint, param3:Number) : void
      {
         var _loc4_:ColorTransform = new ColorTransform();
         var _loc5_:Number = 1 - param3;
         var _loc6_:Number = Math.round(param3 * _gm7694(param2));
         var _loc7_:Number = Math.round(param3 * _cx6761(param2));
         var _loc8_:Number = Math.round(param3 * _qu8222(param2));
         _loc4_ = new ColorTransform(_loc5_,_loc5_,_loc5_,1,_loc6_,_loc7_,_loc8_,0);
         param1.transform.colorTransform = _loc4_;
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
         var _loc4_:ColorTransform = new ColorTransform();
         _loc4_.color = param2;
         _loc4_.blueMultiplier = param3;
         _loc4_.redMultiplier = param3;
         _loc4_.greenMultiplier = param3;
         param1.transform.colorTransform = _loc4_;
      }
      
      public static function _ry6566(param1:int, param2:int, param3:int) : String
      {
         var _loc4_:String = param1.toString();
         var _loc5_:String = param2.toString();
         var _loc6_:String = param3.toString();
         while(_loc4_.length < 2)
         {
            _loc4_ = "0" + _loc4_;
         }
         while(_loc5_.length < 2)
         {
            _loc5_ = "0" + _loc5_;
         }
         while(_loc6_.length < 4)
         {
            _loc6_ = "0" + _loc6_;
         }
         return _loc6_ + "-" + _loc5_ + "-" + _loc4_;
      }
      
      public static function _cl4160(param1:Date, param2:int, param3:String) : String
      {
         var _loc5_:String = param1.date.toString();
         var _loc6_:String = String(param1.month + 1).toString();
         var _loc7_:String = String(param1.fullYear % 100);
         while(_loc5_.length < 2)
         {
            _loc5_ = "0" + _loc5_;
         }
         while(_loc6_.length < 2)
         {
            _loc6_ = "0" + _loc6_;
         }
         while(_loc7_.length < 2)
         {
            _loc7_ = "0" + _loc7_;
         }
         switch(param2)
         {
            case _xu10930:
               var _loc4_:String = _loc5_ + param3 + _loc6_ + param3 + _loc7_;
               break;
            case _cb11919:
               _loc4_ = _loc6_ + param3 + _loc5_ + param3 + _loc7_;
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
      
      public static function _rg2062(param1:Date) : String
      {
         var _loc2_:String = String(param1.getHours());
         var _loc3_:String = String(param1.getMinutes());
         while(_loc2_.length < 2)
         {
            _loc2_ = "0" + _loc2_;
         }
         while(_loc3_.length < 2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc2_ + ":" + _loc3_;
      }
      
      public static function _dp2863(param1:MovieClip, param2:Function) : void
      {
         var _loc3_:FrameLabel = null;
         for each(_loc3_ in param1.currentLabels)
         {
            param1.addFrameScript(_loc3_.frame - 1,param2);
         }
      }
      
      public static function _ff5056(param1:MovieClip) : void
      {
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in param1.currentLabels)
         {
            param1.addFrameScript(_loc2_.frame - 1,null);
         }
      }
      
      public static function createBox(param1:Number, param2:Number, param3:Number = 17774, param4:Number = 0) : MovieClip
      {
         var _loc5_:MovieClip = new MovieClip();
         _loc5_.graphics.beginFill(param3);
         _loc5_.graphics.drawRoundRect(0,0,param1,param2,param4);
         _loc5_.graphics.endFill();
         return _loc5_;
      }
      
      public static function _ay2315(param1:Sprite, param2:UITextField = null, param3:Number = 24, param4:Number = 37, param5:Number = 17774, param6:Number = 0, param7:Number = 0, param8:Number = 0) : void
      {
         if(param2 == null)
         {
            param2 = UITextField.BOTTOM;
         }
         var _loc9_:Sprite = new Sprite();
         _loc9_.graphics.beginFill(param5);
         _loc9_.graphics.moveTo(0,0);
         _loc9_.graphics.lineTo(param3,0);
         _loc9_.graphics.lineTo(param3 / 2 + param6,param4);
         _loc9_.graphics.lineTo(0,0);
         switch(param2)
         {
            case UITextField.BOTTOM:
               _loc9_.x = param1.width / 2 - param3 / 2 + param7;
               _loc9_.y = param1.height + param8;
               break;
            case UITextField.RIGHT:
               _loc9_.rotation = -90;
               _loc9_.y = param1.height / 2 + param3 / 2 + param8;
               _loc9_.x = param1.width + param7;
               break;
            case UITextField.BOTTOM_LEFT:
               _loc9_.rotation = 45;
               _loc9_.y = param1.height - _loc9_.height / 2 + param8;
               _loc9_.x = param7;
               break;
            case UITextField.LEFT:
               _loc9_.rotation = 90;
               _loc9_.y = param1.height / 2 - param3 / 2 + param8;
               _loc9_.x = param7;
               break;
            case UITextField.BOTTOM_RIGHT:
               _loc9_.rotation = -45;
               _loc9_.y = param1.height + param8;
               _loc9_.x = param1.width - _loc9_.width / 2 + param7;
               break;
            case UITextField.TOP:
               _loc9_.rotation = 180;
               _loc9_.x = param1.width / 2 + param3 / 2 + param7;
               _loc9_.y = param8;
               break;
            case UITextField.TOP_LEFT:
               _loc9_.rotation = 135;
               _loc9_.y = param8;
               _loc9_.x = _loc9_.width / 2 + param7;
               break;
            case UITextField.TOP_RIGHT:
               _loc9_.rotation = -135;
               _loc9_.y = _loc9_.height / 2 + param8;
               _loc9_.x = param1.width + param7;
         }
         param1.addChildAt(_loc9_,0);
      }
   }
}

