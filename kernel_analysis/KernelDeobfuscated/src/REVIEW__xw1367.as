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
      
      public static const count:int = Configuration.count2;
      
      public static const count1:int = Configuration.count3;
      
      public static const count2:int = 0;
      
      public static const count3:int = 1;
      
      public static const count4:int = 2;
      
      public static const count5:int = 3;
      
      public static const count6:int = 4;
      
      public static const count7:int = 5;
      
      public static const count8:int = 6;
      
      public static const count9:int = 7;
      
      public static const count10:int = 8;
      
      public static const count11:int = 0;
      
      public static const count12:int = 1;
      
      public static const count13:int = 2;
      
      public static const count14:int = 3;
      
      public static const count15:int = 4;
      
      public static const count16:int = 5;
      
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
      
      private var items:Array;
      
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
         this.items = [this._qu13158,this._vy4648,this._oj5802,this._lc12158];
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
         addEventListener(Event.ADDED_TO_STAGE,this.start,false,0,true);
      }
      
      public static function getInstance() : _xw1367
      {
         if(_xw1367._instance == null)
         {
            _xw1367._instance = new _xw1367(new _rw9443());
         }
         return _xw1367._instance;
      }
      
      protected function start(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.start);
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
         var count:Point = null;
         var count3:Sprite = null;
         if(stage)
         {
            count = new Point();
            count.x = -param1.x + stage.stageWidth * 0.5;
            count.y = -param1.y + stage.stageHeight * 0.5;
            count.x = Math.min(0,count.x);
            count.x = Math.max(stage.stageWidth - count,count.x);
            count.y = Math.min(0,count.y);
            count.y = Math.max(stage.stageHeight - count1,count.y);
            for each(count3 in this.items)
            {
               count3.x = count.x;
               count3.y = count.y;
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
            case count2:
               this._ve10012(param1,param3);
               return;
            case count3:
               this._fx8766(param1,param3,param4);
               return;
            case count4:
               this._mw2335(param1,param3);
               return;
            case count5:
               this._ry4529(param1,param3);
               return;
            case count10:
               this._lc12158.addChild(param1);
               return;
            case count6:
               this._qu7011(param1);
               return;
            case count7:
               this.loadResource(param1);
               return;
            case count8:
               this._tc22(param1);
               return;
            case count9:
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
      
      public function move1(param1:MovieClip) : void
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
         param1.count6 = param3;
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
      
      private function loadResource(param1:MovieClip) : void
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
      
      public function move2(param1:MovieClip, param2:int) : void
      {
         switch(param2)
         {
            case count2:
               this.move3(param1);
               return;
            case count3:
               this.move4(param1);
               return;
            case count4:
               this.move5(param1);
               return;
            case count5:
               this.move6(param1);
               return;
            case count10:
               this._lc12158.removeChild(param1);
               return;
            case count6:
               this.move7(param1);
               return;
            case count7:
               this.move8(param1);
               return;
            case count8:
               this.move9(param1);
               return;
            case count9:
               this.move10(param1);
               return;
            default:
               return;
         }
      }
      
      public function _bi13167(param1:String, param2:int) : void
      {
         switch(param2)
         {
            case count2:
               this.move11(param1);
               return;
            case count3:
               this.move12(param1);
               return;
            case count4:
               this.move13(param1);
               return;
            case count5:
               this.move14(param1);
               return;
            case count6:
               this.move15(param1);
               return;
            case count7:
               this.move16(param1);
               return;
            case count9:
               this.move18(param1);
               return;
            default:
               return;
         }
      }
      
      private function move3(param1:MovieClip) : void
      {
         if(this._qu13158.contains(param1))
         {
            this._qu13158.removeChildAt(this._qu13158.getChildIndex(param1));
         }
      }
      
      private function move4(param1:MovieClip) : void
      {
         if(this._vy4648.contains(param1))
         {
            this._vy4648.removeChildAt(this._vy4648.getChildIndex(param1));
         }
      }
      
      private function move5(param1:MovieClip) : void
      {
         if(this._oj5802.contains(param1))
         {
            this._oj5802.removeChildAt(this._oj5802.getChildIndex(param1));
         }
      }
      
      private function move6(param1:MovieClip) : void
      {
         if(this.interfaz.contains(param1))
         {
            this.interfaz.removeChildAt(this.interfaz.getChildIndex(param1));
         }
      }
      
      private function move7(param1:MovieClip) : void
      {
         if(this._ng11870.contains(param1))
         {
            this._ng11870.removeChildAt(this._ng11870.getChildIndex(param1));
         }
      }
      
      private function move8(param1:MovieClip) : void
      {
         if(this.loader.contains(param1))
         {
            this.loader.removeChildAt(this.loader.getChildIndex(param1));
         }
      }
      
      private function move9(param1:MovieClip) : void
      {
         if(this.bpad.contains(param1))
         {
            this.bpad.removeChildAt(this.bpad.getChildIndex(param1));
         }
      }
      
      private function move10(param1:MovieClip) : void
      {
         if(this._jb7440.contains(param1))
         {
            this._jb7440.removeChildAt(this._jb7440.getChildIndex(param1));
         }
      }
      
      private function move11(param1:String) : void
      {
         var count:MovieClip = MovieClip(this._qu13158.getChildByName(param1));
         if(count != null)
         {
            this._qu13158.removeChild(count);
         }
      }
      
      private function move12(param1:String) : void
      {
         var count:MovieClip = MovieClip(this._vy4648.getChildByName(param1));
         if(count != null)
         {
            this._vy4648.removeChild(count);
         }
      }
      
      private function move13(param1:String) : void
      {
         var count:MovieClip = MovieClip(this._oj5802.getChildByName(param1));
         if(count != null)
         {
            this._oj5802.removeChild(count);
         }
      }
      
      private function move14(param1:String) : void
      {
         var count:MovieClip = MovieClip(this.interfaz.getChildByName(param1));
         if(count != null)
         {
            this.interfaz.removeChild(count);
         }
      }
      
      private function move15(param1:String) : void
      {
         var count:MovieClip = MovieClip(this._ng11870.getChildByName(param1));
         if(count != null)
         {
            this._ng11870.removeChild(count);
         }
      }
      
      private function move16(param1:String) : void
      {
         var count:MovieClip = MovieClip(this.loader.getChildByName(param1));
         if(count != null)
         {
            this.loader.removeChild(count);
         }
      }
      
      private function move17(param1:String) : void
      {
         var count:MovieClip = MovieClip(this.bpad.getChildByName(param1));
         if(count != null)
         {
            this.loader.removeChild(count);
         }
      }
      
      private function move18(param1:String) : void
      {
         var count:MovieClip = MovieClip(this._jb7440.getChildByName(param1));
         if(count != null)
         {
            this._jb7440.removeChild(count);
         }
      }
      
      public function _qd11184(param1:String, param2:int) : MovieClip
      {
         switch(param2)
         {
            case count2:
               var count3:MovieClip = this._ul12978(param1);
               break;
            case count3:
               count3 = this._jw12351(param1);
               break;
            case count4:
               count3 = this._rp6120(param1);
               break;
            case count5:
               count3 = this._ty4652(param1);
               break;
            case count6:
               count3 = this._gu9337(param1);
               break;
            case count7:
               count3 = this.loadResource1(param1);
               break;
            case count8:
               count3 = this._vs10905(param1);
               break;
            case count9:
               count3 = this._jn5062(param1);
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
      
      private function loadResource1(param1:String) : MovieClip
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
         var count:int = 0;
         switch(param1)
         {
            case count2:
               count = int(this._qu13158.numChildren);
               break;
            case count3:
               count = int(this._vy4648.numChildren);
               break;
            case count4:
               count = int(this._oj5802.numChildren);
               break;
            case count5:
               count = int(this.interfaz.numChildren);
               break;
            case count6:
               count = int(this._ng11870.numChildren);
               break;
            case count7:
               count = int(this.loader.numChildren);
               break;
            case count8:
               count = int(this.bpad.numChildren);
               break;
            case count9:
               count = int(this._jb7440.numChildren);
         }
         return count;
      }
      
      public function _en5283(param1:int, param2:int) : MovieClip
      {
         switch(param2)
         {
            case count2:
               var count3:MovieClip = MovieClip(this._qu13158.getChildAt(param1));
               break;
            case count3:
               count3 = MovieClip(this._vy4648.getChildAt(param1));
               break;
            case count4:
               count3 = MovieClip(this._oj5802.getChildAt(param1));
               break;
            case count5:
               count3 = MovieClip(this.interfaz.getChildAt(param1));
               break;
            case count6:
               count3 = MovieClip(this._ng11870.getChildAt(param1));
               break;
            case count7:
               count3 = MovieClip(this.loader.getChildAt(param1));
               break;
            case count8:
               count3 = MovieClip(this.bpad.getChildAt(param1));
               break;
            case count9:
               count3 = MovieClip(this._jb7440.getChildAt(param1));
         }
         return null;
      }
      
      public function _rp107(param1:MovieClip, param2:int) : int
      {
         switch(param2)
         {
            case count2:
               var count3:int = int(this._qu13158.getChildIndex(param1));
               break;
            case count3:
               count3 = int(this._vy4648.getChildIndex(param1));
               break;
            case count4:
               count3 = int(this._oj5802.getChildIndex(param1));
               break;
            case count5:
               count3 = int(this.interfaz.getChildIndex(param1));
               break;
            case count6:
               count3 = int(this._ng11870.getChildIndex(param1));
               break;
            case count7:
               count3 = int(this.loader.getChildIndex(param1));
               break;
            case count8:
               count3 = int(this.bpad.getChildIndex(param1));
               break;
            case count9:
               count3 = int(this._jb7440.getChildIndex(param1));
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
