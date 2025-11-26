package src.loaders
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class LoadersManager extends LoadersManager
   {
      
      protected static const textString:String = "mcCargador";
      
      protected static const urlString25:String = "mcFlor";
      
      protected static const textString1:String = "tfTexto";
      
      protected static const textString3:String = "tfElementos";
      
      protected static const textString4:String = "tfPorcentaje";
      
      protected static const textString5:String = "tfDescNovedad";
      
      protected static const count:int = 4;
      
      protected var count1:int;
      
      protected var _oi12329:MovieClip;
      
      protected var _jf8323:MovieClip;
      
      protected var _wl10980:TextField;
      
      protected var _qk2710:TextField;
      
      protected var _bc13422:TextField;
      
      protected var _ea13305:TextField;
      
      public function LoadersManager(param1:MovieClip)
      {
         super(param1);
         this.init();
      }
      
      protected function init() : void
      {
         this._oi12329 = MovieClip(_eh11850.getChildByName(textString));
         if(this._oi12329 != null)
         {
            this._jf8323 = MovieClip(this._oi12329.getChildByName(urlString25));
            this._wl10980 = TextField(this._oi12329.getChildByName(textString1));
            this._qk2710 = TextField(this._oi12329.getChildByName(textString3));
            this._bc13422 = TextField(this._oi12329.getChildByName(textString4));
            this._ea13305 = TextField(this._oi12329.getChildByName(textString5));
         }
         if(this._jf8323 != null)
         {
            this._jf8323.gotoAndStop(1);
         }
         if(this._qk2710 != null)
         {
            this._qk2710.text = "";
         }
         if(this._wl10980 != null)
         {
            this._wl10980.visible = true;
         }
         this.count1 = count;
         _mk15381();
         _eh11850.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _eh11850.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function _un6017(param1:int, param2:int) : void
      {
         if(param1 == 0 && param2 == 0)
         {
            if(this._qk2710 != null)
            {
               this._qk2710.text = "";
            }
         }
         else if(this._qk2710 != null)
         {
            this._qk2710.text = param1.toString() + "/" + param2.toString();
         }
      }
      
      override public function _ue3985(param1:String) : void
      {
         if(this._wl10980 != null)
         {
            this._wl10980.text = param1;
         }
      }
      
      override public function _jc618(param1:String) : void
      {
         if(this._ea13305 != null)
         {
            this._ea13305.text = param1;
         }
      }
      
      override public function stop(param1:int) : void
      {
         super.stop(param1);
         if(this._jf8323 != null)
         {
            var count:int = int(param1 / 4 + 1);
            this._jf8323.gotoAndStop(0);
         }
         if(this._bc13422 != null)
         {
            if(_fn7388 < 100)
            {
               this._bc13422.text = _fn7388.toString() + " %";
            }
            else
            {
               this._bc13422.text = "100 %";
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         --this.count1;
         if(this.count1 == 0)
         {
            if(this._wl10980 != null)
            {
               this._wl10980.visible = true;
            }
         }
         else if(this.count1 < -count)
         {
            if(this._wl10980 != null)
            {
               this._wl10980.visible = false;
            }
            this.count1 = count;
         }
      }
   }
}

