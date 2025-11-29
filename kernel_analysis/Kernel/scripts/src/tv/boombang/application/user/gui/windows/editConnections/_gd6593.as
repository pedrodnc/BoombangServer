package src.tv.boombang.application.user.gui.windows.editConnections
{
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _gd6593 extends _lx1779
   {
      
      public static const _ql11306:String = "startStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _ef9526:String = "wrongKeyStep";
      
      public static const _fi12639:String = "unlockingConnectionsStep";
      
      public static const _fq1822:String = "errorInProcessStep";
      
      public static const _pb5870:String = "editConnectionsStep";
      
      public static const _qg7263:String = "addBoombangPasswordStep";
      
      private var _mj8326:String = "";
      
      private var _pp10396:String = "";
      
      private var _qb983:String = "";
      
      private var _yn6231:Object;
      
      public function _gd6593()
      {
         super();
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         switch(_hv12530.getInstance()._uf6036)
         {
            case _hv12530._ma6151:
               _wj9062._lt3848(_kd5077._vx13870());
               return;
            case _hv12530._kr15451:
               _ld5065._rp8491(true,this._mj8326);
               _wj9062._lt3848(_kd5077._ty10842());
               return;
            case _hv12530._lb6305:
               return;
            default:
               throw new Error("Unknown superkey status");
         }
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ql11306:
               if(param2 == _pm4313._dh1979)
               {
                  this._pp10396 = param3 as String;
                  _ld5065._pe4892(this._pp10396,_ld5065._kx6214);
                  _wj9062._lt3848(_kd5077._em6871());
               }
               return;
            case _pb5870:
               if(param2 == _wa4625._yj12760)
               {
                  _wj9062._lt3848(_kd5077._jk1276(this._pp10396));
               }
               return;
            case _qg7263:
               if(param2 == _pm4313._vr15134)
               {
                  _wj9062._lt3848(_kd5077._je11018(this._yn6231));
               }
               else if(param2 == _pm4313._dh1979)
               {
                  this._qb983 = param3["username"];
                  var _loc4_:Object = new Object();
                  _loc4_["username"] = param3["username"];
                  null["password"] = param3["newPassword"];
                  _sw5071._to2262._lc5739._wc542(null,this._bv5180);
                  _wj9062._lt3848(_kd5077._ty10842());
               }
               return;
            default:
               return;
         }
      }
      
      private function _bv5180(param1:_sw5071, param2:Boolean) : void
      {
         if(param2)
         {
            _fg1060.data._je8982 = 0;
            _fg1060.data.name = this._qb983;
            _fg1060.data._fd11666(_sw5071._to2262,true);
         }
         _wj9062._lt3848(_kd5077._je11018(this._yn6231));
      }
      
      private function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         var _loc3_:int = int(param1.items[0]);
         if(_loc3_ == _kr10933._qj7323)
         {
            _wj9062._lt3848(_kd5077._sh10302());
         }
         if(_loc2_ == _te13472._yj7183)
         {
            if(_loc3_ == _kr10933._ad11893)
            {
               this._mj8326 = param1.items[2];
               _ld5065._rp8491(true,this._mj8326);
               _wj9062._lt3848(_kd5077._ty10842());
            }
            else if(_loc3_ == _kr10933._vd12313)
            {
               _wj9062._lt3848(_kd5077._bc15262());
            }
         }
         else if(_loc2_ == _te13472._an157)
         {
            if(_loc3_ == _kr10933._ad11893)
            {
               this._yn6231 = {
                  "action":"accountlink",
                  "clientId":param1.items[1],
                  "redirectUri":param1.items[2],
                  "scope":param1.items[3],
                  "state":param1.items[4]
               };
               _wj9062._lt3848(_kd5077._je11018(this._yn6231));
            }
            else
            {
               _wj9062._lt3848(_kd5077._sh10302());
            }
         }
      }
   }
}

