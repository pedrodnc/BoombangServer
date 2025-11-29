package src.modules.multiplayerGames.games
{
   import src.*;
   import src.allData.*;
   import src.modules.multiplayerGames.MultiplayergamesController;
   import src.modules.multiplayerGames.dataGame.*;
   import src.modules.multiplayerGames.fichas.*;
   import src.tv.boombang.application.popup.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.popup.*;
   import src.utils.fichas.FichasController;
   
   public class GamesModel
   {
      
      private static var _ac13440:int;
      
      private static const _ib5392:String = "getClassObject";
      
      private static const _kf8942:int = 0;
      
      private static const _cl8982:int = 1;
      
      private static const _de12438:int = 3;
      
      private static const _fa1622:int = 4;
      
      private static const _hp6106:int = 5;
      
      private static const _vy13173:int = 6;
      
      private static const _eq9517:int = 7;
      
      private static const _ua14372:int = 8;
      
      private static const _jb3956:int = 9;
      
      private static const _oh4902:int = 10;
      
      private static const _pm3661:int = 11;
      
      private static const _ih899:int = 12;
      
      private static const _ma12651:int = 13;
      
      private static const _jm14278:int = 0;
      
      private static const _nh10309:int = 1;
      
      private static const _go1386:int = 2;
      
      private static const _au13882:int = 1;
      
      private static const _op4061:int = 2;
      
      private static const _jp13158:int = -1;
      
      public static const _xo4658:int = 12;
      
      public static const _sw8559:int = 12;
      
      private var state:int;
      
      private var _kn5807:Fichas;
      
      private var _oq11511:int;
      
      private var _rk14122:int;
      
      private var _ym8891:FichasController;
      
      private var _yv14266:Array;
      
      private var dataGame:DatagameModel;
      
      private var _tv9779:MultiplayergamesController;
      
      private var _as7865:Boolean;
      
      private var _qh1795:Function;
      
      private var _nj4054:Boolean;
      
      private var _ft9909:int;
      
      public function GamesModel(param1:MultiplayergamesController, param2:DatagameModel, param3:Function, param4:Fichas, param5:int)
      {
         super();
         this._tv9779 = param1;
         this.dataGame = param2;
         this._qh1795 = param3;
         this._kn5807 = param4;
         this._ft9909 = param5;
         this._nj4054 = this._ft9909 <= 0;
         this._je7979();
         this.state = _kf8942;
         this._kr14722(false);
      }
      
      public function _ng13821() : void
      {
         if(this._as7865)
         {
            this._xo11249(_fa1622);
         }
         else
         {
            this._rk14122 = _jm14278;
            this._xo11249(_cl8982);
         }
      }
      
      public function _bg8127() : Boolean
      {
         return this._as7865;
      }
      
      public function _kr14722(param1:Boolean) : void
      {
         this._as7865 = param1;
      }
      
      public function destroy() : void
      {
         this._tl14705();
      }
      
      public function _db5584() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891._db5584(_xo4658,_sw8559);
         }
      }
      
      public function _hu12389() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891._hu12389();
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
         }
      }
      
      public function _je7979() : void
      {
         this._yv14266 = new Array();
         var _loc1_:int = int(DatagameModel._ci6678(this.dataGame._xx6456,this.dataGame._dt3794));
         var _loc2_:String = DatagameModel._cr1192(this.dataGame._xx6456,this.dataGame._dt3794);
         var _loc3_:int = int(DatagameModel._mb10575(this.dataGame._xx6456,this.dataGame._dt3794));
         var _loc4_:String = DatagameModel._ts5565(this.dataGame._xx6456,this.dataGame._dt3794);
         this._yv14266[_cl8982] = new FichasUtils(this._kn5807._gc15166,[this._kn5807._bj3390],[this._kn5807._bh1246,this._kn5807._hn3794,this._kn5807._rc5908],[this._fa12827,this._tm13038,this._ub12035]);
         this._yv14266[_hp6106] = new FichasUtils(this._kn5807._js14212,[_loc2_],[this._kn5807._wi3826,this._kn5807._hn3794],[this._my8529,this._xc12198],0,_loc1_);
         this._yv14266[_oh4902] = new FichasUtils(UserSession.getInstance().name + " " + this._kn5807._ma7877,[this._kn5807._fu15706],[this._kn5807.OK],[this._mo12578]);
         this._yv14266[_de12438] = new FichasUtils(this._kn5807._fw8415,[_loc4_],[this._kn5807._wi3826,this._kn5807._vy7766],[this._my8529,this._ay3738],_loc3_,0);
         this._yv14266[_fa1622] = new FichasUtils(this._kn5807._od9025,[this._kn5807._ol5438],[this._kn5807._ji2109,this._kn5807._pj501],[this._vg15491,this._rq9045]);
         this._yv14266[_eq9517] = new FichasUtils(this._kn5807._fs2604,[this._kn5807._pu15864],[this._kn5807.OK],[this._my8529]);
         this._yv14266[_vy13173] = new FichasUtils(this._kn5807._cd8681,[this._kn5807._yw2230],[this._kn5807._ww1126],[this._my8529]);
         this._yv14266[_ua14372] = new FichasUtils(this._kn5807._gy14442,[this._kn5807._kn13825],[this._kn5807._yq3127],[this._my8529],_loc3_,0);
         this._yv14266[_jb3956] = new FichasUtils(this._kn5807._gy14442,[this._kn5807._dy2529],[this._kn5807._yq3127],[this._my8529],0,_loc1_);
         this._yv14266[_ih899] = new FichasUtils(this._kn5807._hl9385,[this._kn5807._au9939],[this._kn5807.OK],[this._my8529]);
         this._yv14266[_pm3661] = new FichasUtils(this._kn5807._tr2833,[this._kn5807._eq11065],[this._kn5807._yq3127],[this._my8529]);
      }
      
      public function _xo11249(param1:int) : void
      {
         var _loc2_:String = null;
         this._tl14705();
         switch(param1)
         {
            case _cl8982:
               _loc2_ = "";
               if(this._ft9909 > 0)
               {
                  if(this._ft9909 == 1)
                  {
                     _loc2_ = "games.multiplayer.tournamentNotAllowed.oneTime";
                  }
                  else
                  {
                     _loc2_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("games.multiplayer.tournamentNotAllowed.nTimes",this._ft9909);
                  }
               }
               this._ym8891 = new FichasView(this.dataGame._lg13977[_ib5392](param1),FichasUtils(this._yv14266[param1]),[true,true,this._nj4054],["","",_loc2_]);
               this._ym8891._db5584(_xo4658,_sw8559);
               break;
            case _cl8982:
            case _de12438:
            case _oh4902:
            case _hp6106:
            case _fa1622:
            case _eq9517:
            case _vy13173:
            case _ua14372:
            case _jb3956:
            case _ih899:
            case _pm3661:
               this._ym8891 = new FichasView(this.dataGame._lg13977[_ib5392](param1),FichasUtils(this._yv14266[param1]));
               this._ym8891._db5584(_xo4658,_sw8559);
         }
         this.state = param1;
      }
      
      private function _tl14705() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
      }
      
      public function _pq9820(param1:int, param2:int) : void
      {
         var _loc3_:int = int(DatagameModel._bd3215(param1));
         if(this.dataGame._xx6456 == _loc3_ && (this.state == _de12438 || this.state == _hp6106))
         {
            switch(param2)
            {
               case _au13882:
                  this.dataGame._oa3310 = param1;
                  this._kr14722(true);
                  this._xo11249(_oh4902);
                  return;
               case _op4061:
                  this._kr14722(false);
                  if(this._rk14122 == _nh10309)
                  {
                     this._xo11249(_jb3956);
                  }
                  else if(this._rk14122 == _go1386)
                  {
                     this._xo11249(_ua14372);
                  }
                  return;
               case _jp13158:
                  this._kr14722(false);
                  this._xo11249(_ih899);
                  return;
            }
         }
      }
      
      private function _fa12827() : void
      {
         PopUpManager.createPopUp(_xw1367.getInstance().popUp,new PopupController(this.dataGame._xx6456));
      }
      
      private function _tm13038() : void
      {
         this._rk14122 = _nh10309;
         this._xo11249(_hp6106);
      }
      
      private function _ub12035() : void
      {
         this._rk14122 = _go1386;
         this._xo11249(_de12438);
      }
      
      private function _dw8867() : void
      {
         this._xo11249(_cl8982);
      }
      
      private function _my8529() : void
      {
         if(this._qh1795 != null)
         {
            this._qh1795();
         }
         this._xo11249(_kf8942);
      }
      
      private function _xc12198() : void
      {
         FichasView(this._ym8891)._xk3471();
         this._tv9779._vp15698(DatagameModel._bt2322(this.dataGame._xx6456));
      }
      
      private function _ay3738() : void
      {
         FichasView(this._ym8891)._xk3471();
         this._tv9779._vp15698(DatagameModel._fv13263(this.dataGame._xx6456));
      }
      
      private function _vg15491() : void
      {
         this._kr14722(false);
         this._tv9779._sk619(this.dataGame._oa3310);
         this._xo11249(_vy13173);
      }
      
      private function _rq9045() : void
      {
         this._xo11249(_eq9517);
      }
      
      private function _mo12578() : void
      {
         this._xo11249(_pm3661);
      }
   }
}

