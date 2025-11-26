package src.tv.boombang.application.social.authenticators
{
   import flash.external.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   
   public class _yy12562 implements _be51
   {
      
      private var _fq320:String;
      
      private var _km5903:String;
      
      private var _mp8065:String;
      
      private var _sf6994:String;
      
      private var _state:String;
      
      private var _uk11152:Boolean = false;
      
      private var _dv5504:Function = null;
      
      public function _yy12562()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
         if(!ExternalInterface.available)
         {
         }
         _kr10933._xo2736(_te13472._js2213,this._ke9091);
         _kr10933._xo2736(_te13472._ai13635,this._pq16003);
         _vv145._bw14657(_fg1060.data._ry9019,_fg1060.data._dk13651,_fg1060.data._qq2512);
      }
      
      public function login(param1:Object = null, param2:Function = null) : void
      {
         var _loc3_:Object = null;
         if(param1 == null)
         {
            param1 = new Object();
         }
         if(this._uk11152)
         {
            _loc3_ = {
               "action":(param1["action"] ? param1["action"] : "connect"),
               "method":"oauth",
               "client_id":(param1["clientId"] ? param1["clientId"] : this._fq320),
               "popup_uri":(param1["popupUri"] ? param1["popupUri"] : this._km5903),
               "redirect_uri":(param1["redirectUri"] ? param1["redirectUri"] : this._mp8065),
               "scope":(param1["scope"] ? param1["scope"] : this._sf6994),
               "state":(param1["state"] ? escape(param1["state"]) : escape(this._state)),
               "repsonse_type":"token",
               "display":"popup"
            };
            this._dv5504 = param2;
            if(ExternalInterface.available)
            {
               ExternalInterface.call("FacebookLog",_loc3_);
            }
         }
      }
      
      public function _ra768(param1:Object) : void
      {
      }
      
      public function _wc542(param1:Object = null, param2:Function = null) : void
      {
         this.login(param1,param2);
      }
      
      public function logout() : void
      {
      }
      
      private function _pq16003(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         var _loc3_:int = int(param1.items[0]);
         if(_loc2_ == _te13472._al13400 && this._dv5504 != null)
         {
            this._dv5504(_sw5071._xt5593,_loc3_ == _kr10933._ad11893 ? true : false);
         }
      }
      
      private function _ke9091(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         var _loc3_:int = int(param1._qp16092(2));
         if(_loc2_ != _te13472._xc1572 || _loc3_ != _te13472._iq2963)
         {
            return;
         }
         var _loc4_:int = int(param1.items[0]);
         if(_loc4_ == _kr10933._ad11893)
         {
            this._fq320 = param1.items[1];
            this._km5903 = param1.items[2];
            this._mp8065 = param1.items[3];
            this._sf6994 = param1.items[4];
            this._state = param1.items[5];
            this._uk11152 = true;
            _kr10933._mw12849(_te13472._js2213,this._ke9091);
            return;
         }
         throw new Error("Server responded with ERROR status to LoginInfoFacebook frame");
      }
   }
}

