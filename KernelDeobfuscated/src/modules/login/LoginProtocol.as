package src.modules.login
{
   import flash.events.EventDispatcher;
   import src.allData.color.ColorModel;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class LoginProtocol extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = -1;
      
      public static const count1:int = 0;
      
      public static const count2:int = 0;
      
      public static const count3:int = 1;
      
      public static const count4:int = 2;
      
      public static const count5:int = 3;
      
      public static const count6:int = 4;
      
      public static const count7:int = 136;
      
      public static const count8:int = 139;
      
      public static const count9:int = 131;
      
      public static const count10:int = 120;
      
      public static const count11:int = 1;
      
      public static const count12:int = 0;
      
      public static const count13:int = -1;
      
      public static const count14:int = 123;
      
      public static const count15:int = 130;
      
      public static const count16:int = 138;
      
      public static const count17:int = 137;
      
      public static const count18:int = 0;
      
      public static const count19:int = 1;
      
      public static const count20:int = 2;
      
      public static const count21:int = 133;
      
      public static const count22:int = 134;
      
      public static const count23:int = 132;
      
      public static const count24:int = 141;
      
      public static const count25:int = 142;
      
      public static const count26:int = 143;
      
      public static const count27:int = 144;
      
      private var _gh9645:SocketManager;
      
      public function LoginProtocol()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(LoginEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:uint = uint(String(count[1]).charCodeAt(0));
         switch(count3)
         {
            case MessageTypeConstants.count2:
            case count8:
            case count9:
            case count27:
               dispatchEvent(new LoginEvents(LoginEvents.textString,count));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
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
      
      public function handleSocket(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         var count1:String = this.multiuser.getString1(param2);
         count3.push(String.fromCharCode(SocketManager.count11));
         count3.push(String.fromCharCode(MessageTypeConstants.count2));
         count3.push(param1);
         count3.push(count1);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket1(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count11));
         count.push(String.fromCharCode(count8));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket2(param1:ColorModel, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count11));
         count3.push(String.fromCharCode(count23));
         count3.push(param1.getString());
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket3(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count11));
         count3.push(String.fromCharCode(count27));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function _ok6924(param1:String, param2:String, param3:uint, param4:Array, param5:uint, param6:String, param7:String, param8:String, param9:String) : void
      {
         var count:uint = 0;
         var count10:String = null;
         var count16:int = 0;
         var textString12:Array = new Array();
         var isEnabled:String = this.multiuser.getString1(param2);
         var textString14:* = "";
         while(count16 < 7)
         {
            count = uint(param4[count16]);
            count10 = count.toString(16);
            while(count10.length < 6)
            {
               count10 = "0" + count10;
            }
            textString14 += count10.toUpperCase();
            count16++;
         }
         textString12.push(String.fromCharCode(SocketManager.count11));
         textString12.push(String.fromCharCode(LoginProtocol.count9));
         textString12.push(param1);
         textString12.push(isEnabled);
         textString12.push(param3);
         textString12.push(textString14);
         textString12.push(param5);
         textString12.push(param6);
         textString12.push(param7);
         textString12.push(param8);
         textString12.push(param9);
         this.multiuser._er9795(textString12,2);
      }
   }
}

