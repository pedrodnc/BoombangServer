package src.modules.doors
{
   import flash.display.MovieClip;
   import src.*;
   import src.allData.*;
   import src.modules.interfaz._je14031;
   import src.tv.boombang.core.datatypes.navigationMenu._kn4108;
   import src.utils.commonComponents.*;
   
   public class _eu1325
   {
      
      public var _ut4147:_kn4108;
      
      public var _gr6380:_fe9942;
      
      private var _fv7771:MovieClip;
      
      private var _wp13295:_je14031;
      
      public var _sg11546:Boolean;
      
      public var _ap9953:int;
      
      public var _tl8577:int;
      
      public var _rs3115:int;
      
      private var _fg13994:Boolean;
      
      private var _gu14138:_kg183;
      
      private var _cb6554:MovieClip;
      
      public function _eu1325(param1:int, param2:_kn4108, param3:_fe9942, param4:_je14031, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this._ap9953 = param1;
         this._ut4147 = param2;
         this._gr6380 = param3;
         this._wp13295 = param4;
         this._sg11546 = param5;
         this._tl8577 = param6;
         this._rs3115 = param7;
         this._fg13994 = param8;
         this._lq897();
      }
      
      public function _lq897() : void
      {
         this._fv7771 = _xw1367.getInstance()._qd11184(this._gr6380._sb1296,_xw1367._co9468);
         if(this._fv7771 != null)
         {
            this._gu14138 = new _kg183(this._fv7771,this._st14759,this._sm5059,this._hu8327);
         }
      }
      
      public function _ug14374() : void
      {
         if(this._gu14138 != null)
         {
            this._gu14138.destroy();
            this._gu14138 = null;
         }
      }
      
      public function _rd2341(param1:MovieClip) : void
      {
         this._cb6554 = param1;
      }
      
      public function destroy() : void
      {
         this._ug14374();
      }
      
      public function _ol8098() : _kn4108
      {
         return this._ut4147;
      }
      
      public function _cj15551(param1:Boolean, param2:_kn4108, param3:int, param4:int) : void
      {
         this._sg11546 = param1;
         this._ut4147 = param2;
         this._tl8577 = param3;
         this._rs3115 = param4;
      }
      
      public function _st14759() : void
      {
         if(this._sg11546)
         {
            if(_hv12530.getInstance()._vl6015)
            {
               this._wp13295._kw12357(this._ut4147,"");
            }
         }
         else
         {
            this._wp13295._ui11605._gt3152(this);
         }
      }
      
      public function _sm5059() : void
      {
         if(this._sg11546)
         {
         }
      }
      
      public function _hu8327() : void
      {
         if(this._sg11546)
         {
         }
      }
      
      public function get _gi10236() : Boolean
      {
         return this._fg13994;
      }
   }
}

