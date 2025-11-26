package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._sn4365;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.payments._nv12424;
   
   public class _mo13034 extends _sn4365 implements _jk15536
   {
      
      private var _rf7887:_xg1747;
      
      private var _lk15705:_om4028;
      
      private var _xf11202:_bi14833;
      
      private var _data:_nv12424;
      
      private var _yw2051:_bi14833;
      
      public function _mo13034(param1:MovieClip, param2:String, param3:_nv12424)
      {
         super(param1,param2,_gn3649._hm8630);
         this._data = param3;
         if(_xo6614["details"])
         {
            this._rf7887 = new _xg1747(_xo6614["details"] as MovieClip);
         }
         if(_xo6614["yourCode"])
         {
            this._lk15705 = new _om4028(_xo6614["yourCode"] as MovieClip);
         }
         if(_xo6614["infoText"])
         {
            this._xf11202 = new _bi14833(_xo6614["infoText"] as MovieClip);
            this._xf11202.txt = this._data.info;
            if(this._data.info == "")
            {
               this._xf11202.visible = false;
            }
         }
         this._mr4345._oi4498(170);
         this._mr4345._nd15322(9);
         this._mr4345._yi13970(6);
         this._sa10596._vr14785 = 86663;
         this._sa10596.text = "window.payments.btnValidate";
      }
      
      public function _ra1585() : void
      {
         this._rf7887.color = 16776960;
      }
      
      public function set details(param1:String) : void
      {
         this._rf7887.txt = param1;
         this._rf7887._oi4498(363);
         this._rf7887._xq11642();
         this._rf7887._bu2312();
      }
      
      public function set _kb5985(param1:String) : void
      {
         this._lk15705.txt = param1;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

