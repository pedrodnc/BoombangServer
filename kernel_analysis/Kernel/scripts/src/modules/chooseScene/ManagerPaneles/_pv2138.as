package src.modules.chooseScene.ManagerPaneles
{
   import flash.display.MovieClip;
   import src.modules.antitimos._aq7621;
   import src.modules.baneos.*;
   import src.modules.chooseScene._ij15863;
   import src.modules.chooseScene._nw11343;
   import src.modules.chooseScene.managerBanners.*;
   import src.modules.chooseScene.panelAntitimos.*;
   import src.modules.chooseScene.panelMariquita._ty11551;
   import src.modules.chooseScene.panelSuperiorDerecho.*;
   import src.modules.chooseScene.panelTips.*;
   import src.modules.creditos._nr1168;
   import src.modules.member.*;
   import src.modules.noticias.*;
   import src.utils.fichas.*;
   
   public class _pv2138
   {
      
      public var _hi12034:String;
      
      public var _xo14236:String;
      
      public var _wi6038:MovieClip;
      
      public var _dx12824:Object;
      
      public var _tr10766:_ox15379;
      
      public var _gy10361:_nw11343;
      
      public var _vc10957:_ij15863;
      
      public var _pg10414:_ty11551;
      
      public var _hd13280:_aq7621;
      
      public var _xe10392:_ef2682;
      
      public var _bg10415:_nr1168;
      
      private var _uo14455:Function;
      
      public function _pv2138(param1:String, param2:String, param3:_ox15379, param4:_nw11343 = null, param5:_ij15863 = null, param6:_ty11551 = null, param7:_aq7621 = null, param8:_ef2682 = null, param9:_nr1168 = null, param10:Function = null)
      {
         super();
         this._hi12034 = param1;
         this._xo14236 = param2;
         this._tr10766 = param3;
         this._gy10361 = param4;
         this._vc10957 = param5;
         this._pg10414 = param6;
         this._hd13280 = param7;
         this._xe10392 = param8;
         this._bg10415 = param9;
         this._uo14455 = param10;
      }
      
      public function _fo13835(param1:Function) : void
      {
         switch(this._xo14236)
         {
            case _ad13715._qn1953:
               this._dx12824 = new _wq1414(this._wi6038,this._tr10766,param1);
               return;
            case _ad13715._fm14100:
               this._dx12824 = new _qo12020(this._wi6038,param1);
               return;
            case _ad13715._ty8083:
               this._dx12824 = new _kl13119(this._wi6038,param1,this._gy10361,this._vc10957);
               return;
            case _ad13715._sq8550:
               this._dx12824 = new _rd9387(this._wi6038,this._gy10361);
               return;
            case _ad13715._dq14459:
               this._dx12824 = new _mj624(this._wi6038,this._gy10361);
               return;
            case _ad13715._kd13478:
               this._dx12824 = new _we14660(this._wi6038);
               return;
            case _ad13715._sl2814:
               this._dx12824 = new _pn3311(this._wi6038,this._gy10361,param1);
               return;
            case _ad13715._qv5840:
               this._dx12824 = new _hc14301(this._wi6038,this._gy10361,this._pg10414,this._hd13280,param1);
               return;
            case _ad13715._qn12637:
               this._dx12824 = new _vk13249(this._wi6038,param1,false,this._xe10392,this._uo14455);
               return;
            case _ad13715._dy70:
               this._dx12824 = new _tq7443(this._wi6038,this._tr10766,param1);
               return;
            case _ad13715._ta13282:
               this._dx12824 = new _xk13406(this._wi6038,this._tr10766,param1);
               return;
            case _ad13715._ar3880:
               this._dx12824 = new _ik14878(this._wi6038);
               return;
            case _ad13715._ex15554:
               this._dx12824 = new _el14121(this._wi6038,this._gy10361,this._vc10957);
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         if(this._dx12824 != null)
         {
            this._dx12824.destroy();
            this._dx12824 = null;
         }
      }
      
      public function _db5584(param1:int, param2:int, param3:Object = null) : Boolean
      {
         if(this._dx12824 != null)
         {
            if(param3 != null)
            {
               return this._dx12824._db5584(param1,param2,param3);
            }
            return this._dx12824._db5584(param1,param2);
         }
         return false;
      }
      
      public function _sq6775(param1:MovieClip) : void
      {
         if(this._dx12824 != null)
         {
            this._dx12824._sq6775(param1);
         }
      }
      
      public function _hu12389() : Boolean
      {
         if(this._dx12824 != null)
         {
            return this._dx12824._hu12389();
         }
         return false;
      }
   }
}

