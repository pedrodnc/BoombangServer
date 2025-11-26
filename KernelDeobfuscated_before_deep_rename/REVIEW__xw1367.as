package src
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.config.*;
   import src.utils.*;
   
   public class _xw1367 extends Sprite
   {
      
      private static var _instance:_xw1367;
      
      public static const _rw15680:int = Configuration._wc13865;
      
      public static const _lu15794:int = Configuration._kl10731;
      
      public static const _vn1830:int = 0;
      
      public static const _jf1741:int = 1;
      
      public static const _co9468:int = 2;
      
      public static const _wa4051:int = 3;
      
      public static const _hh2073:int = 4;
      
      public static const _wj14746:int = 5;
      
      public static const _iw3373:int = 6;
      
      public static const _ww5897:int = 7;
      
      public static const _kg5042:int = 8;
      
      public static const _dw5291:int = 0;
      
      public static const _ej11244:int = 1;
      
      public static const _dq996:int = 2;
      
      public static const _gu7895:int = 3;
      
      public static const _en7051:int = 4;
      
      public static const _if14233:int = 5;
      
      private var _qu13158:Sprite;
      
      private var _kp1473:Sprite;
      
      private var _vy4648:Sprite;
      
      private var _oj5802:Sprite;
      
      private var interfaz:Sprite;
      
      private var _lc12158:Sprite;
      
      private var _ng11870:Sprite;
      
      private var loader:Sprite;
      
      private var bpad:Sprite;
      
      private var _sp15851:Sprite;
      
      private var _jb7440:Sprite;
      
      private var _hb6397:Array;
      
      public function _xw1367(param1:_rw9443)
      {
         super();
         this._qu13158 = new Sprite();
         this._vy4648 = new Sprite();
         this._oj5802 = new Sprite();
         this.interfaz = new Sprite();
         this._lc12158 = new Sprite();
         this._ng11870 = new Sprite();
         this.loader = new Sprite();
         this.bpad = new Sprite();
         this._jb7440 = new Sprite();
         this._sp15851 = new Sprite();
         this._hb6397 = [this._qu13158,this._vy4648,this._oj5802,this._lc12158];
         addChild(this._qu13158);
         this._kp1473 = new Sprite();
         this._qu13158.addChild(this._kp1473);
         addChild(this._vy4648);
         addChild(this._oj5802);
         addChild(this._ng11870);
         addChild(this.interfaz);
         addChild(this._lc12158);
         addChild(this.loader);
         addChild(this.bpad);
         addChild(this._jb7440);
         addChild(this._sp15851);
         this._qu13158.mouseEnabled = false;
         this._oj5802.mouseEnabled = false;
         addEventListener(Event.ADDED_TO_STAGE,this._lb15297,false,0,true);
      }
      
      public static function getInstance() : _xw1367
      {
         if(_xw1367._instance == null)
         {
            _xw1367._instance = new _xw1367(new _rw9443());
         }
         return _xw1367._instance;
      }
      
      protected function _lb15297(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this._lb15297);
         stage.addEventListener(Event.RESIZE,this._qw620,false,0,true);
      }
      
      protected function _qw620(param1:Event) : void
      {
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      public function loop() : void
      {
         StringUtils._tx2457(this._vy4648);
      }
      
      public function _ut10346(param1:Point) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Sprite = null;
         if(stage)
         {
            _loc2_ = new Point();
            _loc2_.x = -param1.x + stage.stageWidth * 0.5;
            _loc2_.y = -param1.y + stage.stageHeight * 0.5;
            _loc2_.x = Math.min(0,_loc2_.x);
            _loc2_.x = Math.max(stage.stageWidth - _rw15680,_loc2_.x);
            _loc2_.y = Math.min(0,_loc2_.y);
            _loc2_.y = Math.max(stage.stageHeight - _lu15794,_loc2_.y);
            for each(_loc3_ in this._hb6397)
            {
               _loc3_.x = _loc2_.x;
               _loc3_.y = _loc2_.y;
            }
         }
      }
      
      public function _pf16091() : Sprite
      {
         return this._vy4648;
      }
      
      public function _df13671(param1:Number) : void
      {
         this._vy4648.y = param1;
      }
      
      public function _rg1051(param1:Number) : void
      {
         this._vy4648.x = param1;
      }
      
      public function _bg14814() : Number
      {
         return this._vy4648.x;
      }
      
      public function _yn11416() : Number
      {
         return this._vy4648.y;
      }
      
      public function _uc3178(param1:MovieClip, param2:int, param3:Boolean = false, param4:int = 0) : void
      {
         switch(param2)
         {
            case _vn1830:
               this._ve10012(param1,param3);
               return;
            case _jf1741:
               this._fx8766(param1,param3,param4);
               return;
            case _co9468:
               this._mw2335(param1,param3);
               return;
            case _wa4051:
               this._ry4529(param1,param3);
               return;
            case _kg5042:
               this._lc12158.addChild(param1);
               return;
            case _hh2073:
               this._qu7011(param1);
               return;
            case _wj14746:
               this._mi9176(param1);
               return;
            case _iw3373:
               this._tc22(param1);
               return;
            case _ww5897:
               this._rw15011(param1);
               return;
            default:
               return;
         }
      }
      
      public function _gv1977(param1:MovieClip) : void
      {
         param1.cacheAsBitmap = true;
         this._kp1473.addChild(param1);
      }
      
      public function _tt11675(param1:MovieClip) : void
      {
         if(this._kp1473.contains(param1))
         {
            this._kp1473.removeChild(param1);
         }
      }
      
      private function _ve10012(param1:MovieClip, param2:Boolean) : void
      {
         this._qu13158.addChildAt(param1,this._qu13158.numChildren - 1);
         param1.cacheAsBitmap = true;
         param1.mouseEnabled = param2;
         param1.mouseChildren = param2;
      }
      
      private function _fx8766(param1:MovieClip, param2:Boolean, param3:int) : void
      {
         this._vy4648.addChild(param1);
         param1.cacheAsBitmap = true;
         param1.mouseEnabled = param2;
         param1.mouseChildren = param2;
         param1._jr11615 = param3;
      }
      
      private function _mw2335(param1:MovieClip, param2:Boolean) : void
      {
         this._oj5802.addChild(param1);
         param1.cacheAsBitmap = true;
         param1.mouseEnabled = param2;
         param1.mouseChildren = param2;
      }
      
      private function _ry4529(param1:MovieClip, param2:Boolean) : void
      {
         this.interfaz.addChild(param1);
         param1.cacheAsBitmap = true;
         param1.mouseEnabled = param2;
      }
      
      private function _qu7011(param1:MovieClip) : void
      {
         this._ng11870.addChild(param1);
         param1.cacheAsBitmap = true;
         param1.mouseEnabled = false;
      }
      
      private function _mi9176(param1:MovieClip) : void
      {
         this.loader.addChild(param1);
         param1.cacheAsBitmap = true;
         param1.mouseEnabled = false;
      }
      
      private function _tc22(param1:MovieClip) : void
      {
         this.bpad.addChild(param1);
         param1.cacheAsBitmap = true;
      }
      
      private function _rw15011(param1:MovieClip) : void
      {
         this._jb7440.addChild(param1);
         param1.cacheAsBitmap = true;
      }
      
      public function _na10792(param1:MovieClip, param2:int) : void
      {
         switch(param2)
         {
            case _vn1830:
               this._lk15384(param1);
               return;
            case _jf1741:
               this._yi8376(param1);
               return;
            case _co9468:
               this._fx2141(param1);
               return;
            case _wa4051:
               this._oe11020(param1);
               return;
            case _kg5042:
               this._lc12158.removeChild(param1);
               return;
            case _hh2073:
               this._fb13569(param1);
               return;
            case _wj14746:
               this._aj893(param1);
               return;
            case _iw3373:
               this._rv14038(param1);
               return;
            case _ww5897:
               this._rw5720(param1);
               return;
            default:
               return;
         }
      }
      
      public function _bi13167(param1:String, param2:int) : void
      {
         switch(param2)
         {
            case _vn1830:
               this._vo12922(param1);
               return;
            case _jf1741:
               this._xk1798(param1);
               return;
            case _co9468:
               this._ns16017(param1);
               return;
            case _wa4051:
               this._nm10231(param1);
               return;
            case _hh2073:
               this._jm3716(param1);
               return;
            case _wj14746:
               this._uq11335(param1);
               return;
            case _ww5897:
               this._pm14128(param1);
               return;
            default:
               return;
         }
      }
      
      private function _lk15384(param1:MovieClip) : void
      {
         if(this._qu13158.contains(param1))
         {
            this._qu13158.removeChildAt(this._qu13158.getChildIndex(param1));
         }
      }
      
      private function _yi8376(param1:MovieClip) : void
      {
         if(this._vy4648.contains(param1))
         {
            this._vy4648.removeChildAt(this._vy4648.getChildIndex(param1));
         }
      }
      
      private function _fx2141(param1:MovieClip) : void
      {
         if(this._oj5802.contains(param1))
         {
            this._oj5802.removeChildAt(this._oj5802.getChildIndex(param1));
         }
      }
      
      private function _oe11020(param1:MovieClip) : void
      {
         if(this.interfaz.contains(param1))
         {
            this.interfaz.removeChildAt(this.interfaz.getChildIndex(param1));
         }
      }
      
      private function _fb13569(param1:MovieClip) : void
      {
         if(this._ng11870.contains(param1))
         {
            this._ng11870.removeChildAt(this._ng11870.getChildIndex(param1));
         }
      }
      
      private function _aj893(param1:MovieClip) : void
      {
         if(this.loader.contains(param1))
         {
            this.loader.removeChildAt(this.loader.getChildIndex(param1));
         }
      }
      
      private function _rv14038(param1:MovieClip) : void
      {
         if(this.bpad.contains(param1))
         {
            this.bpad.removeChildAt(this.bpad.getChildIndex(param1));
         }
      }
      
      private function _rw5720(param1:MovieClip) : void
      {
         if(this._jb7440.contains(param1))
         {
            this._jb7440.removeChildAt(this._jb7440.getChildIndex(param1));
         }
      }
      
      private function _vo12922(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this._qu13158.getChildByName(param1));
         if(_loc2_ != null)
         {
            this._qu13158.removeChild(_loc2_);
         }
      }
      
      private function _xk1798(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this._vy4648.getChildByName(param1));
         if(_loc2_ != null)
         {
            this._vy4648.removeChild(_loc2_);
         }
      }
      
      private function _ns16017(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this._oj5802.getChildByName(param1));
         if(_loc2_ != null)
         {
            this._oj5802.removeChild(_loc2_);
         }
      }
      
      private function _nm10231(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this.interfaz.getChildByName(param1));
         if(_loc2_ != null)
         {
            this.interfaz.removeChild(_loc2_);
         }
      }
      
      private function _jm3716(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this._ng11870.getChildByName(param1));
         if(_loc2_ != null)
         {
            this._ng11870.removeChild(_loc2_);
         }
      }
      
      private function _uq11335(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this.loader.getChildByName(param1));
         if(_loc2_ != null)
         {
            this.loader.removeChild(_loc2_);
         }
      }
      
      private function _jo4391(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this.bpad.getChildByName(param1));
         if(_loc2_ != null)
         {
            this.loader.removeChild(_loc2_);
         }
      }
      
      private function _pm14128(param1:String) : void
      {
         var _loc2_:MovieClip = MovieClip(this._jb7440.getChildByName(param1));
         if(_loc2_ != null)
         {
            this._jb7440.removeChild(_loc2_);
         }
      }
      
      public function _qd11184(param1:String, param2:int) : MovieClip
      {
         switch(param2)
         {
            case _vn1830:
               var _loc3_:MovieClip = this._ul12978(param1);
               break;
            case _jf1741:
               _loc3_ = this._jw12351(param1);
               break;
            case _co9468:
               _loc3_ = this._rp6120(param1);
               break;
            case _wa4051:
               _loc3_ = this._ty4652(param1);
               break;
            case _hh2073:
               _loc3_ = this._gu9337(param1);
               break;
            case _wj14746:
               _loc3_ = this._yg9232(param1);
               break;
            case _iw3373:
               _loc3_ = this._vs10905(param1);
               break;
            case _ww5897:
               _loc3_ = this._jn5062(param1);
         }
         return null;
      }
      
      private function _ul12978(param1:String) : MovieClip
      {
         return MovieClip(this._qu13158.getChildByName(param1));
      }
      
      private function _jw12351(param1:String) : MovieClip
      {
         return MovieClip(this._vy4648.getChildByName(param1));
      }
      
      private function _rp6120(param1:String) : MovieClip
      {
         return MovieClip(this._oj5802.getChildByName(param1));
      }
      
      private function _ty4652(param1:String) : MovieClip
      {
         return MovieClip(this.interfaz.getChildByName(param1));
      }
      
      private function _gu9337(param1:String) : MovieClip
      {
         return MovieClip(this._ng11870.getChildByName(param1));
      }
      
      private function _yg9232(param1:String) : MovieClip
      {
         return MovieClip(this.loader.getChildByName(param1));
      }
      
      private function _vs10905(param1:String) : MovieClip
      {
         return MovieClip(this.bpad.getChildByName(param1));
      }
      
      private function _jn5062(param1:String) : MovieClip
      {
         return MovieClip(this._jb7440.getChildByName(param1));
      }
      
      public function _ad12085(param1:int) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case _vn1830:
               _loc2_ = int(this._qu13158.numChildren);
               break;
            case _jf1741:
               _loc2_ = int(this._vy4648.numChildren);
               break;
            case _co9468:
               _loc2_ = int(this._oj5802.numChildren);
               break;
            case _wa4051:
               _loc2_ = int(this.interfaz.numChildren);
               break;
            case _hh2073:
               _loc2_ = int(this._ng11870.numChildren);
               break;
            case _wj14746:
               _loc2_ = int(this.loader.numChildren);
               break;
            case _iw3373:
               _loc2_ = int(this.bpad.numChildren);
               break;
            case _ww5897:
               _loc2_ = int(this._jb7440.numChildren);
         }
         return _loc2_;
      }
      
      public function _en5283(param1:int, param2:int) : MovieClip
      {
         switch(param2)
         {
            case _vn1830:
               var _loc3_:MovieClip = MovieClip(this._qu13158.getChildAt(param1));
               break;
            case _jf1741:
               _loc3_ = MovieClip(this._vy4648.getChildAt(param1));
               break;
            case _co9468:
               _loc3_ = MovieClip(this._oj5802.getChildAt(param1));
               break;
            case _wa4051:
               _loc3_ = MovieClip(this.interfaz.getChildAt(param1));
               break;
            case _hh2073:
               _loc3_ = MovieClip(this._ng11870.getChildAt(param1));
               break;
            case _wj14746:
               _loc3_ = MovieClip(this.loader.getChildAt(param1));
               break;
            case _iw3373:
               _loc3_ = MovieClip(this.bpad.getChildAt(param1));
               break;
            case _ww5897:
               _loc3_ = MovieClip(this._jb7440.getChildAt(param1));
         }
         return null;
      }
      
      public function _rp107(param1:MovieClip, param2:int) : int
      {
         switch(param2)
         {
            case _vn1830:
               var _loc3_:int = int(this._qu13158.getChildIndex(param1));
               break;
            case _jf1741:
               _loc3_ = int(this._vy4648.getChildIndex(param1));
               break;
            case _co9468:
               _loc3_ = int(this._oj5802.getChildIndex(param1));
               break;
            case _wa4051:
               _loc3_ = int(this.interfaz.getChildIndex(param1));
               break;
            case _hh2073:
               _loc3_ = int(this._ng11870.getChildIndex(param1));
               break;
            case _wj14746:
               _loc3_ = int(this.loader.getChildIndex(param1));
               break;
            case _iw3373:
               _loc3_ = int(this.bpad.getChildIndex(param1));
               break;
            case _ww5897:
               _loc3_ = int(this._jb7440.getChildIndex(param1));
         }
         return 0;
      }
      
      public function _ax4972(param1:MovieClip) : int
      {
         return this._vy4648.getChildIndex(param1);
      }
      
      public function get popUp() : Sprite
      {
         return this._sp15851;
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
