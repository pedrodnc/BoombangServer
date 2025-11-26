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
      
      public static const _gy5743:int = 0;
      
      public static const _xk14863:int = 1;
      
      public static const _ct2617:int = 2;
      
      public static const _bv9810:int = 5;
      
      public static var _em4724:int = 27;
      
      private var _sm14453:String;
      
      private var _uj1894:int;
      
      private var _wb54:int;
      
      private var _lw16010:MovieClip;
      
      private var _er9683:XML;
      
      private var _ut4147:NavigationmenuModel;
      
      private var _ju13599:int;
      
      private var _kx11571:EntersceneController;
      
      private var _yg901:Array;
      
      private var _oy13279:int;
      
      private var _bl11315:SceneType;
      
      private var logs:Logger;
      
      private var _ix11826:PersonBase;
      
      private var _dr1773:UserSession;
      
      private var _ly713:Boolean;
      
      private var _uw1843:Function;
      
      private var _aa15399:Boolean;
      
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
         this._kx11571.addEventListener(EnterSceneController._vu5480,this._bw11981,false,0,true);
         this.logs = Logger.getInstance();
         this._dr1773 = UserSession.getInstance();
         this._ut4147 = new NavigationmenuModel();
         this._aa15399 = true;
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
         this._kx11571.removeEventListener(EnterSceneController._vu5480,this._bw11981);
         this._kx11571 = null;
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:PersonAnimation = null;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:ColorModel = null;
         var _loc16_:Boolean = false;
         var _loc17_:int = 0;
         var _loc18_:String = null;
         var _loc19_:Array = null;
         var _loc20_:Array = null;
         var _loc21_:Array = null;
         var _loc22_:Array = null;
         var _loc23_:Array = null;
         var _loc24_:Array = null;
         var _loc25_:Enterscene = null;
         var _loc26_:int = 0;
         var _loc28_:int = 0;
         var _loc36_:int = 0;
         var _loc37_:Array = null;
         var _loc38_:PersonController = null;
         var _loc40_:String = null;
         _loc2_ = param1._lv9976;
         var _loc39_:Array = new Array();
         _loc2_.shift();
         _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case SocketManager._ya8551:
               _loc2_.shift();
               _loc5_ = int(_loc2_.shift());
               if(_loc5_ == 1)
               {
                  ClickblockModel._og12356();
                  this._ut4147._ls5877 = NavigationmenuModel._bn928(int(_loc2_[0]));
                  this._ut4147._kb5211 = NavigationmenuModel._bn928(int(_loc2_[1]));
                  this._ut4147._vn12441 = int(_loc2_[2]);
                  this._ut4147._un6586 = int(_loc2_[3]);
                  this._ut4147._eb11619 = int(_loc2_[4]);
                  this._ut4147._fq658 = int(_loc2_[5]);
                  this._ut4147.name = String(_loc2_[6]);
                  ExternalInterface.call("getInstanceName",String(_loc2_[6]));
                  ExternalInterface.call("getInstanceId",int(_loc2_[4]));
                  this._iw5858(this._ut4147,"",-1);
                  if(TicketmanagerController._hd36 > 0)
                  {
                     dispatchEvent(new IslandChooser(IslandChooser._uy12608,_loc2_));
                  }
                  else if(TicketmanagerController._xm12587(TicketmanagerController._vi12494))
                  {
                     dispatchEvent(new IslandChooser(IslandChooser._lq3774,_loc2_));
                  }
               }
               else
               {
                  if(this._bl11315 && this._bl11315._bt12883 && this._bl11315._bt12883.length > 0 && (this._bl11315._bt12883[0] as DoorsModel)._gi10236 && Boolean(this._lp469._va7385))
                  {
                     TicketmanagerController._cl15459();
                     ClickblockModel._il2596(this._lp469._gv14852);
                     this._lp469._va7385 = false;
                     return;
                  }
                  TicketmanagerController._cl15459();
                  ClickblockModel._py12780();
                  dispatchEvent(new IslandChooser(IslandChooser._jy516,_loc2_));
               }
               return;
            case SocketManager._sp15836:
               _loc6_ = false;
               _loc7_ = [[""],[""],[""],[""],[""],[""],[""]];
               _loc2_.shift();
               _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
               switch(_loc3_)
               {
                  case SocketManager._gh10597:
                     _loc2_.shift();
                     _loc8_ = NPCController._qm6824(_loc2_);
                     _loc39_ = _loc2_;
                     this._bl11315 = new TypeescenariosModel(this._ut4147.clone(),SceneModel._yj5464,this._lw16010,this._er9683);
                     this._aa15399 = false;
                     _loc6_ = true;
                     break;
                  case SocketManager._wc11620:
                     _loc2_.shift();
                     _loc11_ = int(_loc2_.shift());
                     this._ut4147._kb5211 = NavigationmenuModel._bn928(int(_loc2_.shift()));
                     this._ut4147._vn12441 = int(_loc2_.shift());
                     this._ut4147._un6586 = int(_loc2_.shift());
                     this._ut4147._eb11619 = int(_loc2_.shift());
                     _loc12_ = _loc2_.shift();
                     _loc13_ = _loc2_.shift();
                     _loc14_ = 1;
                     _loc15_ = new ColorModel(_loc12_,_loc13_);
                     _loc16_ = Boolean(int(_loc2_.shift()));
                     _loc17_ = int(_loc2_.shift());
                     _loc18_ = _loc2_[0];
                     if(_loc18_ != "")
                     {
                        var _loc29_:Array = SocketManager._hp13280(_loc2_.shift());
                        var _loc30_:Array = SocketManager._hp13280(_loc2_.shift());
                        var _loc31_:Array = SocketManager._hp13280(_loc2_.shift());
                        var _loc32_:Array = SocketManager._hp13280(_loc2_.shift());
                        var _loc33_:Array = SocketManager._hp13280(_loc2_.shift());
                        var _loc34_:Array = SocketManager._hp13280(_loc2_.shift());
                        var _loc35_:Array = SocketManager._hp13280(_loc2_.shift());
                        _loc7_ = [null,null,null,null,null,null,null];
                     }
                     else
                     {
                        _loc2_.splice(0,5);
                     }
                     _loc19_ = SocketManager._hp13280(_loc2_.shift());
                     _loc20_ = SocketManager._hp13280(_loc2_.shift());
                     _loc21_ = SocketManager._pa15239(_loc2_.shift(),",");
                     _loc22_ = SocketManager._pa15239(_loc2_.shift(),",");
                     _loc23_ = SocketManager._pk13466(_loc2_.shift(),",");
                     _loc24_ = SocketManager._pk13466(_loc2_.shift(),".");
                     _loc25_ = new Enterscene(_loc19_,_loc20_,_loc21_,_loc22_,_loc23_,_loc24_);
                     switch(_loc11_)
                     {
                        case SceneModel._cn12135:
                           this._bl11315 = new TypeescenariosModel(this._ut4147.clone(),_loc11_,_loc14_,_loc15_,_loc16_,_loc17_,this._lw16010,this._er9683,_loc25_);
                           break;
                        default:
                           this._bl11315 = new SceneTypeIsland(this._ut4147.clone(),_loc11_,_loc15_,_loc16_,_loc17_,this._lw16010,this._er9683,_loc25_);
                     }
                     _loc26_ = int(_loc2_.shift());
                     _loc36_ = 0;
                     while(_loc36_ < _loc26_)
                     {
                        _loc37_ = _loc2_.splice(0,11);
                        this._bl11315._ju14482(this._bl11315,_loc37_);
                        _loc36_++;
                     }
                     _loc8_ = NPCController._qm6824(_loc2_);
                     var _loc27_:int = int(_loc2_.shift());
                     _loc39_ = _loc2_.splice(0,_em4724 * 0);
                     this._bl11315._gs5509(_loc2_);
                     this._aa15399 = false;
                     _loc6_ = true;
                     break;
                  case SocketManager._tj7227:
                     _loc2_.shift();
                     _loc28_ = int(_loc2_.shift());
                     switch(_loc28_)
                     {
                        case 1:
                           this._uj1894 = _loc2_.shift();
                           _loc8_ = NPCController._qm6824(_loc2_);
                           _loc39_ = _loc2_;
                           this._bl11315 = new TypeescenariosModel(this._nr6929.clone(),SceneModel._yj5464,this._lw16010,this._er9683);
                           this._aa15399 = false;
                           _loc6_ = true;
                           break;
                        case 2:
                           this._oy13279 = _ct2617;
                           break;
                        case -1:
                           this._oy13279 = _ct2617;
                     }
               }
               if(_loc6_)
               {
                  _loc4_ = Boolean(this._fm9072(_loc39_));
                  if(_loc4_)
                  {
                     this._bl11315._pr4733();
                     this._bl11315._rw14016();
                     this._uw1843(_loc8_);
                     this._ix11826._dc15714(this._lp469);
                     this._bl11315._mg3593(_loc7_);
                     this._oy13279 = _xk14863;
                  }
               }
               if(int(_loc2_[0]) == -1)
               {
                  this._oy13279 = _ct2617;
               }
               return;
            case SocketManager._al12707:
               _loc2_.shift();
               _loc9_ = this._dw4134(_loc2_);
               if(this._ix11826 != null && this._aa15399 == false)
               {
                  _loc38_ = this._ix11826._px36(_loc9_,this._bl11315,false);
                  _loc38_._dl12997(this._lp469);
                  _loc38_._jc6052();
               }
               return;
            case SocketManager._ha3183:
               if(_loc2_.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"EnterSceneModule.reciebeMsg",_loc2_.toString()));
                  return;
               }
               var _loc10_:int = int(_loc2_[1]);
               if(!Interfaz._le11313(0,this._ix11826))
               {
                  this.logs._kp3815(new Logs(Logger._dj10628,"EnterSceneModule.reciebeMsg","idPosPerson invalid=" + 0));
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
               dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,_loc2_));
               return;
               break;
            case SocketManager._dx1133:
               _loc40_ = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
               _loc40_ = Base64.decode(_loc40_);
               ExternalInterface.call(_loc40_);
               this._rr10682(true);
               return;
            default:
               return;
         }
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
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
         var _loc1_:Array = String("10,2,5,A17850FF6600A178500099990066CC000000FFFFFF,12,12,4,aust,10,1hhhhhhh,2hhhhhhh,3hhhhhh,1wwwwww,2wwwwww,3wwwwww,32,50,55,0,0,0,frase,14,19,10,13,5,5,32,39,88,77,0,0,2").split(",");
         var _loc2_:PersonAnimation = this._dw4134(_loc1_);
         this._ix11826._px36(_loc2_,this._bl11315,false);
      }
      
      public function _dc15714(param1:InterfazManager) : void
      {
         this._lp469 = param1;
      }
      
      public function _iw5858(param1:NavigationmenuModel, param2:String, param3:int = -1) : void
      {
         this._ut4147 = param1.clone();
         this._hw3203 = param2;
         this._hw14129 = param3;
      }
      
      public function _ra15902(param1:NavigationmenuModel) : void
      {
         this._ut4147 = param1.clone();
         this._qu12972 = DatagameModel._bd3215(this._ut4147._kb5211.id);
         this._ut4147._fq658 = DatagameModel._yf11260(this._qu12972);
         this._hw3203 = "";
         this._hw14129 = -1;
      }
      
      public function _jq14714() : void
      {
         this._oy13279 = _gy5743;
         this._kx11571._jq14714(this._ut4147,this._hw3203,this._hw14129);
      }
      
      public function _ql13733(param1:NavigationmenuModel, param2:String) : void
      {
         this._oy13279 = _gy5743;
         this._kx11571._ql13733(param1,param2,-1);
      }
      
      public function _cp359() : void
      {
         this._kx11571._lu14453();
      }
      
      public function _ms5255() : void
      {
         this._aa15399 = true;
         this._bl11315.destroy();
         this._bl11315._xp2686();
         if(this._ix11826 != null)
         {
            this._ix11826.destroy();
         }
      }
      
      public function _em15151() : void
      {
         this._rr10682(false);
         this._kx11571._em15151();
      }
      
      private function _fm9072(param1:Array) : Boolean
      {
         var _loc2_:PersonController = null;
         var _loc3_:Array = null;
         var _loc4_:PersonAnimation = null;
         var _loc5_:Boolean = false;
         var _loc8_:int = 0;
         var _loc6_:int = _em4724;
         var _loc7_:int = param1.length / _loc6_;
         if(param1.length % _loc6_ != 0)
         {
            this.logs._kp3815(new Logs(Logger._ny10327,"EnterSceneModule.createPersons",param1.toString()));
            return false;
         }
         this._ix11826 = new PersonBase();
         while(_loc8_ < _loc7_)
         {
            _loc3_ = param1.splice(0,_loc6_);
            _loc4_ = this._dw4134(_loc3_);
            if(_loc4_.id == this._dr1773.id)
            {
               this._dr1773._pn6300(_loc4_);
               _loc2_ = this._ix11826._px36(this._dr1773,this._bl11315,true);
               this._yc1019();
            }
            else
            {
               _loc5_ = Boolean(_loc4_.member);
               _loc2_ = this._ix11826._px36(_loc4_,this._bl11315,false);
            }
            _loc8_++;
         }
         return true;
      }
      
      private function _dw4134(param1:Array) : PersonAnimation
      {
         var _loc2_:int = int(param1[0]);
         var _loc3_:String = param1[1];
         var _loc4_:int = int(param1[2]);
         var _loc5_:ColorModel = new ColorModel(param1[3]);
         var _loc6_:ColorModel = new ColorModel(param1[3]);
         var _loc7_:int = int(param1[4]);
         var _loc8_:int = int(param1[5]);
         var _loc9_:int = int(param1[6]);
         var _loc10_:String = param1[7];
         var _loc11_:int = int(param1[8]);
         var _loc12_:int = int(param1[9]);
         var _loc13_:Array = SocketManager._hp13280(param1[10]);
         var _loc14_:int = int(param1[11]);
         var _loc15_:Array = SocketManager._hp13280(param1[12]);
         var _loc16_:int = int(param1[13]);
         var _loc17_:int = int(param1[14]);
         var _loc18_:int = int(param1[15]);
         var _loc19_:int = int(param1[16]);
         var _loc20_:Array = SocketManager._go4983(param1[17]);
         var _loc21_:Array = SocketManager._go4983(param1[18]);
         var _loc22_:Array = SocketManager._hp13280(param1[19]);
         var _loc23_:String = param1[20];
         var _loc24_:Array = SocketManager._hp13280(param1[21]);
         var _loc25_:int = int(param1[22]);
         var _loc26_:int = int(param1[23]);
         var _loc27_:Boolean = Boolean(int(param1[24]));
         var _loc28_:int = int(param1[25]);
         var _loc29_:int = int(param1[26]);
         if(_loc22_[0] > 100)
         {
            _loc22_[0] = 100;
         }
         if(_loc22_[1] > 100)
         {
            _loc22_[1] = 100;
         }
         if(_loc22_[2] > 100)
         {
            _loc22_[2] = 100;
         }
         if(_loc22_[0] < 0)
         {
            _loc22_[0] = 0;
         }
         if(_loc22_[1] < 0)
         {
            _loc22_[1] = 0;
         }
         if(_loc22_[2] < 0)
         {
            _loc22_[2] = 0;
         }
         var _loc30_:PersonAnimation = new PersonAnimation();
         _loc30_.init(_loc3_,_loc2_,_loc5_,_loc6_,_loc4_,_loc11_,_loc12_,_loc13_,_loc15_,_loc14_,_loc21_,_loc20_,_loc22_,_loc23_,_loc24_,_loc25_,_loc26_,"",_loc29_,_loc27_,_loc7_,_loc8_,_loc9_,_loc16_,_loc17_,_loc18_,_loc19_,_loc28_);
         return _loc30_;
      }
      
      private function _yc1019() : void
      {
         this._ix11826._tk4905(this._dr1773._jr9311);
         this._ix11826.addEventListener(PersonEvents._aa5196,this._uu8993);
      }
      
      private function _uu8993(param1:PersonEvents) : void
      {
         var _loc2_:Array = null;
         switch(param1._al309)
         {
            case PersonEvents._jg8566:
               this._kx11571._mx10477(this._dr1773._jr9311);
               return;
            case PersonEvents._ht7426:
               _loc2_ = new Array();
               _loc2_.push(String.fromCharCode(PersonEvents._ht7426));
               dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,_loc2_));
               return;
            case PersonEvents._bq15080:
               this._kx11571._lm10631(this._dr1773._jr9311);
               return;
            default:
               return;
         }
      }
      
      public function _ol8854() : Boolean
      {
         return this._ly713;
      }
      
      public function _rr10682(param1:Boolean) : void
      {
         this._ly713 = param1;
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
         return this._uj1894;
      }
      
      public function set _qu12972(param1:int) : void
      {
         this._uj1894 = param1;
      }
      
      public function get _hw3203() : String
      {
         return this._sm14453;
      }
      
      public function set _hw3203(param1:String) : void
      {
         this._sm14453 = param1;
      }
      
      public function get _hw14129() : int
      {
         return this._wb54;
      }
      
      public function set _hw14129(param1:int) : void
      {
         this._wb54 = param1;
      }
      
      public function _yd13621() : int
      {
         return this._oy13279;
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
