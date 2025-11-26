package src.tv.boombang.application.npc.gui.window.games
{
   import flash.display.*;
   import src.allData.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.npc.gui.window.games.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.games.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class GamesModel extends UIWindow
   {
      
      public static const _do8349:String = "initialKeyStep";
      
      public static const _cv6338:String = "payKeyStep";
      
      public static const _ly15522:String = "confirmationRegisterStep";
      
      public static const _ln95:String = "confirmationRegisterSecondStep";
      
      public static const _ts6741:String = "confirmationRegisterSecondStep";
      
      public static const _br12626:String = "alreadyRegisteredStep";
      
      public static const _lh1444:String = "RegisteredWaitWindowStep";
      
      public static const _eo12087:String = "withdrawgameStep";
      
      public static const _ks9245:String = "withdrawgameStep";
      
      private var _vu7614:int;
      
      private var _il5312:Array;
      
      private var _lj8573:int;
      
      public function GamesModel(param1:int)
      {
         PacketBuilder._xo2736(MessageTypeConstants._js2213,this._sk542);
         PacketBuilder._xo2736(MessageTypeConstants._nt8071,this._sk542);
         PacketBuilder._xo2736(MessageTypeConstants._sm12637,this._sk542);
         Communications._go5588(param1);
         super();
      }
      
      override public function destroy() : void
      {
         PacketBuilder._mw12849(MessageTypeConstants._sm12637,this._sk542);
         PacketBuilder._mw12849(MessageTypeConstants._nt8071,this._sk542);
         PacketBuilder._mw12849(MessageTypeConstants._js2213,this._sk542);
         super.destroy();
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:int = 0;
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
         }
         switch(param1)
         {
            case _do8349:
               switch(param2)
               {
                  case WindowsView._sr3780:
                     this._sw16087(param3.id);
               }
               return;
            case _cv6338:
               switch(param2)
               {
                  case WindowsView._sr3780:
                     Communications._vk4465((this._il5312[param3.id] as GamesModel)._oa3310);
                     break;
                  case StepsView._vr15134:
                     this._wg6689();
               }
               return;
            case _ly15522:
               switch(param2)
               {
                  case StepsView._yo4206:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case _ln95:
               switch(param2)
               {
                  case StepsView._yo4206:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case _br12626:
               switch(param2)
               {
                  case WindowsView._ej907:
                     this._sm7553();
                     break;
                  case WindowsView._lk9875:
                     _loc4_ = 0;
                     while(_loc4_ < this._il5312.length)
                     {
                        if((this._il5312[_loc4_] as GamesModel).isWaiting)
                        {
                           Communications._wx11499((this._il5312[_loc4_] as GamesModel)._oa3310);
                           break;
                        }
                        _loc4_++;
                     }
               }
               return;
            case _lh1444:
               switch(param2)
               {
                  case StepsView._yo4206:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case _eo12087:
               switch(param2)
               {
                  case StepsView._yo4206:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case _ks9245:
               switch(param2)
               {
                  case StepsView._yo4206:
                     UIDialog.getInstance().remove(this);
               }
               return;
            default:
               return;
         }
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:GamesModel = null;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = int(param1._qp16092(0));
         switch(_loc9_)
         {
            case MessageTypeConstants._sm12637:
               if(param1._qp16092(1) == MessageTypeConstants._nr11981)
               {
                  PacketBuilder._mw12849(MessageTypeConstants._sm12637,this._sk542);
                  _loc5_ = param1.items.concat();
                  this._il5312 = [];
                  while(true)
                  {
                     _loc6_ = GamesModel.parse(_loc5_);
                     if(_loc6_ == null)
                     {
                        break;
                     }
                     this._il5312.push(_loc6_);
                  }
                  _loc8_ = 0;
                  while(_loc8_ < this._il5312.length)
                  {
                     if((this._il5312[_loc8_] as GamesModel).isWaiting)
                     {
                        _loc7_ = true;
                        break;
                     }
                     _loc8_++;
                  }
                  this._lj8573 = DatagameModel._bd3215((this._il5312[0] as GamesModel)._oa3310);
                  if(_loc7_)
                  {
                     this._yv10997();
                  }
                  else
                  {
                     Communications._dw11182(UserSession.getInstance().id,DatagameModel._bt2322(this._lj8573));
                  }
               }
               return;
            case MessageTypeConstants._js2213:
               if(param1.flags[1] == MessageTypeConstants._ix2434)
               {
                  PacketBuilder._mw12849(MessageTypeConstants._js2213,this._sk542);
                  this._vu7614 = param1.items[2] + param1.items[3];
                  this._wg6689();
               }
               return;
            case MessageTypeConstants._nt8071:
               _loc2_ = int(param1._qp16092(1));
               switch(_loc2_)
               {
                  case MessageTypeConstants._kr4723:
                     _loc3_ = int(param1.items[0]);
                     _loc4_ = int(param1.items[1]);
                     if(_loc4_ == 1)
                     {
                        this._xi13966();
                        break;
                     }
                     if(_loc4_ == 2)
                     {
                        this._bh7547();
                        break;
                     }
                     if(_loc4_ == -1)
                     {
                        this._dn8757();
                     }
                     break;
                  case MessageTypeConstants._kj6049:
                     _loc3_ = int(param1.items[0]);
                     _loc4_ = int(param1.items[1]);
                     if(_loc4_ == 1)
                     {
                        this._qk6913();
                     }
               }
         }
      }
      
      private function _wg6689() : void
      {
         var _loc1_:WindowsView = new WindowsView(_cw8295("GamesRegisterWindow") as MovieClip,_do8349,this._lj8573,this._vu7614);
         _loc1_._th13516 = "games.registerWindow.game_" + this._lj8573 + ".description";
         _loc1_._le7018 = "games.registerWindow.game_" + this._lj8573 + ".title";
         _wj9062._lt3848(_loc1_);
      }
      
      private function _sw16087(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:GamesModel = null;
         var _loc5_:String = null;
         var _loc8_:WindowsController = new WindowsController(_cw8295("GamesRegisterWindow") as MovieClip,_cv6338,this._lj8573,param1);
         if(param1 == 0)
         {
            _loc8_._le7018 = "games.registerWindow.game_" + this._lj8573 + ".confirmRegister.title";
            _loc3_ = String((this._il5312[0] as GamesModel)._jm15734);
            _loc4_ = this._il5312[0] as GamesModel;
            _loc5_ = String((this._il5312[0] as GamesModel)._gh12567);
            _loc2_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("games.registerWindow.game_" + this._lj8573 + ".confirmRegister.description",_loc3_,_loc5_);
            _loc8_._so8426 = String((this._il5312[0] as GamesModel)._jm15734);
         }
         else
         {
            _loc8_._le7018 = "games.registerWindow.error.description";
         }
         _loc8_._th13516 = _loc2_;
         _wj9062._lt3848(_loc8_);
      }
      
      private function _xi13966() : void
      {
         var _loc1_:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var _loc2_:WindowsView = new WindowsView(_loc1_,_ly15522,this._lj8573);
         _loc2_._th13516 = "games.registerWindow.game_" + this._lj8573 + ".registered.description";
         var _loc3_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("games.registerWindow.game_" + this._lj8573 + ".registered.title");
         _loc2_._le7018 = _loc3_;
         _wj9062._lt3848(_loc2_);
      }
      
      private function _bh7547() : void
      {
         var _loc1_:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var _loc2_:WindowsView = new WindowsView(_loc1_,_ts6741,this._lj8573);
         _loc2_._th13516 = "games.registerWindow.game_" + this._lj8573 + ".noMoney.description";
         _loc2_._le7018 = "games.registerWindow.game_" + this._lj8573 + ".noMoney.title";
         _loc2_._hm9300 = "-.-\'";
         _wj9062._lt3848(_loc2_);
      }
      
      private function _yv10997() : void
      {
         var _loc1_:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var _loc2_:WindowsView = new WindowsView(_loc1_,_br12626,this._lj8573);
         _loc2_._th13516 = "games.registerWindow.game_" + this._lj8573 + ".unregister.description";
         _loc2_._le7018 = "games.registerWindow.game_" + this._lj8573 + ".unregister.title";
         _loc2_._qe12407 = "button.meRetiro";
         _loc2_._te7012 = "button.esperare";
         _wj9062._lt3848(_loc2_);
      }
      
      private function _sm7553() : void
      {
         var _loc1_:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var _loc2_:WindowsView = new WindowsView(_loc1_,_lh1444,this._lj8573);
         _loc2_._th13516 = "games.registerWindow.game_" + this._lj8573 + ".waitGame.description";
         _loc2_._le7018 = "games.registerWindow.game_" + this._lj8573 + ".waitGame.title";
         _loc2_._hm9300 = "button.ok";
         _wj9062._lt3848(_loc2_);
      }
      
      private function _qk6913() : void
      {
         var _loc1_:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var _loc2_:WindowsView = new WindowsView(_loc1_,_eo12087,this._lj8573);
         _loc2_._th13516 = "games.registerWindow.game_" + this._lj8573 + ".withdrawGame.description";
         _loc2_._le7018 = "games.registerWindow.game_" + this._lj8573 + ".withdrawGame.title";
         _loc2_._hm9300 = "O.O";
         _wj9062._lt3848(_loc2_);
      }
      
      private function _dn8757() : void
      {
         var _loc1_:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var _loc2_:WindowsView = new WindowsView(_loc1_,_ks9245,this._lj8573);
         _loc2_._th13516 = "games.registerWindow.error.title";
         _loc2_._le7018 = "games.registerWindow.error.description";
         _loc2_._hm9300 = "button.ok";
         _wj9062._lt3848(_loc2_);
      }
   }
}

