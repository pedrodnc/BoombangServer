package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._sn4365;
   import src.tv.boombang.application.payments.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.payments._nv12424;
   
   public class _lc2774 extends _sn4365 implements _jk15536
   {
      
      private var _rf7887:_xg1747;
      
      private var _lk15705:_om4028;
      
      private var _xf11202:_bi14833;
      
      private var _bg1129:_xg1747;
      
      private var _af14672:_yb1551;
      
      private var _data:_nv12424;
      
      public function _lc2774(param1:MovieClip, param2:String, param3:_nv12424)
      {
         var _loc4_:* = null;
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
            this._xf11202.txt = this._data.change[0]._at985;
         }
         if(_xo6614["cost"])
         {
            if(Boolean(this._data.change) && this._data.change.length > 0)
            {
               this._bg1129 = new _xg1747(_xo6614["cost"] as MovieClip);
               _loc4_ = _fg1060._mn8930._ad13455("window.payments.circleCredits",this._data.change[0]._gd9340);
               if(this._data._ti8365 == "GB")
               {
                  _loc4_ += "<font color=\'#FFFFFF\'>" + this._data.change[0]._cr1013 + " " + this._data.change[0]._sb10522;
               }
               else if(this._data._ti8365 == "CA")
               {
                  _loc4_ += "<font color=\'#FFFFFF\'>" + this._data.change[0]._cr1013 + " " + this._data.change[0]._sb10522 + " CAD";
               }
               else
               {
                  _loc4_ += "<font color=\'#FFFFFF\'>" + this._data.change[0]._sb10522 + " " + this._data.change[0]._cr1013;
               }
               _loc4_ += "<br>";
               _loc4_ = _loc4_ + _fg1060._mn8930._ad13455("window.payments.by" + this._data.type);
               _loc4_ = _loc4_ + "</font>";
               this._bg1129.txt = _loc4_;
            }
            else
            {
               _xo6614["cost"].visible = false;
            }
         }
         if(_xo6614["promo"])
         {
            this._af14672 = new _yb1551(_xo6614["promo"] as MovieClip);
            if(this._data.change)
            {
               if(!isNaN(this._data.change[0]._ds9766) || this._data.change[0]._we13394 > 1)
               {
                  this._af14672.setData(this._data.change[0]);
               }
            }
         }
         this._mr4345._oi4498(170);
         this._mr4345._yi13970(6);
         this._mr4345._nd15322(9);
         this._sa10596._vr14785 = 86663;
         this._sa10596.text = "window.payments.btnValidate";
      }
      
      public function set details(param1:String) : void
      {
         this._rf7887.txt = param1;
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

