package src.loaders
{
   import flash.display.*;
   import flash.events.*;
   import src.utils.*;
   
   public class _ur15702 extends _jr15810
   {
      
      private static const _ld4723:String = "mcParticulas";
      
      private static const _fl9957:String = "mcParticle";
      
      private static const _me665:int = 140;
      
      private static const _vx4691:int = 1;
      
      private var _uj7843:int;
      
      private var _at7461:Array;
      
      private var _wm6777:MovieClip;
      
      private var _wr9031:MovieClip;
      
      public function _ur15702(param1:MovieClip)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         this._uj7843 = 0;
         this._at7461 = new Array();
         this._wm6777 = MovieClip(_eh11850.getChildByName(_ld4723));
         this._wr9031 = MovieClip(_eh11850.getChildByName(_fl9957));
         while(_loc2_ < _me665)
         {
            _loc1_ = _xv14798._dx10334(this._wr9031);
            this._at7461.push(_loc1_);
            _loc1_.active = false;
            _loc2_++;
         }
         _eh11850.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _eh11850.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         ++this._uj7843;
         if(this._uj7843 % _vx4691 == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < _me665)
            {
               _loc3_ = MovieClip(this._at7461[_loc2_]);
               if(_loc3_.active == false)
               {
                  this._fl8050(_loc3_);
                  this._wm6777.addChild(_loc3_);
                  break;
               }
               _loc2_++;
            }
         }
         _loc2_ = 0;
         while(_loc2_ < _me665)
         {
            _loc3_ = MovieClip(this._at7461[_loc2_]);
            if(_loc3_.active == true)
            {
               if(_loc3_.currentFrame == _loc3_.totalFrames)
               {
                  this._fl8050(_loc3_);
               }
            }
            _loc2_++;
         }
      }
      
      private function _fl8050(param1:MovieClip) : void
      {
         param1.gotoAndPlay(1);
         param1.alpha = 0.5 + Math.random() * 0.5;
         param1.x = -10 + Math.random() * 20;
         param1.y = -10 + Math.random() * 20;
         param1.rotation = Math.random() * 360;
         param1.scaleX = param1.scaleY = Math.random() * 2 + 1;
         param1.active = true;
      }
   }
}

