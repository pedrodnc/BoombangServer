package src.modules.interfaz.fichaKeko.votos
{
   import flash.display.*;
   import flash.text.*;
   import src.person._um8624;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ks612
   {
      
      private static const _mq15803:String = "mcVotesPastNum";
      
      private static const _eg4046:String = "ti_votos_num";
      
      private static const _um4415:String = "mcVotesStar";
      
      private static const _bq3250:String = "mcVotesBarras";
      
      private static const _ud12762:String = "mcVotesBarrasProgreso";
      
      private static const _tm3750:String = "tfVotosDescItem";
      
      private static const _am4751:String = "mcVotesBotonRollover";
      
      private var _lp13903:_um8624;
      
      private var _ec6387:Function;
      
      private var _hg11010:MovieClip;
      
      private var _uq11431:int;
      
      private var _ms12786:String;
      
      private var _wf14376:String;
      
      private var _af5551:MovieClip;
      
      private var _qh11436:MovieClip;
      
      private var _dx15108:MovieClip;
      
      private var _xq15192:TextField;
      
      private var _qt9304:TextField;
      
      private var _iu13582:MovieClip;
      
      private var _jn1235:MovieClip;
      
      private var _qi13976:TextField;
      
      private var _lo15021:TextField;
      
      private var _yy699:_kg183;
      
      private var _ow13413:_kg183;
      
      private var _qo15312:Boolean;
      
      public function _ks612(param1:int, param2:MovieClip, param3:Function, param4:_um8624, param5:String, param6:String, param7:Boolean)
      {
         super();
         this._uq11431 = param1;
         this._lp13903 = param4;
         this._ec6387 = param3;
         this._hg11010 = param2;
         this._ms12786 = param5;
         this._wf14376 = param6;
         this._qo15312 = param7;
         this._mb9782();
         this.refresh();
         if(!param7)
         {
            this._yy699 = new _kg183(param2[_am4751 + param1],this._af5705,this._uf13346,this._lk9289);
            this._ow13413 = new _kg183(param2[_am4751 + (param1 + _ck7617._my262 / 2)],this._vg2482,this._nk15889,this._gc9676);
         }
      }
      
      private function _af5705() : void
      {
         this._lk9289();
         this._ec6387(this._uq11431);
      }
      
      private function _uf13346() : void
      {
         this._qh11436.visible = false;
         this._iu13582.visible = true;
         this._qi13976.alpha = 1;
      }
      
      private function _lk9289() : void
      {
         this._qh11436.visible = true;
         this._iu13582.visible = false;
         this._qi13976.alpha = 0.7;
      }
      
      private function _vg2482() : void
      {
         this._gc9676();
         this._ec6387(this._uq11431 + _ck7617._my262 / 2);
      }
      
      private function _nk15889() : void
      {
         this._dx15108.visible = false;
         this._jn1235.visible = true;
         this._lo15021.alpha = 1;
      }
      
      private function _gc9676() : void
      {
         this._dx15108.visible = true;
         this._jn1235.visible = false;
         this._lo15021.alpha = 0.7;
      }
      
      public function destroy() : void
      {
         if(this._yy699 != null)
         {
            this._yy699.destroy();
            this._yy699 = null;
         }
         if(this._ow13413 != null)
         {
            this._ow13413.destroy();
            this._ow13413 = null;
         }
      }
      
      private function _mb9782() : void
      {
         this._qh11436 = MovieClip(this._hg11010.getChildByName(_mq15803 + this._uq11431));
         this._dx15108 = MovieClip(this._hg11010.getChildByName(_mq15803 + (this._uq11431 + _ck7617._my262 / 2)));
         this._xq15192 = TextField(this._qh11436.getChildByName(_eg4046));
         this._qt9304 = TextField(this._dx15108.getChildByName(_eg4046));
         this._iu13582 = MovieClip(this._hg11010.getChildByName(_um4415 + this._uq11431));
         this._jn1235 = MovieClip(this._hg11010.getChildByName(_um4415 + (this._uq11431 + _ck7617._my262 / 2)));
         this._qi13976 = TextField(this._hg11010.getChildByName(_tm3750 + this._uq11431));
         this._lo15021 = TextField(this._hg11010.getChildByName(_tm3750 + (this._uq11431 + _ck7617._my262 / 2)));
         this._af5551 = MovieClip(this._hg11010[_bq3250][_ud12762 + this._uq11431]);
      }
      
      public function refresh() : void
      {
         var _loc1_:int = int(this._lp13903._cq10213[this._uq11431]);
         var _loc2_:int = 100 - _loc1_;
         var _loc3_:String = String(_loc1_);
         var _loc4_:String = String(_loc2_);
         if(_loc1_ < 10)
         {
            _loc3_ = "0" + _loc3_;
         }
         if(_loc2_ < 10)
         {
            _loc4_ = "0" + _loc4_;
         }
         this._qh11436.visible = true;
         this._dx15108.visible = true;
         _yq8362._xl9503(this._xq15192,_loc3_);
         _yq8362._xl9503(this._qt9304,_loc4_);
         this._iu13582.visible = false;
         this._jn1235.visible = false;
         _yq8362._xl9503(this._qi13976,this._ms12786);
         _yq8362._xl9503(this._lo15021,this._wf14376);
         this._qi13976.alpha = 0.7;
         this._lo15021.alpha = 0.7;
         this._af5551.width = _loc1_ * 1.34;
      }
   }
}

