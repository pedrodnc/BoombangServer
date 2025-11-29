package src.modules.chooseScene
{
   import flash.events.EventDispatcher;
   import flash.external.*;
   import src.modules.*;
   import src.modules.interfaz.*;
   import src.modules.login.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class ChoosesceneController extends EventDispatcher implements ModuleManager
   {
      
      private var vJS:String = ExternalInterface.call("fJS");
      
      private var _gh9645:SocketManager;
      
      private var textString:String = InterfazController.textString15;
      
      public function ChoosesceneController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(IslandChooser.textString,this.authenticateUser);
         this.multiuser.addEventListener(LoginEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count = uint(String(count3[0]).charCodeAt(0));
         switch(count)
         {
            case SocketManager.count40:
            case SocketManager.count66:
            case SocketManager.count71:
            case SocketManager.count69:
            case SocketManager.count73:
            case SocketManager.count72:
               dispatchEvent(new IslandChooser(IslandChooser.textString,count3));
               return;
            case SocketManager.count11:
               dispatchEvent(new LoginEvents(LoginEvents.textString,count3));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(IslandChooser.textString,this.authenticateUser);
         this.multiuser.removeEventListener(LoginEvents.textString,this.authenticateUser);
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
      
      public function authenticateUser(param1:String, param2:Array) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count11));
         count3.push(String.fromCharCode(LoginProtocol.count16));
         count3.push(param1);
         count3.push(SocketManager.getString(param2));
         this.multiuser._er9795(count3,2);
      }
      
      public function authenticateUser1() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count11));
         count2.push(String.fromCharCode(LoginProtocol.count17));
         this.multiuser._er9795(count2,2);
      }
      
      public function authenticateUser2() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count11));
         count2.push(String.fromCharCode(LoginProtocol.count26));
         count2.push(LoginProtocol.count26);
         count2.push(InterfazController.textString15);
         count2.push(this.vJS);
         this.multiuser._er9795(count2,2);
      }
      
      public function authenticateUser3(param1:String, param2:int, param3:Boolean) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count11));
         count1.push(String.fromCharCode(LoginProtocol.count21));
         count1.push(param2);
         count1.push(param1);
         if(param3)
         {
            count1.push("1");
         }
         else
         {
            count1.push("0");
         }
         this.multiuser._er9795(count1,2);
      }
      
      public function authenticateUser4() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count11));
         count2.push(String.fromCharCode(LoginProtocol.count24));
         count2.push(this.textString);
         this.multiuser._er9795(count2,2);
      }
      
      public function authenticateUser5(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count11));
         count.push(String.fromCharCode(LoginProtocol.count25));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function authenticateUser6() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count11));
         count2.push(String.fromCharCode(MessageTypeConstants.count2));
         count2.push(String.fromCharCode(LoginProtocol.count10));
         this.multiuser._er9795(count2,3);
      }
      
      public function _ho11227(param1:String, param2:String, param3:String, param4:int, param5:Array, param6:String, param7:String, param8:Boolean, param9:String, param10:int, param11:int, param12:String, param13:Array, param14:Array, param15:String, param16:String, param17:String) : void
      {
         var count19:uint = 0;
         var count20:String = null;
         var count23:int = 0;
         var count21:String = this.multiuser.getString1(param3);
         var count22:* = "";
         while(count23 < 7)
         {
            count19 = uint(param5[count23]);
            count20 = count19.toString(16);
            while(count20.length < 6)
            {
               count20 = "0" + count20;
            }
            count22 += count20.toUpperCase();
            count23++;
         }
         var count24:Array = new Array();
         count24.push(String.fromCharCode(SocketManager.count11));
         count24.push(String.fromCharCode(LoginProtocol.count9));
         count24.push(param1);
         count24.push(param2);
         count24.push(count21);
         count24.push(param4);
         count24.push(count22);
         count24.push(param6);
         count24.push(param7);
         if(param8)
         {
            count24.push("1");
         }
         else
         {
            count24.push("0");
         }
         count24.push(param9);
         count24.push(param10);
         count24.push(param11);
         count24.push(param12);
         count24.push(param13[0]);
         count24.push(param13[1]);
         count24.push(param13[2]);
         count24.push(param14[0]);
         count24.push(param14[1]);
         count24.push(param14[2]);
         count24.push(param15);
         count24.push(param16);
         count24.push(param17);
         this.multiuser._er9795(count24,2);
      }
   }
}

