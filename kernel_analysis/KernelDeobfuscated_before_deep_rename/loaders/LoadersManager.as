package src.loaders
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class LoadersManager extends LoadersManager
   {
      
      protected static const _jt8691:String = "mcCargador";
      
      protected static const _wf11764:String = "mcFlor";
      
      protected static const _sy10352:String = "tfTexto";
      
      protected static const _ju1299:String = "tfElementos";
      
      protected static const _el1298:String = "tfPorcentaje";
      
      protected static const _sy12728:String = "tfDescNovedad";
      
      protected static const _lq13915:int = 4;
      
      protected var _xn9178:int;
      
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
         this._oi12329 = MovieClip(_eh11850.getChildByName(_jt8691));
         if(this._oi12329 != null)
         {
            this._jf8323 = MovieClip(this._oi12329.getChildByName(_wf11764));
            this._wl10980 = TextField(this._oi12329.getChildByName(_sy10352));
            this._qk2710 = TextField(this._oi12329.getChildByName(_ju1299));
            this._bc13422 = TextField(this._oi12329.getChildByName(_el1298));
            this._ea13305 = TextField(this._oi12329.getChildByName(_sy12728));
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
         this._xn9178 = _lq13915;
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
      
      override public function _aj8898(param1:int) : void
      {
         super._aj8898(param1);
         if(this._jf8323 != null)
         {
            var _loc2_:int = int(param1 / 4 + 1);
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
         --this._xn9178;
         if(this._xn9178 == 0)
         {
            if(this._wl10980 != null)
            {
               this._wl10980.visible = true;
            }
         }
         else if(this._xn9178 < -_lq13915)
         {
            if(this._wl10980 != null)
            {
               this._wl10980.visible = false;
            }
            this._xn9178 = _lq13915;
         }
      }
   }
}

