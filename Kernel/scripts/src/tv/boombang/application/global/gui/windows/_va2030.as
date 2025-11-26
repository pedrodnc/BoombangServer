package src.tv.boombang.application.global.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.library.steps.*;
   
   public class _va2030 extends _ja3764
   {
      
      protected var _ig5144:_qy9375;
      
      protected var _sa10596:_va5249;
      
      protected var _ed7197:_va5249;
      
      public function _va2030(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         this._sa10596 = new _va5249(_xo6614["acceptBtn"],"button.accept");
         this._sa10596.addEventListener(MouseEvent.CLICK,this._uc10224,false,0,true);
         _qi5262.push(this._sa10596);
         if(_xo6614["cancelBtn"])
         {
            this._ed7197 = new _va5249(_xo6614["cancelBtn"],"button.cancel");
            this._ed7197.addEventListener(MouseEvent.CLICK,this._jw7416,false,0,true);
            _qi5262.push(this._ed7197);
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._sa10596)
         {
            this._sa10596.removeEventListener(MouseEvent.CLICK,this._uc10224);
            this._sa10596 = null;
         }
         if(this._ed7197)
         {
            this._ed7197.removeEventListener(MouseEvent.CLICK,this._jw7416);
            this._ed7197 = null;
         }
         _tq2768._ps6769().removeEventListener(KeyboardEvent.KEY_DOWN,this._dv2309);
      }
      
      public function set _kf3772(param1:uint) : void
      {
         if(this._sa10596)
         {
            this._sa10596._vr14785 = param1;
         }
         if(this._ed7197)
         {
            this._ed7197._vr14785 = param1;
         }
      }
      
      override public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         super._oi4498(param1,param2);
         if(param2 > 0)
         {
            this._sa10596.y = _uu15722 - this._sa10596.height - 5;
            if(_xo6614["cancelBtn"])
            {
               this._ed7197.y = _uu15722 - this._ed7197.height - 5;
            }
         }
      }
      
      override protected function _lb15297(param1:Event) : void
      {
         super._lb15297(param1);
         this.removeEventListener(Event.ADDED_TO_STAGE,this._lb15297);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this._dv2309,false,0,true);
      }
      
      private function _dv2309(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER && this._ou4931)
         {
            this._uc10224();
         }
      }
      
      protected function _uc10224(param1:MouseEvent = null) : void
      {
         if(this.validate())
         {
            _nk11935(_pm4313._dh1979,this._ly12555());
         }
      }
      
      protected function _jw7416(param1:MouseEvent) : void
      {
         _qn6887(param1);
      }
      
      protected function validate() : Boolean
      {
         return true;
      }
      
      protected function _ly12555() : Object
      {
         if(_xo6614["key"])
         {
            return (_xo6614["key"]["textContainer"]["txt"] as TextField).text;
         }
         return null;
      }
   }
}

