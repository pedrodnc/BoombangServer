package src.modules.login.choosePerson
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.config.*;
   import src.utils.*;
   
   public class ChoosepersonController extends EventDispatcher
   {
      
      public static const textString:String = "selectPerson";
      
      public static const textString1:String = "userOk";
      
      public static const textString2:String = "invisible";
      
      public static const textString3:String = "color01";
      
      public static const textString4:String = "color02";
      
      public static const textString5:String = "color03";
      
      public static const textString6:String = "color04";
      
      public static const textString7:String = "color05";
      
      public static const textString8:String = "color06";
      
      public static const textString9:String = "color01ok";
      
      public static const textString10:String = "color02ok";
      
      public static const textString11:String = "color03ok";
      
      public static const textString12:String = "color04ok";
      
      public static const textString13:String = "color05ok";
      
      public static const textString14:String = "color06ok";
      
      public static const textString15:String = "startGod";
      
      public static const textString16:String = "terminos";
      
      public static const textString17:String = "terminos2";
      
      public static const textString18:String = "terminosError";
      
      public static const textString19:String = "sleep";
      
      public static const textString20:String = "rellenar";
      
      public static const textString21:String = "passNum";
      
      public static const textString22:String = "passError";
      
      public static const textString23:String = "passFacil";
      
      public static const textString24:String = "nameExist";
      
      public static const textString25:String = "nameExist2";
      
      public static const textString26:String = "verificando";
      
      public static const textString27:String = "nameDisponible";
      
      public static const textString28:String = "menorEdad";
      
      public static const textString29:String = "emailError";
      
      public static const textString30:String = "emailInvalido";
      
      public static const textString31:String = "edadIncorrecta";
      
      private static const textString32:String = "txt";
      
      private static const textString33:String = "txt1";
      
      private static const textString34:String = "txt2";
      
      private static const textString35:String = "btnOk";
      
      private static const textString36:String = "mcCarita";
      
      private static const textString:String = "mcButton";
      
      private static const textString38:String = "ingName";
      
      private var _og11710:MovieClip;
      
      private var isEnabled:Boolean;
      
      private var _vg1643:ChoosepersonModel;
      
      public var _lv12660:Function;
      
      public var _ey15606:Function;
      
      public var _ut5441:Function;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var count:int;
      
      public function ChoosepersonController(param1:MovieClip, param2:Function, param3:Function, param4:Function)
      {
         super();
         this._vg1643 = new ChoosepersonModel();
         this._og11710 = param1;
         this._lv12660 = param2;
         this._ey15606 = param3;
         this._ut5441 = param4;
         StringUtils._dp2863(param1,this._pk6768);
         this.isEnabled = false;
         var count2:ChoosepersonModel = this._vg1643;
         this.items = new Array();
         this.items.push([count2.textString11,count2.textString11,count2.textString6,count2.textString11,"","",count2.textString11,count2.textString11,count2.textString11,count2.textString11,count2.textString12]);
         this.items.push([count2.textString13,count2.textString7,count2.textString7,count2.textString7,count2.textString19,count2.textString13,count2.textString23,count2.textString25,count2.textString13,count2.textString13,count2.textString16]);
         this.items.push([count2.textString14,count2.textString15,count2.textString22,count2.textString17,count2.textString20,count2.textString15,count2.TOP,count2.textString26,count2.SHORT,count2.textString22,count2.textString22]);
         this.items.push([count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9,count2.textString9]);
         this.items.push([count2.SHORT,count2.textString16,count2.textString10,count2.textString18,count2.textString21,count2.textString22,count2.textString24,count2.textString27,count2.textString28,count2.SHORT,count2.textString30]);
         this.items1 = new Array();
         this.items1.push([count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4]);
         this.items1.push([count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4]);
         this.items1.push([count2.textString4,count2.textString5,count2.textString4,count2.textString4,count2.textString5,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4]);
         this.items1.push([count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4]);
         this.items1.push([count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString4,count2.textString5,count2.textString5,count2.textString5]);
      }
      
      public function destroy() : void
      {
         StringUtils._ff5056(this._og11710);
         this._ua8320();
         this.move();
      }
      
      public function _ro12706() : Boolean
      {
         return this.isEnabled;
      }
      
      public function _gb8984(param1:int) : void
      {
         this.count = param1;
      }
      
      private function _pk6768() : void
      {
         switch(this._og11710.currentLabel)
         {
            case textString:
               this.isEnabled = true;
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               this.stop(textString);
               return;
            case textString9:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString3);
               return;
            case textString10:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString4);
               return;
            case textString11:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString5);
               return;
            case textString12:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString6);
               return;
            case textString13:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString7);
               return;
            case textString14:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString8);
               return;
            case textString17:
               StringUtils._dp2863(MovieClip(this._og11710[textString32]),this._vb2616);
               MovieClip(this._og11710[textString32]).gotoAndPlay(textString16);
               return;
            default:
               return;
         }
      }
      
      private function _vb2616() : void
      {
         switch(MovieClip(this._og11710[textString32]).currentLabel)
         {
            case textString:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.textString1);
               return;
            case textString1:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this._vg1643.textString2);
               UtilsUtils._xl9503(this._og11710[textString32][textString35][textString33],this._vg1643.textString3);
               if(Configuration.urlString9 == Configuration.urlString7)
               {
                  UtilsUtils._xc14382(TextField(this._og11710[textString32][textString35][textString33]),14);
                  TextField(this._og11710[textString32][textString35][textString33]).y = TextField(this._og11710[textString32][textString35][textString33]).y + 6;
               }
               MovieClip(this._og11710[textString32][textString35][textString36]).visible = false;
               this._wt564();
               return;
            case textString3:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this.items1[0][this.count - 1]);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this.items[0][this.count - 1]);
               return;
            case textString4:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this.items1[1][this.count - 1]);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this.items[1][this.count - 1]);
               return;
            case textString5:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this.items1[2][this.count - 1]);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this.items[2][this.count - 1]);
               return;
            case textString6:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this.items1[3][this.count - 1]);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this.items[3][this.count - 1]);
               return;
            case textString7:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this.items1[4][this.count - 1]);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this.items[4][this.count - 1]);
               return;
            case textString8:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this.items1[5][this.count - 1]);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this.items[5][this.count - 1]);
               return;
            case textString16:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this._vg1643.textString39);
               return;
            case textString18:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this._vg1643.textString40);
               UtilsUtils._xl9503(this._og11710[textString32][textString34],this._vg1643.textString41);
               return;
            case textString20:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.textString47);
               return;
            case textString21:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.textString48);
               return;
            case textString22:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.textString49);
               return;
            case textString23:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.textString55);
               return;
            case textString25:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.textString51);
               return;
            case textString26:
               UtilsUtils._xl9503(this._og11710[textString32][textString32][textString33],this._vg1643.textString52);
               return;
            case textString27:
               UtilsUtils._xl9503(this._og11710[textString32][textString33],this._vg1643.textString53);
               return;
            case textString28:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.count8);
               return;
            case textString29:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.count9);
               return;
            case textString30:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.count11);
               return;
            case textString31:
               UtilsUtils._bj8346(this._og11710[textString32][textString33],this._vg1643.count12);
               return;
            default:
               return;
         }
      }
      
      public function _bx5761(param1:String) : void
      {
         this._pq3328();
         this._og11710.gotoAndPlay(param1);
      }
      
      public function stop(param1:String) : void
      {
         this._pq3328();
         this._og11710[textString32].gotoAndStop(param1);
      }
      
      private function _pq3328() : void
      {
         this._og11710.visible = true;
      }
      
      private function _wd13584() : void
      {
         this._og11710.visible = false;
      }
      
      private function _ua8320() : void
      {
         if(MovieClip(this._og11710[textString32]) != null)
         {
            StringUtils._ff5056(MovieClip(this._og11710[textString32]));
         }
      }
      
      public function _xd12761() : void
      {
         this._ua8320();
         this._wd13584();
      }
      
      private function _rl15041(param1:MouseEvent) : void
      {
         this._ut5441(null);
      }
      
      private function _wy14818(param1:MouseEvent) : void
      {
         MovieClip(param1.currentTarget[textString36]).visible = true;
         this._lv12660(null);
      }
      
      private function _lw5887(param1:MouseEvent) : void
      {
         MovieClip(param1.currentTarget[textString36]).visible = false;
         this._ey15606(null);
      }
      
      private function _wt564() : void
      {
         MovieClip(this._og11710[textString32][textString35]).addEventListener(MouseEvent.MOUSE_DOWN,this._rl15041);
         MovieClip(this._og11710[textString32][textString35]).addEventListener(MouseEvent.MOUSE_OVER,this._wy14818);
         MovieClip(this._og11710[textString32][textString35]).addEventListener(MouseEvent.MOUSE_OUT,this._lw5887);
      }
      
      private function move() : void
      {
         if(MovieClip(this._og11710[textString32]) != null && MovieClip(this._og11710[textString32][textString35]) != null)
         {
            MovieClip(this._og11710[textString32][textString35]).removeEventListener(MouseEvent.MOUSE_DOWN,this._rl15041);
            MovieClip(this._og11710[textString32][textString35]).removeEventListener(MouseEvent.MOUSE_OVER,this._wy14818);
            MovieClip(this._og11710[textString32][textString35]).removeEventListener(MouseEvent.MOUSE_OUT,this._lw5887);
         }
      }
   }
}

