package src.tv.boombang.application.navigation.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import flash.ui.*;
   import src.allData.texts.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.navigationMenu._kn4108;
   import src.tv.boombang.core.errors.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _lq13858 extends _wa1146
   {
      
      private var _td12627:_gn3649;
      
      private var _kt388:_re14376;
      
      public function _lq13858(param1:MovieClip, param2:int)
      {
         super(param1,param2);
         this._td12627 = new _gn3649(_xo6614["inputText"] as MovieClip,_gn3649._cc9054);
         this._td12627._nd15322(_ei10851._dc6950);
         this._td12627._oi4498(190,37);
         this._td12627.textColor = 16777215;
         this._td12627._ma3494(29627);
         this._td12627.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.validationWriteToSearch");
         this._td12627.addEventListener(FocusEvent.FOCUS_IN,this._rt11412,false,0,true);
         this._td12627.addEventListener(FocusEvent.FOCUS_OUT,this._ye14735,false,0,true);
         this._td12627._tc5184 = false;
         this._kt388 = new _re14376(_xo6614["searchButton"] as MovieClip,"navigationMenu.buttons.search");
         this._kt388.addEventListener(MouseEvent.CLICK,this._nd8269,false,0,true);
         if(_xo6614.contains(_progress))
         {
            _xo6614.removeChild(_progress);
         }
         _progress.visible = false;
         _kr10933._xo2736(_te13472._so4229,this._sk542);
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(0));
         var _loc3_:int = int(param1._qp16092(1));
         var _loc4_:int = int(param1.items[0]);
         var _loc5_:Array = param1.items.slice(1,param1.items.length);
         if(_loc2_ == _te13472._so4229)
         {
            if(_tv1901 != _loc4_)
            {
               throw new _bc6516("the tab id is not the same that the current tab id");
            }
            this._mx2448(_dx15654(_loc5_,_tv1901));
            _gk12156.visible = true;
            if(_loc5_.length == 0)
            {
               _gk12156.txt = "navigationMenu.search.result0";
            }
            else if(_loc5_.length == 1)
            {
               _gk12156.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.result1",_loc5_.length);
            }
            else
            {
               _gk12156.txt = (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.result",_loc5_.length);
            }
         }
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
      
      private function search() : void
      {
         if(this._td12627.txt != "" && this._td12627.txt != " " && this._td12627.txt.length > 2 && this._td12627.txt != (_lh7543.get(_dw1395) as _dw1395)._ad13455("navigationMenu.search.validationWriteToSearch"))
         {
            this._wp3955();
            _gk12156.txt = "";
            if(!_xo6614.contains(_progress))
            {
               _xo6614.addChild(_progress);
            }
            _progress.visible = true;
            _co12486._th13217(_tv1901,this._td12627.txt);
         }
         else if(this._td12627.txt.length < 3 && this._td12627.txt.length > 0)
         {
            _gk12156.txt = "navigationMenu.search.validationMinumLength";
            _gk12156.visible = true;
         }
         else
         {
            _gk12156.txt = "validation.fieldEmpty";
         }
      }
      
      override protected function _wp3955() : void
      {
         this._yf8727();
         super._wp3955();
      }
      
      override public function _mx2448(param1:Array) : void
      {
         var _loc2_:_in2808 = null;
         var _loc3_:_kn4108 = null;
         var _loc4_:int = 0;
         this._wp3955();
         while(_loc4_ < param1.length)
         {
            _loc2_ = new _in2808();
            _loc3_ = param1[_loc4_];
            _loc2_.addEventListener(_pw5334._yp5143,_cl8914,false,0,true);
            _loc2_.addEventListener(_pw5334._eu6579,_ap2047,false,0,true);
            _loc2_.addEventListener(_pw5334._ga9624,_cl8914,false,0,true);
            _loc2_.addEventListener(_pw5334._dt4861,_qh13554,false,0,true);
            _loc2_._os5347 = _loc3_;
            _loc2_.y = _loc2_.height * _loc4_ + 2 * _loc4_;
            _items.push(_loc2_);
            _content.addChild(_loc2_);
            _loc4_++;
         }
         update();
      }
      
      protected function _yf8727() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_in2808 = null;
         if(_items)
         {
            _loc1_ = 0;
            while(_loc1_ < _items.length)
            {
               _loc2_ = _items[_loc1_];
               _loc2_.removeEventListener(_pw5334._yp5143,_cl8914);
               _loc2_.removeEventListener(_pw5334._eu6579,_ap2047);
               _loc2_.removeEventListener(_pw5334._ga9624,_cl8914);
               _loc2_.removeEventListener(_pw5334._dt4861,_qh13554);
               _loc2_.destroy();
               _loc2_ = null;
               _loc1_++;
            }
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
      
      override public function destroy() : void
      {
         this._yf8727();
         this._kt388.destroy();
         this._td12627.destroy();
         _gk12156.destroy();
         this._kt388.removeEventListener(MouseEvent.CLICK,this._nd8269);
         _kr10933._mw12849(_te13472._so4229,this._sk542);
         _tq2768._ps6769().removeEventListener(KeyboardEvent.KEY_DOWN,this._dv2309);
         super.destroy();
      }
   }
}

