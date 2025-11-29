package src.tv.boombang.application.npc.gui.window.games.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.npc.gui.window.games.components.*;
   import src.tv.boombang.application.popup.*;
   import src.tv.boombang.application.rankings.gui.windows.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.library.popup.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   
   public class WindowsModel extends WindowsView implements Interfaces
   {
      
      public static var Instance:WindowsModel;
      
      public static const count:int = 424;
      
      public static const _ur9035:Object = {
         "1":16016165,
         "3":26214,
         "4":26214,
         "6":6684774
      };
      
      public static const _tj10999:Object = {
         "1":16750848,
         "3":39270,
         "4":39270,
         "6":10027110
      };
      
      private var count1:int;
      
      private var count2:int;
      
      private var _ck10603:ComponentsView;
      
      private var _nd5221:ComponentsView;
      
      private var count3:int;
      
      private var _pj12454:RankingsWindow;
      
      public function WindowsModel(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2);
         this.count3 = param3;
         this.count1 = WindowsModel._ur9035[param3];
         this.count2 = WindowsModel._tj10999[param3];
         StringUtils._ll15297(_xo6614["lines"],this.count2,1);
         this._au14390 = "games.registerWindow.weeklyTrophiesDescription";
         this._fk7040 = "games.registerWindow.game_" + param3 + ".prizesDescription";
         this._oe10520(param3);
         this._fy1904(param3);
         this._ck10603 = new ComponentsView(_xo6614["btnRanking"],"button.Ranking");
         this._ck10603.addEventListener(MouseEvent.CLICK,this.hide,false,0,true);
         _qi5262.push(this._ck10603);
         this._nd5221 = new ComponentsView(_xo6614["helpButton"],"button.rules");
         this._nd5221.addEventListener(MouseEvent.CLICK,this._ix13264,false,0,true);
         _qi5262.push(this._nd5221);
         this._eh15270();
         WindowsModel.Instance = this;
      }
      
      override public function destroy() : void
      {
         this._ck10603.removeEventListener(MouseEvent.CLICK,this.hide);
         this._ck10603.removeEventListener(MouseEvent.CLICK,this._ix13264);
         this._ck10603.destroy();
         super.destroy();
      }
      
      private function hide(param1:MouseEvent) : void
      {
         var count:int = 0;
         if(this._pj12454 == null)
         {
            count = int(DatagameModel._fv13263(this.count3));
            this._pj12454 = new RankingsWindow(count);
            this._pj12454.addEventListener("onCloseWindow",this._jp1982,false,0,true);
            UIDialog.getInstance().destroy(this._pj12454,50,50);
         }
      }
      
      private function _jp1982(param1:Event) : void
      {
         this._pj12454 = null;
      }
      
      private function _ix13264(param1:MouseEvent) : void
      {
         PopUpManager.createPopUp(_xw1367.getInstance().popUp,new PopupController(this.count3));
      }
      
      protected function _eh15270() : void
      {
         _xo6614["btn1"].y = _xo6614["helpButton"].y + _xo6614["helpButton"].height - _xo6614["btn1"].height;
         _xo6614["btn2"].x = _xo6614["btn1"].x + _xo6614["btn1"].width + 15;
         _xo6614["btn2"].y = _xo6614["helpButton"].y + _xo6614["helpButton"].height - _xo6614["btn2"].height;
         if(this._ck10603)
         {
            this._ck10603.x = _xo6614["back"].x + _xo6614["back"].width - 20 - this._ck10603.width;
         }
         this._ck10603;
      }
      
      protected function _eh1527() : void
      {
         _xo6614["btn1"].y = _xo6614["helpButton"].y + _xo6614["helpButton"].height - _xo6614["btn1"].height;
         _xo6614["btn2"].x = _xo6614["btn1"].x + _xo6614["btn1"].width + 15;
         _xo6614["btn2"].x = 15;
         _xo6614["btn2"].y = _xo6614["helpButton"].y + _xo6614["helpButton"].height - _xo6614["btn2"].height;
         if(this._ck10603)
         {
            this._ck10603.x = _xo6614["back"].x + _xo6614["back"].width - 20 - this._ck10603.width;
         }
         this._ck10603;
      }
      
      public function set _th13516(param1:String) : void
      {
         this._dt9106(param1,"descriptionTxt");
      }
      
      public function set _yk10187(param1:int) : void
      {
         _xo6614["descriptionTxt"]["txt"].width = param1;
      }
      
      public function set _fk7040(param1:String) : void
      {
         this._dt9106(param1,"descriptionPrizesTxt");
      }
      
      public function set _au14390(param1:String) : void
      {
         this._dt9106(param1,"descriptionTrophiesTxt");
      }
      
      public function _dt9106(param1:String, param2:String) : void
      {
         _xo6614[param2]["txt"].autoSize = TextFieldAutoSize.LEFT;
         _xo6614[param2]["txt"].width = WindowsModel.count;
         UtilsUtils._bj8346(_xo6614[param2]["txt"] as TextField,param1);
         var count3:TextFormat = UtilsUtils.getTextFormat(_xo6614[param2]["txt"]);
         count3.align = "left";
         count3.size = 14;
         count3.color = this.count2;
         _xo6614[param2]["txt"]["textColor"] = this.count2;
         _xo6614[param2]["txt"].setTextFormat(count3);
      }
      
      public function set _le7018(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["descriptionTitle"]["txt"] as TextField,param1);
         _xo6614["descriptionTitle"]["txt"].autoSize = TextFieldAutoSize.LEFT;
         _xo6614["descriptionTitle"]["txt"].width = 380;
         var count:TextFormat = (_xo6614["descriptionTitle"]["txt"] as TextField).getTextFormat();
         count.align = "left";
         count.size = 30;
         _xo6614["descriptionTitle"]["txt"].setTextFormat(count);
         _xo6614["descriptionTitle"]["txt"]["textColor"] = this.count1;
      }
      
      public function _oe10520(param1:int) : void
      {
         var count:ComponentsController = new ComponentsController(param1);
         count.y = _xo6614["descriptionPrizesTxt"].y + 40;
         count.x = _xo6614["descriptionPrizesTxt"].x;
         _xo6614.addChild(count);
      }
      
      public function _fy1904(param1:int) : void
      {
         var count:ComponentsController = new ComponentsController(param1);
         _xo6614.addChild(count);
         count.x = 15;
         count.y = _xo6614["descriptionTrophiesTxt"].y + _xo6614["descriptionTrophiesTxt"].height + 4;
      }
   }
}

