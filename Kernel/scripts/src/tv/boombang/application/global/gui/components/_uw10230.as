package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import flash.ui.*;
   import src.allData.texts.*;
   import src.tv.boombang.application.rankings.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _uw10230 extends EventDispatcher implements _jk15536
   {
      
      public static var _ma13729:int = 3;
      
      private var _td12627:_gn3649;
      
      private var _gk12156:_om4028;
      
      private var _kt388:_re14376;
      
      private var _xo6614:MovieClip;
      
      private var _sr14230:int;
      
      public function _uw10230(param1:MovieClip, param2:int = -1, param3:uint = 16777215, param4:uint = 29627)
      {
         super();
         if(param2 == -1)
         {
            param2 = _ma13729;
         }
         this._xo6614 = param1;
         this._sr14230 = param2;
         this._td12627 = new _gn3649(this._xo6614["inputText"] as MovieClip,_gn3649._cc9054);
         this._td12627._nd15322(_ei10851._dc6950);
         this._td12627._oi4498(190,37);
         this._td12627.textColor = param3;
         this._td12627._ma3494(param4);
         this._td12627.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.validationWriteToSearch");
         this._td12627.addEventListener(FocusEvent.FOCUS_IN,this._rt11412,false,0,true);
         this._td12627.addEventListener(FocusEvent.FOCUS_OUT,this._ye14735,false,0,true);
         this._td12627._tc5184 = false;
         this._kt388 = new _re14376(this._xo6614["searchButton"] as MovieClip,"buttons.search");
         this._kt388.addEventListener(MouseEvent.CLICK,this._nd8269,false,0,true);
      }
      
      public function destroy() : void
      {
         if(this._td12627)
         {
            this._td12627.removeEventListener(FocusEvent.FOCUS_IN,this._rt11412);
            this._td12627.removeEventListener(FocusEvent.FOCUS_OUT,this._ye14735);
            this._td12627.destroy();
            this._td12627 = null;
         }
         if(this._kt388)
         {
            this._kt388.removeEventListener(MouseEvent.CLICK,this._nd8269);
            this._kt388.destroy();
            this._kt388 = null;
         }
         if(this._gk12156)
         {
            this._gk12156.destroy();
            this._gk12156 = null;
         }
         _tq2768._ps6769().removeEventListener(KeyboardEvent.KEY_DOWN,this._dv2309);
      }
      
      private function _dv2309(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.search();
         }
      }
      
      private function _nd8269(param1:MouseEvent) : void
      {
         this.search();
      }
      
      protected function search() : void
      {
         if(this._td12627.txt != "" && this._td12627.txt != " " && this._td12627.txt.length >= this._sr14230 && this._td12627.txt != (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.validationWriteToSearch"))
         {
            dispatchEvent(new _oe14918(_oe14918._gw7109,this._td12627.txt));
         }
         else if(this._td12627.txt.length < this._sr14230 && this._td12627.txt.length > 0)
         {
            this._gk12156.visible = true;
         }
      }
      
      private function _rt11412(param1:FocusEvent) : void
      {
         if(this._td12627.txt == (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.validationWriteToSearch"))
         {
            this._td12627.txt = "";
         }
         _tq2768._ps6769().addEventListener(KeyboardEvent.KEY_DOWN,this._dv2309,false,0,true);
      }
      
      private function _ye14735(param1:FocusEvent) : void
      {
         if(this._td12627.txt == "" || this._td12627.txt == " ")
         {
            this._td12627.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.validationWriteToSearch");
         }
         _tq2768._ps6769().removeEventListener(KeyboardEvent.KEY_DOWN,this._dv2309);
      }
   }
}

