package src.multiuser
{
   import com.adobe.crypto.*;
   import com.hurlant.crypto.prng.*;
   import com.hurlant.util.*;
   import flash.errors.IOError;
   import flash.events.*;
   import flash.external.*;
   import flash.net.*;
   import flash.utils.*;
   import src.allData.*;
   import src.config.*;
   import src.crypto.*;
   import src.crypto.hurlant.math.*;
   import src.modules.antitimos.*;
   import src.modules.baneos.*;
   import src.modules.bpad.*;
   import src.modules.chooseIsla.*;
   import src.modules.chooseScene.*;
   import src.modules.concursos.*;
   import src.modules.creacionObjetos.*;
   import src.modules.creditos.*;
   import src.modules.crypto.*;
   import src.modules.enterScene.*;
   import src.modules.estadoPociones.*;
   import src.modules.iluminarGrillas.*;
   import src.modules.intercambios.*;
   import src.modules.interfaz.*;
   import src.modules.irAlli.*;
   import src.modules.login.*;
   import src.modules.member.*;
   import src.modules.multiplayerGames.*;
   import src.modules.noticias.*;
   import src.modules.notificaciones.*;
   import src.modules.npc.*;
   import src.modules.objetos.*;
   import src.modules.privados.*;
   import src.modules.report.*;
   import src.modules.scene.*;
   import src.modules.singleplayerGames.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class SocketManager extends EventDispatcher
   {
      
      private static var _instance:SocketManager;
      
      public static var tontoelquelomodifique:String;
      
      private static const count:int = 8000;
      
      private static const count1:int = 1000;
      
      public static const urlString:String = "CONNECTION _READY_TO_LOGIN";
      
      private static const count2:int = 17;
      
      private static const count3:int = 16;
      
      private static const count4:int = 18;
      
      private static const count5:int = 176;
      
      private static const count6:int = 177;
      
      private static const count7:int = 178;
      
      private static const count8:int = 179;
      
      private static const count9:int = 171;
      
      private static const count10:int = 172;
      
      public static const count11:int = 120;
      
      public static const count12:int = 121;
      
      public static const count13:int = 122;
      
      public static const count14:int = 123;
      
      public static const count15:int = 124;
      
      public static const count16:int = 125;
      
      public static const count17:int = 126;
      
      public static const count18:int = 127;
      
      public static const count19:int = 128;
      
      public static const count20:int = 129;
      
      public static const count21:int = 131;
      
      public static const count22:int = 132;
      
      public static const count23:int = 133;
      
      public static const count24:int = 134;
      
      public static const count25:int = 135;
      
      public static const count26:int = 136;
      
      public static const count27:int = 142;
      
      public static const count28:int = 143;
      
      public static const count29:int = 144;
      
      public static const count30:int = 145;
      
      public static const count31:int = 225;
      
      public static const count32:int = 146;
      
      public static const count33:int = 147;
      
      public static const count34:int = 148;
      
      public static const count35:int = 149;
      
      public static const count36:int = 150;
      
      public static const count37:int = 151;
      
      public static const count38:int = 153;
      
      public static const count39:int = 152;
      
      public static const count40:int = 154;
      
      public static const count41:int = 155;
      
      public static const count42:int = 156;
      
      public static const count43:int = 157;
      
      public static const count44:int = 158;
      
      public static const count45:int = 159;
      
      public static const count46:int = 160;
      
      public static const count47:int = 161;
      
      public static const count48:int = 162;
      
      public static const count49:int = 163;
      
      public static const count50:int = 164;
      
      public static const count51:int = 165;
      
      public static const count52:int = 166;
      
      public static const count53:int = 167;
      
      public static const count54:int = 168;
      
      public static const count55:int = 169;
      
      public static const count56:int = 170;
      
      public static const count57:int = 173;
      
      public static const count58:int = 174;
      
      public static const count59:int = 175;
      
      public static const count60:int = 180;
      
      public static const count61:int = 181;
      
      public static const count62:int = 182;
      
      public static const count63:int = 183;
      
      public static const count64:int = 184;
      
      public static const count65:int = 185;
      
      public static const count66:int = 187;
      
      public static const count67:int = 189;
      
      public static const count68:int = 190;
      
      public static const count69:int = 191;
      
      public static const count70:int = 192;
      
      public static const count71:int = 193;
      
      public static const count72:int = 194;
      
      public static const count73:int = 195;
      
      public static const count74:int = 196;
      
      public static const count75:int = 198;
      
      public static const count76:int = 199;
      
      public static const count77:int = 200;
      
      public static const count78:int = 202;
      
      public static const count79:int = 203;
      
      public static const count80:int = 207;
      
      public static const count81:int = 233;
      
      public static const count82:int = 208;
      
      public static const count83:int = 209;
      
      public static const count84:int = 210;
      
      public static const count85:int = 211;
      
      public static const count86:int = 120;
      
      public static const count87:int = 121;
      
      public static const count88:int = 122;
      
      public static const count89:int = 123;
      
      public static const count90:int = 124;
      
      public static const count91:int = 125;
      
      public static const count92:int = 120;
      
      public static const count93:int = 121;
      
      public static const count94:int = 122;
      
      public static const count95:int = 32;
      
      public static const count96:int = 33;
      
      public static const count97:int = 1;
      
      public static const count98:int = 2;
      
      public static const count99:int = 3;
      
      public static const count100:int = 4;
      
      public static const count101:int = 1;
      
      public static const count102:int = 2;
      
      public static const count103:int = 3;
      
      public static const count104:int = 4;
      
      public var socket:Socket;
      
      private var host:String;
      
      private var port:int;
      
      private var urlString1:String = "";
      
      private var urlString2:String = "127.0.0.1";
      
      private var urlString3:String = "";
      
      private var urlString4:String = "";
      
      private var count4:int = 2;
      
      private var _xa6146:uint = 4294967295;
      
      private var items:Array;
      
      private var _ri4407:ByteArray;
      
      private var count106:int;
      
      private var count107:int;
      
      private var count108:int;
      
      private var urlString5:String;
      
      private var _cm1764:Timer;
      
      public var isEnabled:Boolean = true;
      
      private var isEnabled1:Boolean = false;
      
      private var isEnabled2:Boolean = false;
      
      private var count109:int;
      
      private var count110:int;
      
      private var count111:int;
      
      private var count112:int;
      
      private var _op34013:_fg09343;
      
      private var _ka92313:_fg09343;
      
      private var vKeyExchanger:KeyExchange;
      
      private var vRSAKey:RSAKey;
      
      private var vPrivateKey:String;
      
      public function SocketManager(param1:_rw9443)
      {
         super();
         this.init();
      }
      
      public static function getInstance() : SocketManager
      {
         if(SocketManager._instance == null)
         {
            SocketManager._instance = new SocketManager(new _rw9443());
         }
         return SocketManager._instance;
      }
      
      private static function _tn6425(param1:int) : int
      {
         return int(int("1103515245") * param1) + int("12344");
      }
      
      private static function _lw14951(param1:ByteArray, param2:String) : void
      {
         var count3:int = 0;
         while(count3 < param2.length)
         {
            param1.writeByte(param2.charCodeAt(count3));
            count3++;
         }
      }
      
      public static function getList(param1:Array) : Array
      {
         var count2:int = 0;
         var count:int = int(param1.length);
         var count3:String = "";
         var count1:String = "";
         while(count2 < count)
         {
            if(param1[count2][0] != "")
            {
               count3 += "," + param1[count2][0];
               count1 += "." + param1[count2][1];
            }
            else
            {
               count3 += "," + "000000";
               count1 += "." + "50,50,50";
            }
            count2++;
         }
         count3 += String.fromCharCode(count8);
         count1 += String.fromCharCode(count8);
         count3 = count3.slice(1,count3.length);
         count1 = count1.slice(1,count1.length);
         return [count3,count1];
      }
      
      public static function getString(param1:Array) : String
      {
         var count1:int = 0;
         var count:int = int(param1.length);
         var count3:String = "";
         while(count1 < count)
         {
            count3 += param1[count1] + String.fromCharCode(count8);
            count1++;
         }
         return count3;
      }
      
      public static function getList1(param1:String) : Array
      {
         var count:Array = param1.split(String.fromCharCode(count8));
         if(count.length > 1)
         {
            count.pop();
         }
         return count;
      }
      
      public static function getList2(param1:String) : Array
      {
         var count3:int = 0;
         var count:Array = param1.split(String.fromCharCode(count8));
         while(count3 < count.length)
         {
            count[count3] = int(count[count3]);
            count3++;
         }
         if(count.length > 1)
         {
            count.pop();
         }
         return count;
      }
      
      public static function getList3(param1:String, param2:String) : Array
      {
         var count3:int = 0;
         var count2:int = 0;
         var count1:Array = param1.split(String.fromCharCode(count8));
         while(count2 < count1.length)
         {
            count1[count2] = String(count1[count2]).split(param2);
            count3 = 0;
            while(count3 < count1[count2].length)
            {
               count1[count2][count3] = int(count1[count2][count3]);
               count3++;
            }
            count2++;
         }
         if(count1.length > 1)
         {
            count1.pop();
         }
         return count1;
      }
      
      public static function getList4(param1:String, param2:String) : Array
      {
         var count1:int = 0;
         var count3:Array = param1.split(String.fromCharCode(count8));
         while(count1 < count3.length)
         {
            count3[count1] = String(count3[count1]).split(param2);
            count1++;
         }
         if(count3.length > 1)
         {
            count3.pop();
         }
         return count3;
      }
      
      public static function getList5(param1:String) : Array
      {
         var count3:int = 0;
         var count:Array = param1.split(String.fromCharCode(count8));
         count.pop();
         while(count3 < count.length)
         {
            count[count3] = String(count[count3]).charCodeAt(0);
            count3++;
         }
         return count;
      }
      
      public function connect(param1:String, param2:int) : void
      {
         var host:String = param1;
         var port:int = param2;
         this.host = host;
         this.port = port;
         this._xa6146 = setInterval(this._yy15839,count);
         this.socket = new Socket();
         this.connect1();
         try
         {
            this.socket.connect(host,port);
         }
         catch(e:Error)
         {
            ThunderboltModel.error("Error trying to connect to server",e);
         }
         this.count109 = Configuration.count1;
         this.count110 = Configuration.count1;
         this.count111 = this.count112 = 0;
         this.count108 = count101;
      }
      
      private function connect1() : void
      {
         this.socket.addEventListener(Event.CLOSE,this.closeHandler);
         this.socket.addEventListener(Event.CONNECT,this._st6990);
         this.socket.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this.socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._gj9108);
         this.socket.addEventListener(ProgressEvent.SOCKET_DATA,this._oq5189);
      }
      
      private function handleSocket() : void
      {
         var count2:String = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
         count2 = Base64.decode(count2);
         ExternalInterface.call(count2);
         this.socket.removeEventListener(Event.CLOSE,this.closeHandler);
         this.socket.removeEventListener(Event.CONNECT,this._st6990);
         this.socket.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this.socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._gj9108);
         this.socket.removeEventListener(ProgressEvent.SOCKET_DATA,this._oq5189);
      }
      
      private function _yy15839() : void
      {
         if(this.isEnabled1 == false)
         {
            this.isEnabled1 = true;
            if(this._xa6146 != uint.MAX_VALUE)
            {
               clearInterval(this._xa6146);
               this._xa6146 = uint.MAX_VALUE;
            }
            if(this.count108 == count101)
            {
               try
               {
                  this.socket.close();
               }
               catch(err:*)
               {
               }
               this.handleSocket();
               --this.count4;
               if(this.count4 > 0)
               {
                  this.connect(this.host,this.port);
               }
               else
               {
                  this.handleSocket6();
               }
            }
            this.isEnabled1 = false;
         }
      }
      
      private function init() : void
      {
         this._ri4407 = null;
      }
      
      private function handleSocket1() : void
      {
         var str:String = null;
         var _ph12098:ByteArray = null;
         var status:int = 0;
         try
         {
            if(this.socket.bytesAvailable == 0)
            {
               return;
            }
            str = "";
            _ph12098 = this.handleSocket2();
            if(_ph12098 == null)
            {
               return;
            }
            status = int(this.move(_ph12098));
            _ph12098.position = 0;
            if(status == count97)
            {
               this._ri4407 = null;
               this._yi13761(_ph12098);
            }
            else if(status == count98)
            {
               this._ri4407 = _ph12098;
            }
            else if(status == count99 || status == count100)
            {
               if(this._ri4407 == null)
               {
                  return;
               }
               _ph12098.readBytes(this._ri4407,this._ri4407.length,0);
               if(status == count99)
               {
                  this._yi13761(this._ri4407);
                  this._ri4407 = null;
               }
            }
         }
         catch(err:IOError)
         {
            ThunderboltModel.error("Error when reading from socket",err);
            handleSocket6();
         }
      }
      
      private function move(param1:ByteArray) : int
      {
         param1.position = 0;
         var count:int = int(param1.readUnsignedByte());
         param1.position = param1.length - 1;
         var count3:int = int(param1.readUnsignedByte());
         if(count == count6 && count3 == count5)
         {
            return count97;
         }
         if(count == count6 && count3 != count5)
         {
            return count98;
         }
         if(count != count6 && count3 == count5)
         {
            return count99;
         }
         return count100;
      }
      
      private function handleSocket2() : ByteArray
      {
         var _local_1:ByteArray = null;
         try
         {
            _local_1 = new ByteArray();
            this.socket.readBytes(_local_1,0,this.socket.bytesAvailable);
            _local_1.position = 0;
            return this.de5433(_local_1);
         }
         catch(e:Error)
         {
            return null;
         }
      }
      
      private function _yi13761(param1:ByteArray) : void
      {
         var count:Array = null;
         var count3:Array = null;
         var count1:Array = null;
         var count2:uint = 0;
         var items:int = 0;
         var count8:Number = NaN;
         var count6:String = null;
         var count:Array = null;
         var count10:Array = null;
         var textString12:Array = this.move1(param1);
         while(textString12.length > 0)
         {
            count = this.move2(textString12.shift());
            if(this.isEnabled)
            {
            }
            if(count == null)
            {
               return;
            }
            if(count.length <= 0)
            {
               return;
            }
            count6 = count.shift();
            count = SocketManager.getList5(count6).reverse();
            items = 0;
            while(items < count.length)
            {
               count10 = String(count[items]).split(String.fromCharCode(count8));
               if(count10.length == 2)
               {
                  count[items] = count10[0];
               }
               items++;
            }
            count1 = count.concat();
            count3 = new Array();
            items = 0;
            while(items < count.length)
            {
               count3[count.length - items - 1] = count[items] as int;
               count.unshift(String.fromCharCode(count[items]));
               items++;
            }
            count2 = uint(String(count[0]).charCodeAt(0));
            count8 = Number(String(count[0]).charCodeAt(1));
            dispatchEvent(new NetworkEventWrapper(count2.toString(),count3,count1));
            switch(count2)
            {
               case 230:
                  this.initialize(count);
                  break;
               case 231:
                  this._rc40003(count);
                  break;
               case count81:
                  dispatchEvent(new keyPacket(keyPacket._keyPacketString,count));
                  break;
               case count62:
               case count37:
               case MessageTypeConstants.count76:
               case count26:
               case count24:
               case count85:
               case count42:
               case count43:
               case count53:
               case count41:
               case count44:
               case count25:
               case count28:
               case count29:
               case count45:
               case count35:
               case count33:
               case count38:
               case count59:
               case count16:
               case count23:
               case count51:
               case count20:
               case count21:
               case count32:
                  dispatchEvent(new InterfazEvents(InterfazEvents.textString,count));
                  break;
               case count11:
                  dispatchEvent(new LoginEvents(LoginEvents.textString,count));
                  break;
               case count19:
               case count68:
                  dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,count));
                  break;
               case count49:
                  this._ve9503(count);
                  break;
               case count40:
               case count66:
               case count71:
               case count69:
               case count73:
               case count72:
                  dispatchEvent(new IslandChooser(IslandChooser.textString,count));
                  break;
               case count67:
                  dispatchEvent(new ChooseislaEvents(ChooseislaEvents.textString,count));
                  dispatchEvent(new PrivadosEvents(PrivadosEvents.textString,count));
                  dispatchEvent(new ObjetosEvents(ObjetosEvents.textString,count));
                  break;
               case count57:
               case count58:
               case count65:
               case count36:
               case count63:
               case count80:
               case count56:
                  dispatchEvent(new BaneosEvents(BaneosEvents.textString,count));
                  break;
               case count76:
                  dispatchEvent(new IntercambiosEvents(IntercambiosEvents.textString,count));
                  break;
               case count39:
               case count48:
               case count47:
               case count52:
               case count54:
               case count50:
               case count13:
               case 226:
               case 227:
                  dispatchEvent(new CreditosEvents(CreditosEvents.textString,count));
                  break;
               case count77:
                  dispatchEvent(new ConcursosEvents(ConcursosEvents.textString,count));
                  break;
               case count22:
                  dispatchEvent(new BpadEvents(BpadEvents.textString,count));
                  break;
               case count78:
                  dispatchEvent(new ReportEvents(ReportEvents.textString,count));
                  break;
               case count75:
                  dispatchEvent(new NavigationManager(NavigationManager.textString,count));
                  break;
               case count46:
                  dispatchEvent(new MultiplayergamesEvents(MultiplayergamesEvents.textString,count));
                  break;
               case count60:
                  dispatchEvent(new SingleplayergamesEvents(SingleplayergamesEvents.textString,count));
                  break;
               case count64:
                  dispatchEvent(new Estadopociones(Estadopociones.textString,count));
                  break;
               case count14:
                  dispatchEvent(new CreacionobjetosEvents(CreacionobjetosEvents.textString,count));
                  break;
               case count15:
                  dispatchEvent(new IluminargrillasEvents(IluminargrillasEvents.textString,count));
                  break;
               case count17:
                  dispatchEvent(new MemberEvents(MemberEvents.textString,count));
                  break;
               case count79:
                  dispatchEvent(new SceneEvents(SceneEvents.textString,count));
                  break;
               case count82:
                  dispatchEvent(new NoticiasEvents(NoticiasEvents.textString,count));
                  break;
               case count83:
                  dispatchEvent(new NotificacionesView(NotificacionesView.textString,count));
                  break;
               case count84:
                  dispatchEvent(new NPCEvents(NPCEvents.textString,count));
                  break;
               case count9:
                  this._uq13587(count);
                  break;
               case count10:
                  this._py6581(count);
                  break;
               case count12:
                  dispatchEvent(new AntitimosEvents(AntitimosEvents.textString,count));
                  break;
               case 250:
                  ExternalInterface.call("showSabioRing");
                  break;
               case 251:
                  ExternalInterface.call("showSabioCocos");
                  break;
               case 252:
                  ExternalInterface.call("showSabioSendero");
                  break;
               case 253:
                  ExternalInterface.call("showSabioBattle");
                  break;
               case 254:
                  ExternalInterface.call("showSabioCamino");
                  break;
               case 255:
                  ExternalInterface.call("showSabioSimon");
                  break;
               default:
                  ThunderboltModel.warn("Not classified frame from server",count);
            }
         }
      }
      
      private function move1(param1:ByteArray) : Array
      {
         var count:ByteArray = null;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         var count3:Array = new Array();
         param1.position = 0;
         while(param1.bytesAvailable != 0)
         {
            count7 = int(param1.readUnsignedByte());
            if(count7 == count6)
            {
               count1 = int(param1.position - 1);
            }
            else if(count7 == count5)
            {
               count2 = int(param1.position);
               count = new ByteArray();
               param1.position = count1;
               param1.readBytes(count,0,count2 - count1);
               count3.push(count);
            }
         }
         return count3;
      }
      
      private function move2(param1:ByteArray) : Array
      {
         var count:int = 0;
         var count3:Boolean = false;
         var count1:String = "";
         var count2:Array = new Array();
         while(!count3)
         {
            count = int(param1.readUnsignedByte());
            if(param1.position == param1.length)
            {
               count3 = true;
            }
            switch(count)
            {
               case count6:
                  count1 = "";
                  break;
               case count7:
                  count2.push(count1);
                  count1 = "";
                  break;
               case count5:
                  count1 = "";
                  break;
               default:
                  count1 += String.fromCharCode(count);
            }
         }
         return count2;
      }
      
      private function _uq13587(param1:Array) : void
      {
      }
      
      private function _am15027(param1:Array) : void
      {
         this.count106 = int(param1[1]);
         this.hashData(this.count106);
      }
      
      private function _py6581(param1:Array) : void
      {
      }
      
      public function _kx6292() : int
      {
         return this.count108;
      }
      
      private function _ve9503(param1:Array) : void
      {
         this.count106 = int(param1[1]);
         this.hashData1(this.count106);
      }
      
      public function getString1(param1:String) : String
      {
         return param1;
      }
      
      public function hashData(param1:int = 60) : void
      {
         this._cm1764 = new Timer(param1,0);
         this._cm1764.start();
         this._cm1764.addEventListener(TimerEvent.TIMER,this.handleSocket3);
         var count:ByteArray = new ByteArray();
         count.writeObject(this._cm1764);
         tontoelquelomodifique = MD5.hashBinary(count);
      }
      
      public function handleSocket3(param1:TimerEvent) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count49));
         if(this._cm1764 != null)
         {
            this._cm1764.stop();
            this._cm1764 = null;
         }
         this._er9795(count,1);
         (ServiceLocator.get(ServiceManager) as ServiceManager).loadResource("/ping");
         if(UserSession.getInstance() != null && UserSession.getInstance().id > 0)
         {
            ExternalInterface.call("checkWS");
         }
      }
      
      private function connect2(param1:ByteArray) : void
      {
         if(this.socket.connected)
         {
            if(param1.position != 0)
            {
               param1.position = 0;
            }
            this.socket.writeBytes(param1,0,param1.length);
            this.socket.flush();
         }
      }
      
      public function _er9795(param1:Array, param2:int) : void
      {
         var count3:String = param1.toString();
         var count1:ByteArray = this.handleSocket4(param1,param2);
         var count2:ByteArray = this.en5433(count1);
         this.move3(count2);
      }
      
      public function handleSocket4(param1:Array, param2:int) : ByteArray
      {
         var count1:String = null;
         var count2:int = 0;
         var count3:ByteArray = new ByteArray();
         count3.writeByte(count6);
         while(count2 < param2)
         {
            count1 = param1.shift();
            SocketManager._lw14951(count3,count1);
            count3.writeByte(count8);
            count2++;
         }
         count3.writeByte(count7);
         var count7:ByteArray = new ByteArray();
         while(param1.length > 0)
         {
            count1 = param1.shift();
            SocketManager._lw14951(count3,count1);
            if(count1.indexOf(String.fromCharCode(count8)) < 0)
            {
               count3.writeByte(count8);
            }
            count3.writeByte(count7);
         }
         count3.writeByte(count5);
         return count3;
      }
      
      public function move3(param1:ByteArray) : void
      {
         var _ph12098:ByteArray = param1;
         _ph12098.position = 0;
         if(this.isEnabled)
         {
            _ph12098.position = 0;
         }
         try
         {
            this.connect2(_ph12098);
         }
         catch(err:IOError)
         {
            ThunderboltModel.error("Error when writing to socket",err);
            handleSocket6();
         }
      }
      
      private function en5433(param1:ByteArray) : ByteArray
      {
         if(this._op34013 == null)
         {
            return param1;
         }
         this._op34013._qw34210(param1);
         return param1;
      }
      
      private function de5433(param1:ByteArray) : ByteArray
      {
         if(this._ka92313 == null)
         {
            return param1;
         }
         this._ka92313._vx09345(param1);
         return param1;
      }
      
      private function closeHandler(param1:Event) : void
      {
         this.handleSocket6();
      }
      
      private function _st6990(param1:Event) : void
      {
         if(this._xa6146 != uint.MAX_VALUE)
         {
            clearInterval(this._xa6146);
            this._xa6146 = uint.MAX_VALUE;
         }
         this.count108 = count102;
         this.count108 = count104;
         dispatchEvent(new Event(urlString));
         this._rc40001();
      }
      
      public function _rc40001() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(233));
         count2.push(String.fromCharCode(34));
         this._er9795(count2,2);
      }
      
      private function generateRandomHexString(param1:uint = 16) : String
      {
         return "AAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
      }
      
      private function handleInitCryptoMessage(param1:String, param2:String) : String
      {
         var testingClientPublicKey:String = null;
         var encryptedPrime:ByteArray = null;
         var encryptedGenerator:ByteArray = null;
         var primeBytes:ByteArray = null;
         var generatorBytes:ByteArray = null;
         var prime:BigInteger = null;
         var generator:BigInteger = null;
         var minimumPrime:BigInteger = null;
         var ClientPublicKey:String = null;
         var temp:int = 0;
         var testingClientPrivateKey:String = null;
         var ClientPublicKeyEncoded:ByteArray = null;
         var ClientPublicKeyEncodedEncryted:ByteArray = null;
         var urlString6:String = param1;
         var urlString8:String = param2;
         var hash:String = "";
         try
         {
            encryptedPrime = new ByteArray();
            encryptedGenerator = new ByteArray();
            encryptedPrime.writeBytes(CryptoTools.hexStringToByteArray(urlString6));
            encryptedGenerator.writeBytes(CryptoTools.hexStringToByteArray(urlString8));
            primeBytes = new ByteArray();
            generatorBytes = new ByteArray();
            this.vRSAKey = RSAKey.parsePublicKey(Constants.RSA_MODULUS,Constants.RSA_EXPONENT);
            this.vRSAKey.verify(encryptedPrime,primeBytes,encryptedPrime.length);
            this.vRSAKey.verify(encryptedGenerator,generatorBytes,encryptedGenerator.length);
            prime = new BigInteger(primeBytes.toString(),10);
            generator = new BigInteger(generatorBytes.toString(),10);
            minimumPrime = BigInteger.nbv(2);
            if(prime.compareTo(minimumPrime) <= 0 || generator.compareTo(prime) >= 0)
            {
               return;
            }
            if(prime.equals(generator))
            {
               return;
            }
            this.vKeyExchanger = new KeyExchange(prime,generator);
            temp = 1000;
            while(temp > 0)
            {
               testingClientPrivateKey = this.generateRandomHexString(30);
               this.vKeyExchanger.init(testingClientPrivateKey);
               testingClientPublicKey = this.vKeyExchanger.getPublicKey(10);
               if(testingClientPublicKey.length >= 64)
               {
                  ClientPublicKey = testingClientPublicKey;
                  this.vPrivateKey = testingClientPrivateKey;
                  break;
               }
               if(ClientPublicKey == null || testingClientPublicKey.length > ClientPublicKey.length)
               {
                  ClientPublicKey = testingClientPublicKey;
                  this.vPrivateKey = testingClientPrivateKey;
               }
               temp--;
            }
            if(testingClientPrivateKey != this.vPrivateKey)
            {
               this.vKeyExchanger.init(this.vPrivateKey);
            }
            ClientPublicKeyEncoded = new ByteArray();
            ClientPublicKeyEncodedEncryted = new ByteArray();
            ClientPublicKeyEncoded.writeMultiByte(ClientPublicKey,"iso-8859-1");
            this.vRSAKey.encrypt(ClientPublicKeyEncoded,ClientPublicKeyEncodedEncryted,ClientPublicKeyEncoded.length);
            hash = CryptoTools.byteArrayToHexString(ClientPublicKeyEncodedEncryted);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
         return hash;
      }
      
      public function initialize(param1:Array) : void
      {
         var count:String = String(param1[1]);
         var count3:String = String(param1[2]);
         var count1:String = this.handleInitCryptoMessage(count,count3);
         var count2:Array = new Array();
         count2.push(String.fromCharCode(233));
         count2.push(String.fromCharCode(36));
         count2.push(count1);
         this._er9795(count2,2);
      }
      
      private function handleCompleteDiffieHandshake(param1:String) : void
      {
         var count:ByteArray = new ByteArray();
         var count3:ByteArray = new ByteArray();
         count.writeBytes(CryptoTools.hexStringToByteArray(param1));
         this.vRSAKey.verify(count,count3,count.length);
         this.vRSAKey.dispose();
         this.vKeyExchanger.generateSharedKey(count3.toString(),10);
         var count1:String = this.vKeyExchanger.getSharedKey(16).toUpperCase();
         if(!this.vKeyExchanger.isValidServerPublicKey() || !this.vKeyExchanger.isValidSharedKey())
         {
            return;
         }
         var count2:ByteArray = CryptoTools.hexStringToByteArray(count1);
         count2.position = 0;
         this.urlString3 = this.urlString4;
         var count7:ByteArray = new ByteArray();
         if(Configuration.isEnabled6)
         {
            count7.writeMultiByte("beta","iso-8859-1");
         }
         else
         {
            count7.writeMultiByte(count2.toString(),"iso-8859-1");
         }
         this.urlString4 = count2.toString();
         this._ka92313 = new _fg09343(count7);
         this._op34013 = new _fg09343(count7);
         this.handleSocket3(null);
         this.handleSocket5(Configuration.ticketsso);
      }
      
      public function _rc40003(param1:Array) : void
      {
         var count:String = String(param1[1]);
         this.handleCompleteDiffieHandshake(count);
      }
      
      public function handleSocket5(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count81));
         count.push(String.fromCharCode(CryptoEventDispatcher.count1));
         count.push(param1);
         this._er9795(count,2);
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         if(this.count108 == count101)
         {
            this._yy15839();
         }
         else
         {
            this.handleSocket6();
         }
      }
      
      public function hashData1(param1:int = 60) : void
      {
         this._cm1764 = new Timer(count1,0);
         this._cm1764.start();
         this._cm1764.addEventListener(TimerEvent.TIMER,this.handleSocket3);
         var count:ByteArray = new ByteArray();
         count.writeObject(this._cm1764);
         InterfazController.textString15 = MD5.hashBinary(count) + "f46h";
      }
      
      private function _gj9108(param1:SecurityErrorEvent) : void
      {
         ThunderboltModel.error("Security error",param1);
      }
      
      private function _oq5189(param1:ProgressEvent) : void
      {
         this.handleSocket1();
      }
      
      private function handleSocket6() : void
      {
         if(!this.isEnabled2)
         {
            dispatchEvent(new BaneosEvents(BaneosEvents.textString,[String.fromCharCode(SocketManager.count36)]));
         }
      }
      
      public function close() : void
      {
         if(this.socket.connected)
         {
            try
            {
               this.isEnabled2 = true;
               this.handleSocket();
               this.socket.close();
            }
            catch(err:IOError)
            {
               ThunderboltModel.error("Error when closing socket",err);
            }
         }
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
