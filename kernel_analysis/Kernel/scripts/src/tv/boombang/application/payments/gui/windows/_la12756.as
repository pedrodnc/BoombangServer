package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ja3764;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.countries.*;
   import src.tv.boombang.core.datatypes.payments._nv12424;
   import src.tv.boombang.library.list.*;
   import src.tv.boombang.library.windows._lx1779;
   
   public class _la12756 extends _ja3764 implements _jk15536
   {
      
      private var _sr11100:_om4028;
      
      private var _nq12936:_cy1767;
      
      private var _qh12983:_rs10876;
      
      private var _ym10154:Array;
      
      private var _kt11618:_lx1779;
      
      private var _ei14955:MovieClip;
      
      private var _ld8196:_ta7764;
      
      public function _la12756(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _oi4498(560);
         this._qh12983 = new _rs10876();
         this._qh12983.addEventListener(_ye11838._yh7280,this._yq14334,false,0,true);
         this._qh12983.x = 7;
         this._qh12983.y = 88;
         _xo6614.addChild(this._qh12983);
         this._ei14955 = _xo6614["methodContent"] as MovieClip;
         this._ym10154 = _fg1060._oq4061.payments.countries;
         this._nq12936 = new _cy1767(_xo6614["comboBox"],this._ym10154,_hv12530.getInstance()._my547,"country.code.");
         this._nq12936.addEventListener(Event.CHANGE,this._qe9199,false,0,true);
         if(_hv12530.getInstance()._my547 == "")
         {
            this._nq12936._mv11540(0);
         }
         else
         {
            this._nq12936._mv11540();
         }
         if(_xo6614["chooseCountry"])
         {
            this._sr11100 = new _om4028(_xo6614["chooseCountry"] as MovieClip);
            this._sr11100.txt = "window.payments.chooseCountry";
         }
         this._nq12936._hr11786();
      }
      
      private function _qe9199(param1:Event) : void
      {
         this._ld8196 = this._nq12936._nl13210 as _ta7764;
         this._qh12983._wt2363(this._ld8196._dl11403);
      }
      
      private function _yq14334(param1:_ye11838) : void
      {
         if(this._kt11618)
         {
            this._ei14955.removeChild(this._kt11618);
            this._kt11618.destroy();
            this._kt11618 = null;
         }
         var _loc2_:_nv12424 = param1.data;
         _loc2_._ti8365 = this._ld8196.id;
         this._kt11618 = new _cl7790(_loc2_);
         this._ei14955.addChild(this._kt11618);
         this._xo6614.setChildIndex(this._qh12983,this._xo6614.numChildren - 1);
         this._xo6614.setChildIndex(this._ei14955,this._xo6614.numChildren - 1);
      }
      
      override public function destroy() : void
      {
         this._nq12936.destroy();
         this._nq12936.removeEventListener(Event.CHANGE,this._qe9199);
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

