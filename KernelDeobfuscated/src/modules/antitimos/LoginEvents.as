package src.modules.antitimos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class LoginEvents extends EventDispatcher implements ModuleManager
   {
      
      public static const count14:int = 123;
      
      public static const count15:int = 130;
      
      public static const count7:int = 136;
      
      public static const count3:int = 125;
      
      public static const count4:int = 132;
      
      public static const count5:int = 137;
      
      public static const count6:int = 138;
      
      public static const count7:int = 139;
      
      public static const count8:int = 140;
      
      public static const count9:int = 126;
      
      public static const count10:int = 133;
      
      public static const count11:int = 127;
      
      public static const count12:int = 134;
      
      public static const count13:int = 128;
      
      public static const count14:int = 135;
      
      public static const count15:int = 124;
      
      public static const count16:int = 131;
      
      public static const count17:int = 122;
      
      public static const count18:int = 129;
      
      public static const count19:int = 120;
      
      public static const count20:int = 121;
      
      public static const count21:int = 121;
      
      public static const count22:int = 141;
      
      public static const count23:int = 142;
      
      public static const count24:int = 0;
      
      public static const count25:int = 1;
      
      public static const count26:int = -1;
      
      public static const count27:int = 0;
      
      public static const count28:int = 1;
      
      public static const count29:int = -1;
      
      public static const count30:int = 0;
      
      public static const count31:int = 1;
      
      public static const count32:int = -1;
      
      public static const count33:int = 0;
      
      public static const count34:int = 1;
      
      public static const count35:int = -1;
      
      public static const count36:int = 0;
      
      public static const count37:int = 1;
      
      public static const count38:int = -1;
      
      public static const count39:int = 0;
      
      public static const count40:int = 1;
      
      public static const count41:int = -1;
      
      public static const count42:int = 0;
      
      public static const count43:int = 1;
      
      public static const count44:int = -1;
      
      public static const count45:int = 0;
      
      public static const count46:int = 1;
      
      public static const count47:int = -1;
      
      public static const count48:int = 0;
      
      public static const count49:int = 1;
      
      public static const count50:int = -1;
      
      public static const count51:int = 0;
      
      public static const count52:int = 1;
      
      public static const count53:int = -1;
      
      public static const count54:int = 0;
      
      public static const count55:int = 1;
      
      public static const count56:int = -1;
      
      public static const count57:int = 0;
      
      public static const count58:int = 1;
      
      public static const count59:int = -1;
      
      public static const count60:int = 0;
      
      public static const count61:int = 1;
      
      public static const count62:int = -1;
      
      public static const count63:int = 0;
      
      public static const count64:int = 1;
      
      public static const count65:int = -1;
      
      public static const count66:int = 0;
      
      public static const count67:int = 1;
      
      public static const count68:int = -1;
      
      public static const count69:int = 0;
      
      public static const count70:int = 1;
      
      public static const count71:int = -1;
      
      public static const count72:int = 0;
      
      public static const count73:int = 1;
      
      public static const count74:int = -1;
      
      public static const count75:int = 0;
      
      public static const count76:int = 1;
      
      public static const count77:int = -1;
      
      private var _gh9645:SocketManager;
      
      public function LoginEvents()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(AntitimosEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         dispatchEvent(new AntitimosEvents(AntitimosEvents.textString,param1.items));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(AntitimosEvents.textString,this.authenticateUser);
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
      
      public function authenticateUser2(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count14));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket1(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count15));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket2(param1:String, param2:String) : void
      {
         var count3:String = this.multiuser.getString1(param2);
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count12));
         count1.push(String.fromCharCode(count7));
         count1.push(param1);
         count1.push(count3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket3(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count3));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket4(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count4));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket5(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count8));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket6(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count7));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket7(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count6));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket8(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         var count1:String = this.multiuser.getString1(param2);
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count5));
         count3.push(param1);
         count3.push(count1);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket9(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count9));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket10(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count10));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket11(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count11));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket12(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count12));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket13(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count13));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket14(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count14));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function _bx11709() : void
      {
      }
      
      public function _ex14517(param1:String) : void
      {
      }
      
      public function handleSocket15(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count15));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket16(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count16));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket17(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count17));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket18(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count12));
         count3.push(String.fromCharCode(count18));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket19(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count21));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket20(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count22));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket21(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count12));
         count.push(String.fromCharCode(count23));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
   }
}

