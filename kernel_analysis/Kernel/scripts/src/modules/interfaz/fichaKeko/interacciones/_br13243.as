package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.utils.*;
   
   public class _br13243
   {
      
      private static const _su13233:String = "play";
      
      private static const _de3094:String = "stop";
      
      private static const _ej11754:String = "tfDoblon";
      
      private static const _mj13360:String = "mcNumDoblon";
      
      private var _yf2368:MovieClip;
      
      private var _pi6147:MovieClip;
      
      private var _lr14372:TextField;
      
      private var _yg8210:Boolean;
      
      private var _da8741:Boolean;
      
      public function _br13243(param1:MovieClip)
      {
         super();
         this._yf2368 = param1;
         this._pi6147 = MovieClip(param1.getChildByName(_mj13360));
         this._lr14372 = TextField(this._pi6147.getChildByName(_ej11754));
         this._yg8210 = false;
         this._da8741 = false;
         param1.addEventListener(Event.ENTER_FRAME,this._ps8563);
      }
      
      public function destroy() : void
      {
         this._yf2368.removeEventListener(Event.ENTER_FRAME,this._ps8563);
      }
      
      public function _ym5191() : void
      {
         this._da8741 = true;
      }
      
      public function _ny12054() : void
      {
         this._da8741 = false;
      }
      
      public function _ad15308(param1:int) : void
      {
         this._yg8210 = true;
         this._yf2368.gotoAndPlay(_su13233);
         _yq8362._xl9503(this._lr14372,String(param1));
      }
      
      public function _su5919() : void
      {
         if(this._da8741)
         {
            return;
         }
         var _loc1_:int = int(this._yf2368.currentFrame);
         var _loc2_:int = int(this._yf2368.totalFrames);
         if(_loc1_ != _loc2_)
         {
            return;
         }
         this._yg8210 = false;
         this._yf2368.gotoAndStop(_de3094);
      }
      
      private function _ps8563(param1:Event) : void
      {
         if(!this._yg8210)
         {
            return;
         }
         var _loc2_:int = int(this._yf2368.currentFrame);
         var _loc3_:int = int(this._yf2368.totalFrames);
         switch(_loc2_)
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

