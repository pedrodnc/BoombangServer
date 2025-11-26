package src.modules.interfaz.baseChat
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.config.*;
   import src.utils.*;
   
   public class ChatDataModel
   {
      
      private static const textString:String = "mcBaseBrujula";
      
      private static const urlString2:String = "mcBotonExit";
      
      private static const urlString4:String = "mcMarikita";
      
      private static const textString3:String = "mcTooltipExit";
      
      private static const urlString21:String = "tfTooltip";
      
      private static const urlString31:String = "come";
      
      private static const urlString32:String = "comeStop";
      
      private static const urlString33:String = "leave";
      
      private static const urlString34:String = "leaveStop";
      
      private static const count:int = 6725906;
      
      private static const count1:int = 509;
      
      private static const count2:int = 611;
      
      private var _as14567:MovieClip;
      
      private var _lt10352:MovieClip;
      
      private var _ob9498:MovieClip;
      
      private var _en14060:MovieClip;
      
      private var _ke13937:Function;
      
      public function ChatDataModel(param1:MovieClip, param2:Function)
      {
         super();
         this._as14567 = param1[textString];
         this._ke13937 = param2;
         this._en14060 = MovieClip(this._as14567[textString3]);
         this._lt10352 = MovieClip(this._as14567[urlString4]);
         this._ob9498 = MovieClip(this._as14567[urlString2]);
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
         this._en14060.visible = Configuration.isEnabled5;
         this._en14060.mouseEnabled = false;
         this._en14060.mouseChildren = false;
         UtilsUtils._xl9503(this._en14060[urlString21],ChatManager._hu2466);
         UtilsUtils._np7275(this._en14060[urlString21],count);
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
         var count2:Point = this._as14567.parent.globalToLocal(new Point(count1,count2));
         this._as14567.x = count2.x;
         this._as14567.y = 0;
      }
      
      private function _yv3533(param1:MouseEvent) : void
      {
         this._en14060.visible = true;
         this._si5339();
      }
      
      private function _dy4504(param1:MouseEvent) : void
      {
         this._en14060.visible = Configuration.isEnabled5;
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
         this.attack();
      }
      
      private function _si5339() : void
      {
         var count2:int = int(this._lt10352.currentFrame);
         var count:int = int(StringUtils._tm12465(this._lt10352,urlString31));
         var count3:int = int(StringUtils._tm12465(this._lt10352,urlString32));
         var count1:int = int(StringUtils._tm12465(this._lt10352,urlString33));
         var count2:int = int(StringUtils._tm12465(this._lt10352,urlString34));
         if(count2 < count)
         {
            this._lt10352.gotoAndPlay(count);
         }
      }
      
      private function _tq2885() : void
      {
         var count2:int = int(this._lt10352.currentFrame);
         var count:int = int(StringUtils._tm12465(this._lt10352,urlString31));
         var count3:int = int(StringUtils._tm12465(this._lt10352,urlString32));
         var count1:int = int(StringUtils._tm12465(this._lt10352,urlString33));
         var count2:int = int(StringUtils._tm12465(this._lt10352,urlString34));
         if(count2 == count3)
         {
            this._lt10352.gotoAndPlay(count1);
         }
      }
      
      private function attack() : void
      {
         var count2:int = int(this._lt10352.currentFrame);
         var count:int = int(StringUtils._tm12465(this._lt10352,urlString31));
         var count3:int = int(StringUtils._tm12465(this._lt10352,urlString32));
         var count1:int = int(StringUtils._tm12465(this._lt10352,urlString33));
         var count2:int = int(StringUtils._tm12465(this._lt10352,urlString34));
         if(count2 == count2)
         {
            if(this._ob9498.hitTestPoint(this._ob9498.stage.mouseX,this._ob9498.stage.mouseY))
            {
               this._lt10352.gotoAndPlay(count);
            }
            else
            {
               this._lt10352.gotoAndStop(1);
            }
         }
         else if(count2 == count3)
         {
            if(!this._ob9498.hitTestPoint(this._ob9498.stage.mouseX,this._ob9498.stage.mouseY))
            {
               this._lt10352.gotoAndPlay(count1);
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
      
      public function show() : void
      {
         if(this._as14567.visible == false)
         {
            this._as14567.visible = true;
         }
      }
      
      public function authenticateUser2() : void
      {
         if(this._as14567.visible == true)
         {
            this._as14567.visible = false;
         }
      }
   }
}

