package src.tv.boombang.application.screen.windows
{
   import flash.display.*;
   import flash.text.*;
   import src.person.*;
   import src.tv.boombang.core.datatypes.screen.ScreenModel;
   import src.tv.boombang.library.steps.Steps;
   import src.utils.*;
   
   public class WindowsModel extends Steps
   {
      
      protected static const _ty2156:Number = 1;
      
      protected static const _ke8748:Number = _ty2156 * 2;
      
      protected static const _rr13492:Number = 1;
      
      protected static const _kn8987:int = 3;
      
      protected var _xo6614:MovieClip;
      
      protected var _vq16076:uint;
      
      protected var _li10244:uint;
      
      protected var _gd13300:ScreenModel;
      
      protected var _au841:Array;
      
      protected var _xm4755:Array;
      
      protected var _di15287:int = 0;
      
      public function WindowsModel(param1:MovieClip, param2:String, param3:ScreenModel)
      {
         super(param2);
         this._xo6614 = param1;
         this._gd13300 = param3;
         addChild(param1);
         this._dw3887();
         this._ae11881(330,265,_rr13492,_ty2156);
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      private function _ae11881(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this._vq16076 = int(param1 / (param3 * 2 + param4));
         this._li10244 = int(param2 / (param3 * 2 + param4));
      }
      
      private function _dw3887() : void
      {
         var _loc1_:PersonAnimation = null;
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         this._au841 = [];
         this._xm4755 = [];
         if(Boolean(this._gd13300) && Boolean(this._gd13300._oh12066))
         {
            _loc2_ = 0;
            while(_loc2_ < this._gd13300._oh12066.length)
            {
               ++this._di15287;
               _loc1_ = new PersonAnimation();
               _loc1_._jn11596 = this._gd13300._oh12066[_loc2_]._wa13225;
               _loc1_.colors = this._gd13300._oh12066[_loc2_].colours;
               _loc3_ = PersonController._ku11706(_loc1_,"down_idle");
               _loc4_ = new MovieClip();
               _loc4_.addChild(_loc3_);
               _loc3_.scaleX = _loc3_.scaleY = 1.1;
               _loc3_.x = _loc3_.width / 2;
               _loc3_.y = _loc3_.height;
               this._au841.push(_loc4_);
               if(_loc2_ < _kn8987)
               {
                  var _loc5_:MovieClip = PersonController._ku11706(_loc1_,"down_idle");
                  var _loc6_:MovieClip = new MovieClip();
                  _loc6_.addChild(null);
                  null.scaleX = null.scaleY = 0.6;
                  null.x = null.width / 2;
                  null.y = null.height;
                  this._xm4755.push(null);
               }
               _loc2_++;
            }
         }
      }
      
      protected function _ex11343(param1:String, param2:int, param3:String = "left") : TextField
      {
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.font = "Score Board";
         _loc4_.size = param2;
         _loc4_.align = param3;
         _loc4_.color = 2236962;
         var _loc5_:TextField = new TextField();
         _loc5_.backgroundColor = 11184810;
         _loc5_.text = param1;
         _loc5_.setTextFormat(_loc4_);
         UtilsUtils._xl9503(_loc5_,param1);
         _loc5_.selectable = false;
         _loc5_.autoSize = TextFieldAutoSize.LEFT;
         return _loc5_;
      }
   }
}

