package src.modules.interfaz
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.modules.chooseScene.managerBanners.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class InterfazController extends EventDispatcher implements ModuleManager
   {
      
      public static var textString:String;
      
      public static var textString1:String;
      
      public static var textString2:String;
      
      public static var textString3:String;
      
      public static var textString4:String;
      
      public static var textString5:String;
      
      public static var textString6:String;
      
      public static var textString7:String;
      
      public static var textString8:String;
      
      public static var textString9:String;
      
      public static var textString10:String;
      
      public static var textString11:String;
      
      public static var textString12:String;
      
      public static var textString13:String;
      
      public static var textString14:String;
      
      public static var textString15:String;
      
      public static var textString16:String;
      
      public static var textString17:String;
      
      public static var textString18:String;
      
      public static var textString19:String;
      
      public static var textString20:String;
      
      public static var textString21:String;
      
      private var _gh9645:SocketManager;
      
      public function InterfazController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(InterfazEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:uint = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count24:
            case SocketManager.count62:
            case SocketManager.count37:
            case MessageTypeConstants.count76:
            case SocketManager.count26:
            case SocketManager.count85:
            case SocketManager.count42:
            case SocketManager.count43:
            case SocketManager.count53:
            case SocketManager.count41:
            case SocketManager.count44:
            case SocketManager.count25:
            case SocketManager.count28:
            case SocketManager.count29:
            case SocketManager.count45:
            case SocketManager.count35:
            case SocketManager.count33:
            case SocketManager.count39:
            case SocketManager.count38:
            case SocketManager.count59:
            case SocketManager.count16:
            case SocketManager.count23:
            case SocketManager.count51:
            case SocketManager.count20:
            case SocketManager.count21:
            case SocketManager.count32:
               dispatchEvent(new InterfazEvents(InterfazEvents.textString,count));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(InterfazEvents.textString,this.authenticateUser);
         this.multiuser = null;
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function handleSocket1(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count24));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket2(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(SocketManager.tontoelquelomodifique);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket3(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count20));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function handleSocket4(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count21));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function handleSocket5(param1:int) : void
      {
         ManagerbannersController.getInstance().show();
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count85));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function handleSocket6(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count35));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket7(param1:int, param2:int, param3:String) : void
      {
         var count1:Array = new Array();
         if(param1 == 0)
         {
            count1.push(String.fromCharCode(SocketManager.count42));
         }
         else
         {
            count1.push(String.fromCharCode(SocketManager.count43));
         }
         count1.push(param2 + 1);
         count1.push(param3);
         this.multiuser._er9795(count1,1);
      }
      
      public function handleSocket8() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count53));
         this.multiuser._er9795(count2,1);
      }
      
      public function handleSocket9(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count41));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,1);
      }
      
      public function handleSocket10(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count44));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function _dt13215(param1:int, param2:String, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(MessageTypeConstants.count76));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,1);
      }
      
      public function handleSocket11(param1:int, param2:int, param3:String, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count26));
         count2.push(SocketManager.getString([param2,param1]));
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,1);
      }
      
      public function _whisperGroup(param1:int, param2:String, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(137));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,1);
      }
      
      public function handleSocket12(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count25));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket13(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket14(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count16));
         count.push(String.fromCharCode(MessageTypeConstants.count17));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket15() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count16));
         count2.push(String.fromCharCode(MessageTypeConstants.count18));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket16() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count23));
         count2.push(String.fromCharCode(MessageTypeConstants.count26));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket17(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count23));
         count.push(String.fromCharCode(MessageTypeConstants.count25));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket18(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket19(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket20(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket21(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket22(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString16);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket23(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString12);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket24(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString15);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket25(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString3);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket26(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket27(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString1);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket28(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString17);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket29(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket30(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString3);
         this.multiuser._er9795(count3,1);
      }
      
      public function show(param1:int) : void
      {
         ManagerbannersController.getInstance().show();
         var count:Array = new Array();
         count.push(String.fromCharCode(211));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function handleSocket31(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString21);
         this.multiuser._er9795(count3,1);
      }
      
      public function handleSocket32(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count62));
         count3.push(param2);
         count3.push(textString19);
         this.multiuser._er9795(count3,1);
      }
   }
}

