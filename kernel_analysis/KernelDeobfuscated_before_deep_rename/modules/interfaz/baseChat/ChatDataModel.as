package src.modules.interfaz.baseChat
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.config.*;
   import src.utils.*;
   
   public class ChatDataModel
   {
      
      private static const _tw4039:String = "mcBaseBrujula";
      
      private static const _yf5584:String = "mcBotonExit";
      
      private static const _ow11854:String = "mcMarikita";
      
      private static const _kb9613:String = "mcTooltipExit";
      
      private static const _ib12631:String = "tfTooltip";
      
      private static const _ci10972:String = "come";
      
      private static const _ig6277:String = "comeStop";
      
      private static const _vs9519:String = "leave";
      
      private static const _ue4696:String = "leaveStop";
      
      private static const _ps4900:int = 6725906;
      
      private static const _bl15101:int = 509;
      
      private static const _ec13614:int = 611;
      
      private var _as14567:MovieClip;
      
      private var _lt10352:MovieClip;
      
      private var _ob9498:MovieClip;
      
      private var _en14060:MovieClip;
      
      private var _ke13937:Function;
      
      public function ChatDataModel(param1:MovieClip, param2:Function)
      {
         super();
         this._as14567 = param1[_tw4039];
         this._ke13937 = param2;
         this._en14060 = MovieClip(this._as14567[_kb9613]);
         this._lt10352 = MovieClip(this._as14567[_ow11854]);
         this._ob9498 = MovieClip(this._as14567[_yf5584]);
         this._ob9498.buttonMode = true;
         this._as14567.tabEnabled = false;
         this._as14567.tabChildren = false;
         this.addListeners();
         this._lt10352.gotoAndStop(1);
         this._cg3203();
      }
      
      public function get movieClip() : MovieClip
      {
         return this._as14567;
      }
      
      private function _cg3203() : void
      {
         this._en14060.visible = Configuration._qp14200;
         this._en14060.mouseEnabled = false;
         this._en14060.mouseChildren = false;
         UtilsUtils._xl9503(this._en14060[_ib12631],ChatManager._hu2466);
         UtilsUtils._np7275(this._en14060[_ib12631],_ps4900);
      }
      
      public function destroy() : void
      {
         this._as14567.visible = true;
         this.removeListeners();
         this._as14567 = null;
         this._lt10352 = null;
         this._ob9498 = null;
         this._en14060 = null;
         this._ke13937 = null;
      }
      
      public function setPosition() : void
      {
         var _loc1_:Point = this._as14567.parent.globalToLocal(new Point(_bl15101,_ec13614));
         this._as14567.x = _loc1_.x;
         this._as14567.y = 0;
      }
      
      private function _yv3533(param1:MouseEvent) : void
      {
         this._en14060.visible = true;
         this._si5339();
      }
      
      private function _dy4504(param1:MouseEvent) : void
      {
         this._en14060.visible = Configuration._qp14200;
         this._tq2885();
      }
      
      private function _op12359(param1:MouseEvent) : void
      {
         if(this._ke13937 != null && Boolean(this._ke13937()))
         {
            this._ke13937 = null;
         }
      }
      
      public function loop() : void
      {
         this._nv6004();
      }
      
      private function _si5339() : void
      {
         var _loc1_:int = int(this._lt10352.currentFrame);
         var _loc2_:int = int(StringUtils._tm12465(this._lt10352,_ci10972));
         var _loc3_:int = int(StringUtils._tm12465(this._lt10352,_ig6277));
         var _loc4_:int = int(StringUtils._tm12465(this._lt10352,_vs9519));
         var _loc5_:int = int(StringUtils._tm12465(this._lt10352,_ue4696));
         if(_loc1_ < _loc2_)
         {
            this._lt10352.gotoAndPlay(_loc2_);
         }
      }
      
      private function _tq2885() : void
      {
         var _loc1_:int = int(this._lt10352.currentFrame);
         var _loc2_:int = int(StringUtils._tm12465(this._lt10352,_ci10972));
         var _loc3_:int = int(StringUtils._tm12465(this._lt10352,_ig6277));
         var _loc4_:int = int(StringUtils._tm12465(this._lt10352,_vs9519));
         var _loc5_:int = int(StringUtils._tm12465(this._lt10352,_ue4696));
         if(_loc1_ == _loc3_)
         {
            this._lt10352.gotoAndPlay(_loc4_);
         }
      }
      
      private function _nv6004() : void
      {
         var _loc1_:int = int(this._lt10352.currentFrame);
         var _loc2_:int = int(StringUtils._tm12465(this._lt10352,_ci10972));
         var _loc3_:int = int(StringUtils._tm12465(this._lt10352,_ig6277));
         var _loc4_:int = int(StringUtils._tm12465(this._lt10352,_vs9519));
         var _loc5_:int = int(StringUtils._tm12465(this._lt10352,_ue4696));
         if(_loc1_ == _loc5_)
         {
            if(this._ob9498.hitTestPoint(this._ob9498.stage.mouseX,this._ob9498.stage.mouseY))
            {
               this._lt10352.gotoAndPlay(_loc2_);
            }
            else
            {
               this._lt10352.gotoAndStop(1);
            }
         }
         else if(_loc1_ == _loc3_)
         {
            if(!this._ob9498.hitTestPoint(this._ob9498.stage.mouseX,this._ob9498.stage.mouseY))
            {
               this._lt10352.gotoAndPlay(_loc4_);
            }
         }
      }
      
      private function addListeners() : void
      {
         this._ob9498.addEventListener(MouseEvent.MOUSE_OVER,this._yv3533);
         this._ob9498.addEventListener(MouseEvent.MOUSE_OUT,this._dy4504);
         this._ob9498.addEventListener(MouseEvent.MOUSE_DOWN,this._op12359);
      }
      
      private function removeListeners() : void
      {
         this._ob9498.removeEventListener(MouseEvent.MOUSE_OVER,this._yv3533);
         this._ob9498.removeEventListener(MouseEvent.MOUSE_OUT,this._dy4504);
         this._ob9498.removeEventListener(MouseEvent.MOUSE_DOWN,this._op12359);
      }
      
      public function _db5584() : void
      {
         if(this._as14567.visible == false)
         {
            this._as14567.visible = true;
         }
      }
      
      public function _hu12389() : void
      {
         if(this._as14567.visible == true)
         {
            this._as14567.visible = false;
         }
      }
   }
}

