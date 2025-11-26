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
      
      private var _kc4744:ComponentsView;
      
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
      
      private var _ck5194:int;
      
      private var _bh6627:Boolean = false;
      
      public function WindowsView(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2);
         this._ck5194 = param3;
         this._la3955 = _xo6614["blocker"] as Sprite;
         this._mv4695 = new ComponentsView(_xo6614["gameTitle"]);
         this._mv4695.txt = "game.title." + this._ck5194;
         this._kc4744 = new ComponentsView(_xo6614["title"]);
         this._kc4744.txt = "window.ranking.title";
         this._kc4744.txt = this._kc4744.txt.toUpperCase();
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
         this._pr13950.addEventListener(EventsModel._rr2751,this._yy993,false,0,true);
         this._gm11097.addEventListener(EventsModel._gw7109,this._px3890,false,0,true);
         this._xj5717.addEventListener(EventsModel._ft10913,this._kj11639,false,0,true);
         this._ma14225.addEventListener(Event.CHANGE,this._qe12061,false,0,true);
         this._kn12468.addEventListener(EventsModel._ci14784,this._dn14316,false,0,true);
         PacketBuilder._xo2736(MessageTypeConstants._ji3463,this._sk542);
         this._dn1389(0,0,this._ck5194,-1);
      }
      
      private function _qe12061(param1:Event) : void
      {
         this._dn1389(this._pr13950._ia11084,this._xj5717._rb8780,this._ck5194,this._ma14225._xs5517);
      }
      
      private function _yy993(param1:EventsModel) : void
      {
         this._dn1389(param1.data as int,this._xj5717._rb8780,this._ck5194,this._ma14225._xs5517);
      }
      
      private function _dn14316(param1:EventsModel) : void
      {
         this._dn1389(this._pr13950._ia11084,this._xj5717._rb8780,this._ck5194,this._ma14225._xs5517,param1.data as int);
      }
      
      private function _px3890(param1:EventsModel) : void
      {
         this._dn1389(this._pr13950._ia11084,this._xj5717._rb8780,this._ck5194,this._ma14225._xs5517,-1,param1.data.toString());
      }
      
      private function _kj11639(param1:EventsModel) : void
      {
         this._dn1389(this._pr13950._ia11084,param1.data as int,this._ck5194,this._ma14225._xs5517);
      }
      
      private function _dn1389(param1:int, param2:int, param3:int, param4:int, param5:int = -1, param6:String = "") : void
      {
         if(!this._bh6627)
         {
            this._bh6627 = true;
            this._la3955.visible = true;
            Communications._yv1600(param1,param2,param3,param5,param4,param6);
         }
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = int(param1._qp16092(0));
         var _loc3_:int = int(param1.items[0]);
         if(_loc3_ == -1)
         {
            this._jg3851.txt = "window.ranking.message.serverError";
            this._jg3851._im767();
            this._jg3851.visible = true;
         }
         else if(_loc3_ == -2)
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
         this._bh6627 = false;
      }
      
      private function update(param1:Array) : void
      {
         var _loc5_:int = 0;
         var _loc6_:ComponentsController = null;
         var _loc7_:int = 0;
         var _loc8_:RankingsModel = RankingsModel.parse(param1);
         this._pr13950.update(_loc8_._ia11084);
         this._xj5717.update(_loc8_._rb8780);
         this._kn12468.update(_loc8_._ui7485,_loc8_._kp3064,_loc8_._ed3586);
         if(_loc8_._ia11084 == ComponentsView._nf6130)
         {
            this._ma14225.update(_loc8_._tu7334);
            var _loc2_:int = _loc8_._tu7334[0]["id"] - _loc8_._wf9827;
            if(0 >= _loc8_._tu7334.length)
            {
               ThunderboltModel.warn("Out of bounds week index due to incorrect data from server. Defaulting to week index: length-1",_loc8_);
               _loc2_ = int(_loc8_._tu7334.length - 1);
            }
            this._ma14225._mv11540(0);
            var _loc3_:Date = this._ma14225._nl13210.dateInitial as Date;
            null.toTimeString();
            this._nf10273.txt = null.date + "/" + (null.month + 1) + "/" + null.fullYear + " - " + null.hours + ":" + (null.minutes < 10 ? "0" : "") + null.minutes;
            _loc3_ = this._ma14225._nl13210.dateEnd as Date;
            this._cd4883.txt = null.date + "/" + (null.month + 1) + "/" + null.fullYear + " - " + null.hours + ":" + (null.minutes < 10 ? "0" : "") + null.minutes;
            var _loc4_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("window.ranking.weekInfo",_loc8_._wf9827);
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
         var _loc9_:Array = this._mt15385(_loc8_.list);
         this._ph7294.content = _loc9_;
         if(_loc8_._vn10063 != -1)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc9_.length)
            {
               _loc6_ = _loc9_[_loc5_];
               if(_loc6_._ik15902 == _loc8_._vn10063)
               {
                  _loc7_ = _loc6_._wg3624;
                  if(_loc7_ > 5)
                  {
                     _loc7_ -= 4;
                  }
                  this._ph7294.verticalScrollPosition(_loc7_);
                  _loc6_._ri8522 = true;
                  break;
               }
               _loc5_++;
            }
         }
         else
         {
            this._ph7294.verticalScrollPosition(0);
         }
      }
      
      private function _mt15385(param1:Array) : Array
      {
         var _loc2_:ComponentsController = null;
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc4_ < param1.length)
         {
            _loc2_ = new ComponentsController(param1[_loc4_],_loc4_);
            _loc2_.y = Math.round(_loc4_ * _loc2_.height + _loc4_ * 2) + 2;
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function destroy() : void
      {
         if(this._pr13950 != null)
         {
            this._pr13950.removeEventListener(EventsModel._rr2751,this._yy993);
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
            this._gm11097.removeEventListener(EventsModel._gw7109,this._px3890);
            this._gm11097.destroy();
            this._gm11097 = null;
         }
         if(this._xj5717 != null)
         {
            this._xj5717.removeEventListener(EventsModel._ft10913,this._kj11639);
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
            this._kn12468.removeEventListener(EventsModel._ci14784,this._dn14316);
            this._kn12468.destroy();
            this._kn12468 = null;
         }
         if(this._kc4744 != null)
         {
            this._kc4744.destroy();
            this._kc4744 = null;
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
         PacketBuilder._mw12849(MessageTypeConstants._ji3463,this._sk542);
         super.destroy();
      }
   }
}

