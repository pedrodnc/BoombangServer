package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.utils.*;
   
   public class InteraccionesUtils
   {
      
      private static const textString:String = "play";
      
      private static const textString1:String = "stop";
      
      private static const textString2:String = "tfDoblon";
      
      private static const textString3:String = "mcNumDoblon";
      
      private var _yf2368:MovieClip;
      
      private var _pi6147:MovieClip;
      
      private var _lr14372:TextField;
      
      private var isEnabled:Boolean;
      
      private var isEnabled1:Boolean;
      
      public function InteraccionesUtils(param1:MovieClip)
      {
         super();
         this._yf2368 = param1;
         this._pi6147 = MovieClip(param1.getChildByName(textString3));
         this._lr14372 = TextField(this._pi6147.getChildByName(textString2));
         this.isEnabled = false;
         this.isEnabled1 = false;
         param1.addEventListener(Event.ENTER_FRAME,this._ps8563);
      }
      
      public function destroy() : void
      {
         this._yf2368.removeEventListener(Event.ENTER_FRAME,this._ps8563);
      }
      
      public function _ym5191() : void
      {
         this.isEnabled1 = true;
      }
      
      public function _ny12054() : void
      {
         this.isEnabled1 = false;
      }
      
      public function _ad15308(param1:int) : void
      {
         this.isEnabled = true;
         this._yf2368.gotoAndPlay(textString);
         UtilsUtils._xl9503(this._lr14372,String(param1));
      }
      
      public function _su5919() : void
      {
         if(this.isEnabled1)
         {
            return;
         }
         var count2:int = int(this._yf2368.currentFrame);
         var count:int = int(this._yf2368.totalFrames);
         if(count2 != count)
         {
            return;
         }
         this.isEnabled = false;
         this._yf2368.gotoAndStop(textString1);
      }
      
      private function _ps8563(param1:Event) : void
      {
         if(!this.isEnabled)
         {
            return;
         }
         var count:int = int(this._yf2368.currentFrame);
         var count3:int = int(this._yf2368.totalFrames);
         switch(count)
         {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
               this._pi6147.visible = false;
               return;
            case 7:
               this._pi6147.visible = true;
               this._pi6147.x = -2.1;
               this._pi6147.width = 14;
               return;
            case 8:
               this._pi6147.visible = true;
               this._pi6147.x = -2;
               this._pi6147.width = 15;
               return;
            case 9:
               this._pi6147.visible = true;
               this._pi6147.x = -1;
               this._pi6147.width = 18.7;
               return;
            case 10:
               this._pi6147.visible = true;
               this._pi6147.x = -0.3;
               this._pi6147.width = 20;
               this._su5919();
               return;
            default:
               return;
         }
      }
   }
}

