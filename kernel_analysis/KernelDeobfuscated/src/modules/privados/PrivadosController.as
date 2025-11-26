package src.modules.privados
{
   import flash.events.EventDispatcher;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.skins.managerObjectSkineables.ManagerobjectskineablesController;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class PrivadosController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 121;
      
      public static const count1:int = 136;
      
      public static const count2:int = 140;
      
      public static const count3:int = 142;
      
      public static const count4:int = 143;
      
      public static const count5:int = 144;
      
      public static const count6:int = 145;
      
      public static const count7:int = 146;
      
      public static const count8:int = 147;
      
      public static const count9:int = 138;
      
      public static const count10:int = 152;
      
      public static const count11:int = 153;
      
      public static const count12:int = 154;
      
      public static const count13:int = 155;
      
      public static const count14:int = 156;
      
      public static const count15:int = 157;
      
      public static const count16:int = 158;
      
      public static const count17:int = 159;
      
      public static const count18:int = 160;
      
      public static const count19:int = 161;
      
      public static const count20:int = 162;
      
      public static const count21:int = 163;
      
      public static const count22:int = 163;
      
      public static const count23:int = 164;
      
      public static const count24:int = 170;
      
      public static const count25:int = 171;
      
      public static const count26:int = 172;
      
      public static const count27:int = 165;
      
      public static const count28:int = 183;
      
      public static const count29:int = 173;
      
      public static const count30:int = 174;
      
      public static const count31:int = 175;
      
      public static const count32:int = 184;
      
      public static const count33:int = 185;
      
      public static const count34:int = 120;
      
      public static const count35:int = 121;
      
      public static const count36:int = 166;
      
      public static const count37:int = 167;
      
      public static const count38:int = 168;
      
      public static const count39:int = 170;
      
      public static const count40:int = 120;
      
      public static const count41:int = 121;
      
      public static const count42:int = 122;
      
      public static const count43:int = 186;
      
      private var _gh9645:SocketManager;
      
      public function PrivadosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(PrivadosEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count1:Array = param1.items;
         count = uint(String(count1[0]).charCodeAt(0));
         switch(count)
         {
            case SocketManager.count67:
               var count3:uint = uint(String(count1[1]).charCodeAt(0));
               switch(0)
               {
                  case count1:
                  case count3:
                  case count4:
                  case count5:
                  case count6:
                  case count7:
                  case count15:
                  case count16:
                  case count17:
                  case count13:
                  case count14:
                  case count18:
                  case count19:
                  case count:
                  case count10:
                  case count11:
                  case count12:
                  case count9:
                  case count20:
                  case count23:
                  case count24:
                  case count36:
                  case count37:
                  case count38:
                  case count2:
                  case count25:
                  case count26:
                  case count29:
                  case count30:
                  case count31:
                  case count32:
                  case count33:
                  case MessageTypeConstants.count47:
                     dispatchEvent(new PrivadosEvents(PrivadosEvents.textString,count1));
               }
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(PrivadosEvents.textString,this.authenticateUser);
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
      
      public function handleSocket1(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count2));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket2(param1:String, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count7));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket3(param1:String, param2:String, param3:int) : void
      {
         param1 = "00000" + (param3 + 1) + param1;
         param2 = "1,1,100," + param2;
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count7));
         count1.push(param1);
         count1.push(param2);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket4(param1:int, param2:String, param3:String, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count67));
         count2.push(String.fromCharCode(count3));
         count2.push(param1);
         count2.push(param2);
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket5(param1:int, param2:int, param3:int, param4:int, param5:String, param6:int, param7:int) : void
      {
         var count8:Array = new Array();
         count8.push(String.fromCharCode(SocketManager.count67));
         count8.push(String.fromCharCode(count4));
         count8.push(param1);
         count8.push(param2);
         count8.push(param3);
         count8.push(param4);
         count8.push(param5);
         count8.push(CatobjectsController.getString(param6));
         count8.push(param7);
         this.multiuser._er9795(count8,2);
      }
      
      public function handleSocket6(param1:int, param2:int, param3:int, param4:int, param5:String, param6:int, param7:int) : void
      {
         var count8:Array = new Array();
         count8.push(String.fromCharCode(SocketManager.count67));
         count8.push(String.fromCharCode(count5));
         count8.push(param1);
         count8.push(param2);
         count8.push(param3);
         count8.push(param4);
         count8.push(param5);
         count8.push(CatobjectsController.getString(param6));
         count8.push(param7);
         this.multiuser._er9795(count8,2);
      }
      
      public function handleSocket7(param1:int, param2:int, param3:int, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count67));
         count2.push(String.fromCharCode(count6));
         count2.push(param1);
         count2.push(param2);
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket8(param1:int, param2:int, param3:int, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count67));
         count2.push(String.fromCharCode(count1));
         count2.push(param1);
         count2.push(param2);
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket9(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count15));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function sendMsgFireObj(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count16));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgTopoObj(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count17));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgFroggyObj(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count19));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgAccionGenerica(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count23));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket10(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count43));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgPerfumar(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count24));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function sendMsgLoroObj(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count13));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgLoroUpdateObj(param1:int, param2:int, param3:String) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count14));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket11(param1:int, param2:String, param3:int, param4:String, param5:String) : void
      {
         var count7:Array = new Array();
         count7.push(String.fromCharCode(SocketManager.count67));
         count7.push(String.fromCharCode(count));
         count7.push(param1);
         count7.push(param2);
         count7.push("1");
         count7.push("5");
         count7.push("3");
         count7.push("");
         count7.push(param3);
         count7.push(param4);
         count7.push(param5);
         this.multiuser._er9795(count7,2);
      }
      
      public function handleSocket12(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count18));
         count3.push(String.fromCharCode(count40));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,3);
      }
      
      public function sendMsgMascotaAction(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count18));
         count3.push(String.fromCharCode(count41));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,3);
      }
      
      public function handleSocket13(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count10));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket14(param1:int, param2:String) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count11));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket15(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count8));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgActivarCajita(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count21));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function sendMsgActivarSacoMonedas(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count22));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function sendMsgMontableMontarUsuario(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count36));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function sendMsgMontableDesmontarUsuario(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count37));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function sendMsgMontableMover(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count38));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function sendMsgNoriaRotacion(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count25));
         count3.push(String.fromCharCode(count34));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,3);
      }
      
      public function sendMsgNoriaVelocidad(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count25));
         count3.push(String.fromCharCode(count35));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,3);
      }
      
      public function handleSocket16(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count27));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket17(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count28));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket18(param1:ManagerobjectskineablesController) : void
      {
         var count:Array = ColorModel._pd3865(param1.colors);
         var count3:Array = SocketManager.getList(count);
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count30));
         count1.push(param1.count);
         count1.push(param1.count1);
         count1.push((param1.items as Array).toString());
         count1.push((param1.items1 as Array).toString());
         count1.push(count3[0]);
         count1.push(count3[1]);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket19(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count31));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
   }
}

