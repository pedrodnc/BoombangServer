package src.modules.enterScene
{
   import com.hurlant.util.*;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.external.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.chooseScene.*;
   import src.modules.clickBlock.*;
   import src.modules.doors.*;
   import src.modules.interfaz.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.modules.npc.*;
   import src.modules.ticketManager.*;
   import src.multiuser.*;
   import src.person.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   
   public class SceneTransition extends EventDispatcher implements ModuleBase
   {
      
      private static var _instance:SceneTransition;
      
      public static const count:int = 0;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 5;
      
      public static var count4:int = 27;
      
      private var urlString:String;
      
      private var count5:int;
      
      private var count1:int;
      
      private var _lw16010:MovieClip;
      
      private var _er9683:XML;
      
      private var _ut4147:NavigationmenuModel;
      
      private var count32:int;
      
      private var _kx11571:EntersceneController;
      
      private var items:Array;
      
      private var count8:int;
      
      private var _bl11315:SceneType;
      
      private var logs:Logger;
      
      private var _ix11826:PersonBase;
      
      private var _dr1773:UserSession;
      
      private var isEnabled:Boolean;
      
      private var _uw1843:Function;
      
      private var isEnabled1:Boolean;
      
      private var _lp469:InterfazManager;
      
      public function SceneTransition(param1:Function)
      {
         super();
         this._uw1843 = param1;
         this.init();
      }
      
      public function get _xn1042() : SceneType
      {
         return this._bl11315;
      }
      
      public function init(param1:Object = null) : void
      {
         this._kx11571 = new EntersceneController();
         this._kx11571.addEventListener(EnterSceneController._vu5480,this.authenticateUser,false,0,true);
         this.logs = Logger.getInstance();
         this._dr1773 = UserSession.getInstance();
         this._ut4147 = new NavigationmenuModel();
         this.isEnabled1 = true;
      }
      
      public function _bc1342(param1:MovieClip, param2:XML) : void
      {
         this._lw16010 = param1;
         this._er9683 = param2;
      }
      
      public function loop() : void
      {
         this._bl11315._kw13142(this._ix11826);
         this._ix11826.loop();
      }
      
      public function destroy() : void
      {
         this._kx11571.removeEventListener(EnterSceneController._vu5480,this.authenticateUser);
         this._kx11571 = null;
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = null;
         var count3:uint = 0;
         var count1:Boolean = false;
         var count2:int = 0;
         var count7:Boolean = false;
         var items:Array = null;
         var count8:Array = null;
         var count6:PersonAnimation = null;
         var count10:int = 0;
         var textString12:String = null;
         var isEnabled:String = null;
         var textString14:int = 0;
         var count16:ColorModel = null;
         var count17:Boolean = false;
         var count18:int = 0;
         var count19:String = null;
         var count20:Array = null;
         var count21:Array = null;
         var count22:Array = null;
         var count23:Array = null;
         var count24:Array = null;
         var textString9:Array = null;
         var textString10:Enterscene = null;
         var textString11:int = 0;
         var count8:int = 0;
         var isEnabled2:int = 0;
         var items4:Array = null;
         var isEnabled3:PersonController = null;
         var count12:String = null;
         count = param1.items;
         var isEnabled4:Array = new Array();
         count.shift();
         count3 = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count86:
               count.shift();
               count2 = int(count.shift());
               if(count2 == 1)
               {
                  ClickblockModel._og12356();
                  this._ut4147._ls5877 = NavigationmenuModel._bn928(int(count[0]));
                  this._ut4147.count2 = NavigationmenuModel._bn928(int(count[1]));
                  this._ut4147._vn12441 = int(count[2]);
                  this._ut4147._un6586 = int(count[3]);
                  this._ut4147._eb11619 = int(count[4]);
                  this._ut4147._fq658 = int(count[5]);
                  this._ut4147.name = String(count[6]);
                  ExternalInterface.call("getInstanceName",String(count[6]));
                  ExternalInterface.call("getInstanceId",int(count[4]));
                  this._iw5858(this._ut4147,"",-1);
                  if(TicketmanagerController._hd36 > 0)
                  {
                     dispatchEvent(new IslandChooser(IslandChooser.textString1,count));
                  }
                  else if(TicketmanagerController._xm12587(TicketmanagerController.textString25))
                  {
                     dispatchEvent(new IslandChooser(IslandChooser.textString3,count));
                  }
               }
               else
               {
                  if(this._bl11315 && this._bl11315.items5 && this._bl11315.items5.length > 0 && (this._bl11315.items5[0] as DoorsModel).isEnabled && Boolean(this._lp469._va7385))
                  {
                     TicketmanagerController._cl15459();
                     ClickblockModel._il2596(this._lp469._gv14852);
                     this._lp469._va7385 = false;
                     return;
                  }
                  TicketmanagerController._cl15459();
                  ClickblockModel._py12780();
                  dispatchEvent(new IslandChooser(IslandChooser.textString4,count));
               }
               return;
            case SocketManager.count87:
               count7 = false;
               items = [[""],[""],[""],[""],[""],[""],[""]];
               count.shift();
               count3 = uint(String(count[0]).charCodeAt(0));
               switch(count3)
               {
                  case SocketManager.count92:
                     count.shift();
                     count8 = NPCController.handleSocket(count);
                     isEnabled4 = count;
                     this._bl11315 = new TypeescenariosModel(this._ut4147.clone(),SceneModel._yj5464,this._lw16010,this._er9683);
                     this.isEnabled1 = false;
                     count7 = true;
                     break;
                  case SocketManager.count93:
                     count.shift();
                     count10 = int(count.shift());
                     this._ut4147.count2 = NavigationmenuModel._bn928(int(count.shift()));
                     this._ut4147._vn12441 = int(count.shift());
                     this._ut4147._un6586 = int(count.shift());
                     this._ut4147._eb11619 = int(count.shift());
                     textString12 = count.shift();
                     isEnabled = count.shift();
                     textString14 = 1;
                     count16 = new ColorModel(textString12,isEnabled);
                     count17 = Boolean(int(count.shift()));
                     count18 = int(count.shift());
                     count19 = count[0];
                     if(count19 != "")
                     {
                        var count9:Array = SocketManager.getList2(count.shift());
                        var count10:Array = SocketManager.getList2(count.shift());
                        var isEnabled:Array = SocketManager.getList2(count.shift());
                        var items3:Array = SocketManager.getList2(count.shift());
                        var items16:Array = SocketManager.getList2(count.shift());
                        var count11:Array = SocketManager.getList2(count.shift());
                        var isEnabled1:Array = SocketManager.getList2(count.shift());
                        items = [null,null,null,null,null,null,null];
                     }
                     else
                     {
                        count.splice(0,5);
                     }
                     count20 = SocketManager.getList2(count.shift());
                     count21 = SocketManager.getList2(count.shift());
                     count22 = SocketManager.getList3(count.shift(),",");
                     count23 = SocketManager.getList3(count.shift(),",");
                     count24 = SocketManager.getList4(count.shift(),",");
                     textString9 = SocketManager.getList4(count.shift(),".");
                     textString10 = new Enterscene(count20,count21,count22,count23,count24,textString9);
                     switch(count10)
                     {
                        case SceneModel._cn12135:
                           this._bl11315 = new TypeescenariosModel(this._ut4147.clone(),count10,textString14,count16,count17,count18,this._lw16010,this._er9683,textString10);
                           break;
                        default:
                           this._bl11315 = new SceneTypeIsland(this._ut4147.clone(),count10,count16,count17,count18,this._lw16010,this._er9683,textString10);
                     }
                     textString11 = int(count.shift());
                     isEnabled2 = 0;
                     while(isEnabled2 < textString11)
                     {
                        items4 = count.splice(0,11);
                        this._bl11315._ju14482(this._bl11315,items4);
                        isEnabled2++;
                     }
                     count8 = NPCController.handleSocket(count);
                     var count7:int = int(count.shift());
                     isEnabled4 = count.splice(0,count4 * 0);
                     this._bl11315._gs5509(count);
                     this.isEnabled1 = false;
                     count7 = true;
                     break;
                  case SocketManager.count94:
                     count.shift();
                     count8 = int(count.shift());
                     switch(count8)
                     {
                        case 1:
                           this.count5 = count.shift();
                           count8 = NPCController.handleSocket(count);
                           isEnabled4 = count;
                           this._bl11315 = new TypeescenariosModel(this._nr6929.clone(),SceneModel._yj5464,this._lw16010,this._er9683);
                           this.isEnabled1 = false;
                           count7 = true;
                           break;
                        case 2:
                           this.count8 = count2;
                           break;
                        case -1:
                           this.count8 = count2;
                     }
               }
               if(count7)
               {
                  count1 = Boolean(this._fm9072(isEnabled4));
                  if(count1)
                  {
                     this._bl11315._pr4733();
                     this._bl11315.render3();
                     this._uw1843(count8);
                     this._ix11826._dc15714(this._lp469);
                     this._bl11315._mg3593(items);
                     this.count8 = count1;
                  }
               }
               if(int(count[0]) == -1)
               {
                  this.count8 = count2;
               }
               return;
            case SocketManager.count88:
               count.shift();
               count6 = this._dw4134(count);
               if(this._ix11826 != null && this.isEnabled1 == false)
               {
                  isEnabled3 = this._ix11826._px36(count6,this._bl11315,false);
                  isEnabled3._dl12997(this._lp469);
                  isEnabled3._jc6052();
               }
               return;
            case SocketManager.count89:
               if(count.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"EnterSceneModule.reciebeMsg",count.toString()));
                  return;
               }
               var count:int = int(count[1]);
               if(!Interfaz._le11313(0,this._ix11826))
               {
                  this.logs._kp3815(new Logs(Logger.count,"EnterSceneModule.reciebeMsg","idPosPerson invalid=" + 0));
                  return;
               }
               if(this._ix11826 != null)
               {
                  if(this._lp469 != null)
                  {
                     this._lp469._pq590(0);
                  }
                  this._ix11826._qi1595(0,true,this._bl11315);
               }
               dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,count));
               return;
               break;
            case SocketManager.count90:
               count12 = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
               count12 = Base64.decode(count12);
               ExternalInterface.call(count12);
               this._rr10682(true);
               return;
            default:
               return;
         }
      }
      
      public function get textString7() : int
      {
         return this.count32;
      }
      
      public function set textString7(param1:int) : void
      {
         this.count32 = param1;
      }
      
      public function get _ud1642() : ModuleManager
      {
         return this._kx11571;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._kx11571 = param1 as EntersceneController;
      }
      
      public function _au3731() : void
      {
         var count2:Array = String("10,2,5,A17850FF6600A178500099990066CC000000FFFFFF,12,12,4,aust,10,1hhhhhhh,2hhhhhhh,3hhhhhh,1wwwwww,2wwwwww,3wwwwww,32,50,55,0,0,0,frase,14,19,10,13,5,5,32,39,88,77,0,0,2").split(",");
         var count:PersonAnimation = this._dw4134(count2);
         this._ix11826._px36(count,this._bl11315,false);
      }
      
      public function _dc15714(param1:InterfazManager) : void
      {
         this._lp469 = param1;
      }
      
      public function _iw5858(param1:NavigationmenuModel, param2:String, param3:int = -1) : void
      {
         this._ut4147 = param1.clone();
         this.isEnabled = param2;
         this.count2 = param3;
      }
      
      public function _ra15902(param1:NavigationmenuModel) : void
      {
         this._ut4147 = param1.clone();
         this._qu12972 = DatagameModel._bd3215(this._ut4147.count2.id);
         this._ut4147._fq658 = DatagameModel._yf11260(this._qu12972);
         this.isEnabled = "";
         this.count2 = -1;
      }
      
      public function handleSocket2() : void
      {
         this.count8 = count;
         this._kx11571.handleSocket2(this._ut4147,this.isEnabled,this.count2);
      }
      
      public function handleSocket1(param1:NavigationmenuModel, param2:String) : void
      {
         this.count8 = count;
         this._kx11571.handleSocket1(param1,param2,-1);
      }
      
      public function _cp359() : void
      {
         this._kx11571.handleSocket3();
      }
      
      public function destroy() : void
      {
         this.isEnabled1 = true;
         this._bl11315.destroy();
         this._bl11315.render4();
         if(this._ix11826 != null)
         {
            this._ix11826.destroy();
         }
      }
      
      public function handleSocket5() : void
      {
         this._rr10682(false);
         this._kx11571.handleSocket5();
      }
      
      private function _fm9072(param1:Array) : Boolean
      {
         var count:PersonController = null;
         var count3:Array = null;
         var count1:PersonAnimation = null;
         var count2:Boolean = false;
         var count8:int = 0;
         var count7:int = count4;
         var items:int = param1.length / count7;
         if(param1.length % count7 != 0)
         {
            this.logs._kp3815(new Logs(Logger.count2,"EnterSceneModule.createPersons",param1.toString()));
            return false;
         }
         this._ix11826 = new PersonBase();
         while(count8 < items)
         {
            count3 = param1.splice(0,count7);
            count1 = this._dw4134(count3);
            if(count1.id == this._dr1773.id)
            {
               this._dr1773._pn6300(count1);
               count = this._ix11826._px36(this._dr1773,this._bl11315,true);
               this._yc1019();
            }
            else
            {
               count2 = Boolean(count1.member);
               count = this._ix11826._px36(count1,this._bl11315,false);
            }
            count8++;
         }
         return true;
      }
      
      private function _dw4134(param1:Array) : PersonAnimation
      {
         var count:int = int(param1[0]);
         var count3:String = param1[1];
         var count1:int = int(param1[2]);
         var count2:ColorModel = new ColorModel(param1[3]);
         var count7:ColorModel = new ColorModel(param1[3]);
         var items:int = int(param1[4]);
         var count8:int = int(param1[5]);
         var count6:int = int(param1[6]);
         var count:String = param1[7];
         var count10:int = int(param1[8]);
         var textString12:int = int(param1[9]);
         var isEnabled:Array = SocketManager.getList2(param1[10]);
         var textString14:int = int(param1[11]);
         var count16:Array = SocketManager.getList2(param1[12]);
         var count17:int = int(param1[13]);
         var count18:int = int(param1[14]);
         var count19:int = int(param1[15]);
         var count20:int = int(param1[16]);
         var count21:Array = SocketManager.getList1(param1[17]);
         var count22:Array = SocketManager.getList1(param1[18]);
         var count23:Array = SocketManager.getList2(param1[19]);
         var count24:String = param1[20];
         var textString9:Array = SocketManager.getList2(param1[21]);
         var textString10:int = int(param1[22]);
         var textString11:int = int(param1[23]);
         var count7:Boolean = Boolean(int(param1[24]));
         var count8:int = int(param1[25]);
         var count9:int = int(param1[26]);
         if(count23[0] > 100)
         {
            count23[0] = 100;
         }
         if(count23[1] > 100)
         {
            count23[1] = 100;
         }
         if(count23[2] > 100)
         {
            count23[2] = 100;
         }
         if(count23[0] < 0)
         {
            count23[0] = 0;
         }
         if(count23[1] < 0)
         {
            count23[1] = 0;
         }
         if(count23[2] < 0)
         {
            count23[2] = 0;
         }
         var count10:PersonAnimation = new PersonAnimation();
         count10.init(count3,count,count2,count7,count1,count10,textString12,isEnabled,count16,textString14,count22,count21,count23,count24,textString9,textString10,textString11,"",count9,count7,items,count8,count6,count17,count18,count19,count20,count8);
         return count10;
      }
      
      private function _yc1019() : void
      {
         this._ix11826._tk4905(this._dr1773.count25);
         this._ix11826.addEventListener(PersonEvents._aa5196,this._uu8993);
      }
      
      private function _uu8993(param1:PersonEvents) : void
      {
         var count:Array = null;
         switch(param1._al309)
         {
            case PersonEvents._jg8566:
               this._kx11571.handleSocket4(this._dr1773.count25);
               return;
            case PersonEvents._ht7426:
               count = new Array();
               count.push(String.fromCharCode(PersonEvents._ht7426));
               dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,count));
               return;
            case PersonEvents._bq15080:
               this._kx11571.handleSocket6(this._dr1773.count25);
               return;
            default:
               return;
         }
      }
      
      public function _ol8854() : Boolean
      {
         return this.isEnabled;
      }
      
      public function _rr10682(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function _yp6754() : PersonBase
      {
         return this._ix11826;
      }
      
      public function _ho5911() : SceneType
      {
         return this._bl11315;
      }
      
      public function get _qu12972() : int
      {
         return this.count5;
      }
      
      public function set _qu12972(param1:int) : void
      {
         this.count5 = param1;
      }
      
      public function get isEnabled() : String
      {
         return this.urlString;
      }
      
      public function set isEnabled(param1:String) : void
      {
         this.urlString = param1;
      }
      
      public function get count2() : int
      {
         return this.count1;
      }
      
      public function set count2(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function _yd13621() : int
      {
         return this.count8;
      }
      
      public function set _nr6929(param1:NavigationmenuModel) : void
      {
         this._ut4147 = param1;
      }
      
      public function get _nr6929() : NavigationmenuModel
      {
         return this._ut4147;
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
