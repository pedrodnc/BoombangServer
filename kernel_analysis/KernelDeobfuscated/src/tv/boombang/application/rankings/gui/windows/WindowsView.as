package src.tv.boombang.application.rankings.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.rankings.events.*;
   import src.tv.boombang.application.rankings.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.rankings.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class WindowsView extends WindowsView implements Interfaces
   {
      
      private var _la3955:Sprite;
      
      private var textString:ComponentsView;
      
      private var _mv4695:ComponentsView;
      
      private var _vr2409:ComponentsView;
      
      private var _ng1021:ComponentsView;
      
      private var _ys4193:ComponentsView;
      
      private var _nm7159:ComponentsView;
      
      private var _nf10273:ComponentsView;
      
      private var _cd4883:ComponentsView;
      
      private var _jg3851:ComponentsView;
      
      private var _ma14225:ComponentsView;
      
      private var _pr13950:ComponentsView;
      
      private var _ph7294:ComponentsView;
      
      private var _gm11097:ComponentsController;
      
      private var _xj5717:ComponentsController;
      
      private var _kn12468:ComponentsController;
      
      private var _lc2231:ComponentsView;
      
      private var count5:int;
      
      private var isEnabled:Boolean = false;
      
      public function WindowsView(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2);
         this.count5 = param3;
         this._la3955 = _xo6614["blocker"] as Sprite;
         this._mv4695 = new ComponentsView(_xo6614["gameTitle"]);
         this._mv4695.txt = "game.title." + this.count5;
         this.textString = new ComponentsView(_xo6614["title"]);
         this.textString.txt = "window.ranking.title";
         this.textString.txt = this.textString.txt.toUpperCase();
         this._vr2409 = new ComponentsView(_xo6614["weekInformationText"]);
         this._vr2409.txt = "";
         this._vr2409._oi4498(150,30);
         this._ys4193 = new ComponentsView(_xo6614["startDateTitle"]);
         this._nm7159 = new ComponentsView(_xo6614["endDateTitle"]);
         this._ys4193.txt = "window.ranking.startDate.title";
         this._nm7159.txt = "window.ranking.endDate.title";
         this._nf10273 = new ComponentsView(_xo6614["startDate"]);
         this._nf10273.txt = "";
         this._cd4883 = new ComponentsView(_xo6614["endDate"]);
         this._cd4883.txt = "";
         this._jg3851 = new ComponentsView(_xo6614["listMessage"]);
         this._jg3851.visible = false;
         this._pr13950 = new ComponentsView(_xo6614["tabMenu"]);
         this._ph7294 = new ComponentsView(_xo6614["scrollPane"]);
         this._gm11097 = new ComponentsController(_xo6614["search"],3,29627,16777215);
         this._xj5717 = new ComponentsController(_xo6614["rankingFilter"]);
         this._kn12468 = new ComponentsController(_xo6614["pager"]);
         this._ma14225 = new ComponentsView(_xo6614["datesRanking"],null,"","",235);
         this._pr13950.addEventListener(EventsModel.textString1,this._yy993,false,0,true);
         this._gm11097.addEventListener(EventsModel.textString2,this._px3890,false,0,true);
         this._xj5717.addEventListener(EventsModel.textString1,this._kj11639,false,0,true);
         this._ma14225.addEventListener(Event.CHANGE,this._qe12061,false,0,true);
         this._kn12468.addEventListener(EventsModel.textString3,this._dn14316,false,0,true);
         PacketBuilder.handleSocket(MessageTypeConstants.count99,this.update);
         this._dn1389(0,0,this.count5,-1);
      }
      
      private function _qe12061(param1:Event) : void
      {
         this._dn1389(this._pr13950._ia11084,this._xj5717._rb8780,this.count5,this._ma14225._xs5517);
      }
      
      private function _yy993(param1:EventsModel) : void
      {
         this._dn1389(param1.data as int,this._xj5717._rb8780,this.count5,this._ma14225._xs5517);
      }
      
      private function _dn14316(param1:EventsModel) : void
      {
         this._dn1389(this._pr13950._ia11084,this._xj5717._rb8780,this.count5,this._ma14225._xs5517,param1.data as int);
      }
      
      private function _px3890(param1:EventsModel) : void
      {
         this._dn1389(this._pr13950._ia11084,this._xj5717._rb8780,this.count5,this._ma14225._xs5517,-1,param1.data.toString());
      }
      
      private function _kj11639(param1:EventsModel) : void
      {
         this._dn1389(this._pr13950._ia11084,param1.data as int,this.count5,this._ma14225._xs5517);
      }
      
      private function _dn1389(param1:int, param2:int, param3:int, param4:int, param5:int = -1, param6:String = "") : void
      {
         if(!this.isEnabled)
         {
            this.isEnabled = true;
            this._la3955.visible = true;
            Communications._yv1600(param1,param2,param3,param5,param4,param6);
         }
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1._qp16092(0));
         var count3:int = int(param1.items[0]);
         if(count3 == -1)
         {
            this._jg3851.txt = "window.ranking.message.serverError";
            this._jg3851._im767();
            this._jg3851.visible = true;
         }
         else if(count3 == -2)
         {
            this._jg3851.txt = "window.ranking.message.noResults";
            this._jg3851._im767();
            this._jg3851.visible = true;
            this._ph7294.content = new Array();
         }
         else
         {
            this._jg3851.visible = false;
            this.update(param1.items);
         }
         this._la3955.visible = false;
         this.isEnabled = false;
      }
      
      private function update(param1:Array) : void
      {
         var count2:int = 0;
         var count7:ComponentsController = null;
         var items:int = 0;
         var count8:RankingsModel = RankingsModel.parse(param1);
         this._pr13950.update(count8._ia11084);
         this._xj5717.update(count8._rb8780);
         this._kn12468.update(count8._ui7485,count8._kp3064,count8._ed3586);
         if(count8._ia11084 == ComponentsView.count)
         {
            this._ma14225.update(count8._tu7334);
            var count:int = count8._tu7334[0]["id"] - count8._wf9827;
            if(0 >= count8._tu7334.length)
            {
               ThunderboltModel.warn("Out of bounds week index due to incorrect data from server. Defaulting to week index: length-1",count8);
               count = int(count8._tu7334.length - 1);
            }
            this._ma14225._mv11540(0);
            var count3:Date = this._ma14225._nl13210.dateInitial as Date;
            null.toTimeString();
            this._nf10273.txt = null.date + "/" + (null.month + 1) + "/" + null.fullYear + " - " + null.hours + ":" + (null.minutes < 10 ? "0" : "") + null.minutes;
            count3 = this._ma14225._nl13210.dateEnd as Date;
            this._cd4883.txt = null.date + "/" + (null.month + 1) + "/" + null.fullYear + " - " + null.hours + ":" + (null.minutes < 10 ? "0" : "") + null.minutes;
            var count1:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("window.ranking.weekInfo",count8._wf9827);
            this._vr2409.txt = null;
            this._vr2409.fontSize = 25;
            this._nf10273.visible = true;
            this._cd4883.visible = true;
            this._ys4193.visible = true;
            this._nm7159.visible = true;
            this._ma14225.visible = true;
         }
         else
         {
            this._nf10273.visible = false;
            this._cd4883.visible = false;
            this._ys4193.visible = false;
            this._nm7159.visible = false;
            this._ma14225.visible = false;
            this._vr2409.txt = "window.ranking.global";
            this._vr2409.fontSize = 25;
            this._ma14225.visible = false;
         }
         var count6:Array = this.getList(count8.list);
         this._ph7294.content = count6;
         if(count8._vn10063 != -1)
         {
            count2 = 0;
            while(count2 < count6.length)
            {
               count7 = count6[count2];
               if(count7._ik15902 == count8._vn10063)
               {
                  items = count7._wg3624;
                  if(items > 5)
                  {
                     items -= 4;
                  }
                  this._ph7294.verticalScrollPosition(items);
                  count7._ri8522 = true;
                  break;
               }
               count2++;
            }
         }
         else
         {
            this._ph7294.verticalScrollPosition(0);
         }
      }
      
      private function getList(param1:Array) : Array
      {
         var count:ComponentsController = null;
         var count1:int = 0;
         var count3:Array = new Array();
         while(count1 < param1.length)
         {
            count = new ComponentsController(param1[count1],count1);
            count.y = Math.round(count1 * count.height + count1 * 2) + 2;
            count3.push(count);
            count1++;
         }
         return count3;
      }
      
      override public function destroy() : void
      {
         if(this._pr13950 != null)
         {
            this._pr13950.removeEventListener(EventsModel.textString1,this._yy993);
            this._pr13950.destroy();
            this._pr13950 = null;
         }
         if(this._ph7294 != null)
         {
            this._ph7294.destroy();
            this._ph7294 = null;
         }
         if(this._gm11097 != null)
         {
            this._gm11097.removeEventListener(EventsModel.textString2,this._px3890);
            this._gm11097.destroy();
            this._gm11097 = null;
         }
         if(this._xj5717 != null)
         {
            this._xj5717.removeEventListener(EventsModel.textString1,this._kj11639);
            this._xj5717.destroy();
            this._xj5717 = null;
         }
         if(this._ma14225 != null)
         {
            this._ma14225.removeEventListener(Event.CHANGE,this._qe12061);
            this._ma14225.destroy();
            this._ma14225 = null;
         }
         if(this._kn12468 != null)
         {
            this._kn12468.removeEventListener(EventsModel.textString3,this._dn14316);
            this._kn12468.destroy();
            this._kn12468 = null;
         }
         if(this.textString != null)
         {
            this.textString.destroy();
            this.textString = null;
         }
         if(this._vr2409 != null)
         {
            this._vr2409.destroy();
            this._vr2409 = null;
         }
         if(this._ng1021 != null)
         {
            this._ng1021.destroy();
            this._ng1021 = null;
         }
         if(this._ys4193 != null)
         {
            this._ys4193.destroy();
            this._ys4193 = null;
         }
         if(this._nf10273 != null)
         {
            this._nf10273.destroy();
            this._nf10273 = null;
         }
         if(this._nm7159 != null)
         {
            this._nm7159.destroy();
            this._nm7159 = null;
         }
         if(this._cd4883 != null)
         {
            this._cd4883.destroy();
            this._cd4883 = null;
         }
         if(this._mv4695 != null)
         {
            this._mv4695.destroy();
            this._mv4695 = null;
         }
         PacketBuilder.handleSocket1(MessageTypeConstants.count99,this.update);
         super.destroy();
      }
   }
}

