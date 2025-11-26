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
      
      public static const textString:String = "initialKeyStep";
      
      public static const textString1:String = "payKeyStep";
      
      public static const textString2:String = "confirmationRegisterStep";
      
      public static const textString3:String = "confirmationRegisterSecondStep";
      
      public static const textString4:String = "confirmationRegisterSecondStep";
      
      public static const textString5:String = "alreadyRegisteredStep";
      
      public static const textString6:String = "RegisteredWaitWindowStep";
      
      public static const textString7:String = "withdrawgameStep";
      
      public static const textString8:String = "withdrawgameStep";
      
      private var count:int;
      
      private var items:Array;
      
      private var count3:int;
      
      public function GamesModel(param1:int)
      {
         PacketBuilder.handleSocket(MessageTypeConstants.count1,this.update);
         PacketBuilder.handleSocket(MessageTypeConstants.count80,this.update);
         PacketBuilder.handleSocket(MessageTypeConstants.count91,this.update);
         Communications._go5588(param1);
         super();
      }
      
      override public function destroy() : void
      {
         PacketBuilder.handleSocket1(MessageTypeConstants.count91,this.update);
         PacketBuilder.handleSocket1(MessageTypeConstants.count80,this.update);
         PacketBuilder.handleSocket1(MessageTypeConstants.count1,this.update);
         super.destroy();
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         var count1:int = 0;
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
         }
         switch(param1)
         {
            case textString:
               switch(param2)
               {
                  case WindowsView.textString:
                     this.registerUser1(param3.id);
               }
               return;
            case textString1:
               switch(param2)
               {
                  case WindowsView.textString:
                     Communications._vk4465((this.items[param3.id] as GamesModel).count1);
                     break;
                  case StepsView.textString2:
                     this.registerUser();
               }
               return;
            case textString2:
               switch(param2)
               {
                  case StepsView.textString:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case textString3:
               switch(param2)
               {
                  case StepsView.textString:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case textString5:
               switch(param2)
               {
                  case WindowsView._ej907:
                     this.registerUser5();
                     break;
                  case WindowsView._lk9875:
                     count1 = 0;
                     while(count1 < this.items.length)
                     {
                        if((this.items[count1] as GamesModel).isWaiting)
                        {
                           Communications._wx11499((this.items[count1] as GamesModel).count1);
                           break;
                        }
                        count1++;
                     }
               }
               return;
            case textString6:
               switch(param2)
               {
                  case StepsView.textString:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case textString7:
               switch(param2)
               {
                  case StepsView.textString:
                     UIDialog.getInstance().remove(this);
               }
               return;
            case textString8:
               switch(param2)
               {
                  case StepsView.textString:
                     UIDialog.getInstance().remove(this);
               }
               return;
            default:
               return;
         }
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:Array = null;
         var count7:GamesModel = null;
         var items:Boolean = false;
         var count8:int = 0;
         var count6:int = int(param1._qp16092(0));
         switch(count6)
         {
            case MessageTypeConstants.count91:
               if(param1._qp16092(1) == MessageTypeConstants.count101)
               {
                  PacketBuilder.handleSocket1(MessageTypeConstants.count91,this.update);
                  count2 = param1.items.concat();
                  this.items = [];
                  while(true)
                  {
                     count7 = GamesModel.parse(count2);
                     if(count7 == null)
                     {
                        break;
                     }
                     this.items.push(count7);
                  }
                  count8 = 0;
                  while(count8 < this.items.length)
                  {
                     if((this.items[count8] as GamesModel).isWaiting)
                     {
                        items = true;
                        break;
                     }
                     count8++;
                  }
                  this.count3 = DatagameModel._bd3215((this.items[0] as GamesModel).count1);
                  if(items)
                  {
                     this.registerUser4();
                  }
                  else
                  {
                     Communications._dw11182(UserSession.getInstance().id,DatagameModel._bt2322(this.count3));
                  }
               }
               return;
            case MessageTypeConstants.count1:
               if(param1.flags[1] == MessageTypeConstants.count13)
               {
                  PacketBuilder.handleSocket1(MessageTypeConstants.count1,this.update);
                  this.count = param1.items[2] + param1.items[3];
                  this.registerUser();
               }
               return;
            case MessageTypeConstants.count80:
               count = int(param1._qp16092(1));
               switch(count)
               {
                  case MessageTypeConstants.count82:
                     count3 = int(param1.items[0]);
                     count1 = int(param1.items[1]);
                     if(count1 == 1)
                     {
                        this.registerUser2();
                        break;
                     }
                     if(count1 == 2)
                     {
                        this.registerUser3();
                        break;
                     }
                     if(count1 == -1)
                     {
                        this.registerUser7();
                     }
                     break;
                  case MessageTypeConstants.count83:
                     count3 = int(param1.items[0]);
                     count1 = int(param1.items[1]);
                     if(count1 == 1)
                     {
                        this.registerUser6();
                     }
               }
         }
      }
      
      private function registerUser() : void
      {
         var count2:WindowsView = new WindowsView(_cw8295("GamesRegisterWindow") as MovieClip,textString,this.count3,this.count);
         count2._th13516 = "games.registerWindow.game_" + this.count3 + ".description";
         count2._le7018 = "games.registerWindow.game_" + this.count3 + ".title";
         _wj9062._lt3848(count2);
      }
      
      private function registerUser1(param1:int) : void
      {
         var count:String = null;
         var count3:String = null;
         var count1:GamesModel = null;
         var count2:String = null;
         var count8:WindowsController = new WindowsController(_cw8295("GamesRegisterWindow") as MovieClip,textString1,this.count3,param1);
         if(param1 == 0)
         {
            count8._le7018 = "games.registerWindow.game_" + this.count3 + ".confirmRegister.title";
            count3 = String((this.items[0] as GamesModel)._jm15734);
            count1 = this.items[0] as GamesModel;
            count2 = String((this.items[0] as GamesModel)._gh12567);
            count = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("games.registerWindow.game_" + this.count3 + ".confirmRegister.description",count3,count2);
            count8._so8426 = String((this.items[0] as GamesModel)._jm15734);
         }
         else
         {
            count8._le7018 = "games.registerWindow.error.description";
         }
         count8._th13516 = count;
         _wj9062._lt3848(count8);
      }
      
      private function registerUser2() : void
      {
         var count2:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString2,this.count3);
         count._th13516 = "games.registerWindow.game_" + this.count3 + ".registered.description";
         var count3:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("games.registerWindow.game_" + this.count3 + ".registered.title");
         count._le7018 = count3;
         _wj9062._lt3848(count);
      }
      
      private function registerUser3() : void
      {
         var count2:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString4,this.count3);
         count._th13516 = "games.registerWindow.game_" + this.count3 + ".noMoney.description";
         count._le7018 = "games.registerWindow.game_" + this.count3 + ".noMoney.title";
         count._hm9300 = "-.-\'";
         _wj9062._lt3848(count);
      }
      
      private function registerUser4() : void
      {
         var count2:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString5,this.count3);
         count._th13516 = "games.registerWindow.game_" + this.count3 + ".unregister.description";
         count._le7018 = "games.registerWindow.game_" + this.count3 + ".unregister.title";
         count._qe12407 = "button.meRetiro";
         count._te7012 = "button.esperare";
         _wj9062._lt3848(count);
      }
      
      private function registerUser5() : void
      {
         var count2:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString6,this.count3);
         count._th13516 = "games.registerWindow.game_" + this.count3 + ".waitGame.description";
         count._le7018 = "games.registerWindow.game_" + this.count3 + ".waitGame.title";
         count._hm9300 = "button.ok";
         _wj9062._lt3848(count);
      }
      
      private function registerUser6() : void
      {
         var count2:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString7,this.count3);
         count._th13516 = "games.registerWindow.game_" + this.count3 + ".withdrawGame.description";
         count._le7018 = "games.registerWindow.game_" + this.count3 + ".withdrawGame.title";
         count._hm9300 = "O.O";
         _wj9062._lt3848(count);
      }
      
      private function registerUser7() : void
      {
         var count2:MovieClip = _cw8295("GamesRegisterWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString8,this.count3);
         count._th13516 = "games.registerWindow.error.title";
         count._le7018 = "games.registerWindow.error.description";
         count._hm9300 = "button.ok";
         _wj9062._lt3848(count);
      }
   }
}

