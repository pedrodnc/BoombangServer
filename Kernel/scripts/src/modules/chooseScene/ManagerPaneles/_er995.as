package src.modules.chooseScene.ManagerPaneles
{
   import flash.display.*;
   import src.loaders.*;
   import src.modules.antitimos._aq7621;
   import src.modules.chooseScene.*;
   import src.modules.chooseScene.panelMariquita._ty11551;
   import src.modules.creditos._nr1168;
   import src.modules.member._ef2682;
   import src.utils.fichas.*;
   
   public class _er995
   {
      
      private static const _gr8098:String = "mcPanel";
      
      private var _wx9983:Array;
      
      private var _su2721:Array;
      
      private var _qh1795:Function;
      
      private var _pg10414:_ty11551;
      
      private var _hd13280:_aq7621;
      
      private var _xe10392:_ef2682;
      
      private var _bg10415:_nr1168;
      
      private var _uo14455:Function;
      
      public function _er995(param1:Array, param2:Function, param3:_nw11343, param4:_ij15863, param5:_ty11551, param6:_aq7621, param7:_ef2682, param8:_nr1168, param9:Function)
      {
         var _loc10_:_pv2138 = null;
         var _loc12_:int = 0;
         super();
         this._su2721 = param1;
         this._qh1795 = param2;
         this._pg10414 = param5;
         this._hd13280 = param6;
         this._xe10392 = param7;
         this._bg10415 = param8;
         this._uo14455 = param9;
         this._wx9983 = new Array();
         var _loc11_:Array = _er995._mu4441();
         while(_loc12_ < _loc11_.length)
         {
            _loc10_ = _pv2138(_loc11_[_loc12_]);
            this._wx9983.push(new _pv2138(_loc10_._hi12034,_loc10_._xo14236,_loc10_._tr10766,param3,param4,param5,param6,param7,param8,param9));
            switch(_loc10_._hi12034)
            {
               case _mk16025._nh7492:
               case _mk16025._sr9067:
               case _mk16025._mk7923:
                  _pv2138(this._wx9983[_loc12_])._wi6038 = MovieClip(param1[_loc12_]);
                  break;
               default:
                  _pv2138(this._wx9983[_loc12_])._wi6038 = MovieClip(MovieClip(param1[_loc12_]).getChildByName(_gr8098));
            }
            _pv2138(this._wx9983[_loc12_])._fo13835(this._vp11082);
            _loc12_++;
         }
      }
      
      public static function _mu4441() : Array
      {
         var _loc1_:_nw11343 = new _nw11343();
         var _loc2_:Array = new Array();
         _loc2_.push(new _pv2138(_mk16025._mx2623,_ad13715._qn1953,new _ox15379(_loc1_._ue7613,[_loc1_._qg4067,_loc1_._da2324,_loc1_._mj14716,_loc1_._rr1345,_loc1_._ca13744,_loc1_._cj3876,_loc1_._as10195])));
         _loc2_.push(new _pv2138(_mk16025._qt11621,_ad13715._fm14100,new _ox15379("",[""])));
         _loc2_.push(new _pv2138(_mk16025._am15224,_ad13715._ty8083,new _ox15379("",[""])));
         _loc2_.push(new _pv2138(_mk16025._su16035,_ad13715._dq14459,new _ox15379("",[""])));
         _loc2_.push(new _pv2138(_mk16025._nh7492,_ad13715._qv5840,new _ox15379("",[""])));
         _loc2_.push(new _pv2138(_mk16025._sr9067,_ad13715._qn12637,new _ox15379("",[""])));
         _loc2_.push(new _pv2138(_mk16025._mk7923,_ad13715._ar3880,new _ox15379("",[""])));
         _loc2_.push(new _pv2138(_mk16025._jd11660,_ad13715._ex15554,new _ox15379("",[""])));
         return _loc2_;
      }
      
      public function destroy() : void
      {
         var _loc1_:_pv2138 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._wx9983.length)
         {
            _loc1_ = _pv2138(this._wx9983[_loc2_]);
            _loc1_.destroy();
            switch(_loc1_._hi12034)
            {
               default:
                  MovieClip(this._su2721[_loc2_]).addChild(_pv2138(this._wx9983[_loc2_])._wi6038);
            }
            _loc2_++;
         }
         this._wx9983.length = 0;
      }
      
      public function _db5584(param1:String, param2:int, param3:int, param4:Object = null) : Boolean
      {
         var _loc5_:_pv2138 = null;
         var _loc6_:int = 0;
         while(_loc6_ < this._wx9983.length)
         {
            _loc5_ = _pv2138(this._wx9983[_loc6_]);
            if(_loc5_._hi12034 == param1)
            {
               return _loc5_._db5584(param2,param3,param4);
            }
            _loc6_++;
         }
         return false;
      }
      
      public function _ar9865(param1:String, param2:MovieClip) : void
      {
         var _loc3_:_pv2138 = null;
         var _loc4_:int = 0;
         while(_loc4_ < this._su2721.length)
         {
            _loc3_ = _pv2138(this._wx9983[_loc4_]);
            if(_loc3_._hi12034 == param1)
            {
               _loc3_._sq6775(param2);
            }
            _loc4_++;
         }
      }
      
      public function _hu12389(param1:String) : Boolean
      {
         var _loc2_:_pv2138 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._wx9983.length)
         {
            _loc2_ = _pv2138(this._wx9983[_loc3_]);
            if(_loc2_._hi12034 == param1)
            {
               return _loc2_._hu12389();
            }
            _loc3_++;
         }
         return false;
      }
      
      public function _ip1589() : void
      {
         var _loc1_:_pv2138 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._wx9983.length)
         {
            _loc1_ = _pv2138(this._wx9983[_loc2_]);
            _loc1_._hu12389();
            _loc2_++;
         }
      }
      
      public function _vp11082() : void
      {
         this._qh1795();
      }
   }
}

