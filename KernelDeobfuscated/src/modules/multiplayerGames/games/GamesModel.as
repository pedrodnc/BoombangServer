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
      
      private static var count:int;
      
      private static const textString:String = "getClassObject";
      
      private static const count1:int = 0;
      
      private static const count2:int = 1;
      
      private static const count3:int = 3;
      
      private static const count4:int = 4;
      
      private static const count5:int = 5;
      
      private static const count6:int = 6;
      
      private static const count7:int = 7;
      
      private static const count8:int = 8;
      
      private static const count9:int = 9;
      
      private static const count10:int = 10;
      
      private static const count11:int = 11;
      
      private static const count12:int = 12;
      
      private static const count:int = 13;
      
      private static const count14:int = 0;
      
      private static const count15:int = 1;
      
      private static const count16:int = 2;
      
      private static const count17:int = 1;
      
      private static const count18:int = 2;
      
      private static const count19:int = -1;
      
      public static const count20:int = 12;
      
      public static const count21:int = 12;
      
      private var state:int;
      
      private var _kn5807:Fichas;
      
      private var count22:int;
      
      private var count23:int;
      
      private var _ym8891:FichasController;
      
      private var items:Array;
      
      private var dataGame:DatagameModel;
      
      private var _tv9779:MultiplayergamesController;
      
      private var isEnabled:Boolean;
      
      private var _qh1795:Function;
      
      private var isEnabled1:Boolean;
      
      private var count24:int;
      
      public function GamesModel(param1:MultiplayergamesController, param2:DatagameModel, param3:Function, param4:Fichas, param5:int)
      {
         super();
         this._tv9779 = param1;
         this.dataGame = param2;
         this._qh1795 = param3;
         this._kn5807 = param4;
         this.count24 = param5;
         this.isEnabled1 = this.count24 <= 0;
         this.show();
         this.state = count1;
         this._kr14722(false);
      }
      
      public function _ng13821() : void
      {
         if(this.isEnabled)
         {
            this._xo11249(count4);
         }
         else
         {
            this.count23 = count14;
            this._xo11249(count2);
         }
      }
      
      public function _bg8127() : Boolean
      {
         return this.isEnabled;
      }
      
      public function _kr14722(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function destroy() : void
      {
         this.destroy();
      }
      
      public function show() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891.show(count20,count21);
         }
      }
      
      public function authenticateUser2() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891.authenticateUser2();
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
         }
      }
      
      public function show() : void
      {
         this.items = new Array();
         var count2:int = int(DatagameModel._ci6678(this.dataGame.count3,this.dataGame.items));
         var count:String = DatagameModel._cr1192(this.dataGame.count3,this.dataGame.items);
         var count3:int = int(DatagameModel._mb10575(this.dataGame.count3,this.dataGame.items));
         var count1:String = DatagameModel._ts5565(this.dataGame.count3,this.dataGame.items);
         this.items[count2] = new FichasUtils(this._kn5807.textString3,[this._kn5807.textString4],[this._kn5807.textString,this._kn5807.textString1,this._kn5807.textString2],[this.loadData,this._tm13038,this._ub12035]);
         this.items[count5] = new FichasUtils(this._kn5807.textString20,[count],[this._kn5807.textString7,this._kn5807.textString1],[this._my8529,this._xc12198],0,count2);
         this.items[count10] = new FichasUtils(UserSession.getInstance().name + " " + this._kn5807.textString26,[this._kn5807.textString27],[this._kn5807.OK],[this._mo12578]);
         this.items[count3] = new FichasUtils(this._kn5807.textString9,[count1],[this._kn5807.textString7,this._kn5807.textString8],[this._my8529,this._ay3738],count3,0);
         this.items[count4] = new FichasUtils(this._kn5807.textString13,[this._kn5807.textString14],[this._kn5807.textString11,this._kn5807.textString12],[this._vg15491,this._rq9045]);
         this.items[count7] = new FichasUtils(this._kn5807.textString18,[this._kn5807.textString19],[this._kn5807.OK],[this._my8529]);
         this.items[count6] = new FichasUtils(this._kn5807.textString16,[this._kn5807.textString17],[this._kn5807.textString15],[this._my8529]);
         this.items[count8] = new FichasUtils(this._kn5807.textString23,[this._kn5807.textString24],[this._kn5807.textString22],[this._my8529],count3,0);
         this.items[count9] = new FichasUtils(this._kn5807.textString23,[this._kn5807.textString25],[this._kn5807.textString22],[this._my8529],0,count2);
         this.items[count12] = new FichasUtils(this._kn5807.textString30,[this._kn5807.textString31],[this._kn5807.OK],[this._my8529]);
         this.items[count11] = new FichasUtils(this._kn5807.textString28,[this._kn5807.textString29],[this._kn5807.textString22],[this._my8529]);
      }
      
      public function _xo11249(param1:int) : void
      {
         var count:String = null;
         this.destroy();
         switch(param1)
         {
            case count2:
               count = "";
               if(this.count24 > 0)
               {
                  if(this.count24 == 1)
                  {
                     count = "games.multiplayer.tournamentNotAllowed.oneTime";
                  }
                  else
                  {
                     count = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("games.multiplayer.tournamentNotAllowed.nTimes",this.count24);
                  }
               }
               this._ym8891 = new FichasView(this.dataGame._lg13977[textString](param1),FichasUtils(this.items[param1]),[true,true,this.isEnabled1],["","",count]);
               this._ym8891.show(count20,count21);
               break;
            case count2:
            case count3:
            case count10:
            case count5:
            case count4:
            case count7:
            case count6:
            case count8:
            case count9:
            case count12:
            case count11:
               this._ym8891 = new FichasView(this.dataGame._lg13977[textString](param1),FichasUtils(this.items[param1]));
               this._ym8891.show(count20,count21);
         }
         this.state = param1;
      }
      
      private function destroy() : void
      {
         if(this._ym8891 != null)
         {
            this._ym8891.destroy();
            this._ym8891 = null;
         }
      }
      
      public function _pq9820(param1:int, param2:int) : void
      {
         var count3:int = int(DatagameModel._bd3215(param1));
         if(this.dataGame.count3 == count3 && (this.state == count3 || this.state == count5))
         {
            switch(param2)
            {
               case count17:
                  this.dataGame.count1 = param1;
                  this._kr14722(true);
                  this._xo11249(count10);
                  return;
               case count18:
                  this._kr14722(false);
                  if(this.count23 == count15)
                  {
                     this._xo11249(count9);
                  }
                  else if(this.count23 == count16)
                  {
                     this._xo11249(count8);
                  }
                  return;
               case count19:
                  this._kr14722(false);
                  this._xo11249(count12);
                  return;
            }
         }
      }
      
      private function loadData() : void
      {
         PopUpManager.createPopUp(_xw1367.getInstance().popUp,new PopupController(this.dataGame.count3));
      }
      
      private function _tm13038() : void
      {
         this.count23 = count15;
         this._xo11249(count5);
      }
      
      private function _ub12035() : void
      {
         this.count23 = count16;
         this._xo11249(count3);
      }
      
      private function _dw8867() : void
      {
         this._xo11249(count2);
      }
      
      private function _my8529() : void
      {
         if(this._qh1795 != null)
         {
            this._qh1795();
         }
         this._xo11249(count1);
      }
      
      private function _xc12198() : void
      {
         FichasView(this._ym8891)._xk3471();
         this._tv9779.handleSocket1(DatagameModel._bt2322(this.dataGame.count3));
      }
      
      private function _ay3738() : void
      {
         FichasView(this._ym8891)._xk3471();
         this._tv9779.handleSocket1(DatagameModel._fv13263(this.dataGame.count3));
      }
      
      private function _vg15491() : void
      {
         this._kr14722(false);
         this._tv9779.handleSocket2(this.dataGame.count1);
         this._xo11249(count6);
      }
      
      private function _rq9045() : void
      {
         this._xo11249(count7);
      }
      
      private function _mo12578() : void
      {
         this._xo11249(count11);
      }
   }
}

