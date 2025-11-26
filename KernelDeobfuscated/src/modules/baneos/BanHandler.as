package src.modules.baneos
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.*;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.utils.*;
   
   public class BanHandler
   {
      
      private static const TF_TITULO:String = "tfTitulo";
      
      private static const textString:String = "tfMotivo";
      
      private static const textString1:String = "tfMotivo2";
      
      private static const textString2:String = "tfTituloTip1";
      
      private static const textString3:String = "tfTip1";
      
      private static const textString4:String = "tfTituloTip2";
      
      private static const textString5:String = "tfTip2";
      
      private static const textString6:String = "tfTituloTip3";
      
      private static const textString7:String = "baneado";
      
      private static const textString8:String = "multiplesConexiones";
      
      private static const textString9:String = "noSePudoConectar";
      
      private static const textString10:String = "tituloMensaje";
      
      private static const textString11:String = "mantenimiento";
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const count2:int = 3;
      
      public static const count3:int = 4;
      
      public static const count4:int = 5;
      
      public static const count5:int = 6;
      
      public static const count6:int = 7;
      
      public static const count7:int = 8;
      
      public static const count8:int = 9;
      
      public static const count9:int = 0;
      
      public static const count10:int = 1;
      
      private var _hm13107:MovieClip;
      
      private var _gy10361:ChoosesceneModel;
      
      private var textString10:int;
      
      private var items:Array;
      
      private var count:int;
      
      public function BanHandler(param1:MovieClip, param2:ChoosesceneModel)
      {
         super();
         this._hm13107 = param1;
         this._gy10361 = param2;
         StringUtils._dp2863(this._hm13107,this._gy13040);
         this._hm13107.visible = false;
         this.count = _xw1367.count5;
      }
      
      private function _gy13040() : void
      {
         switch(this._hm13107.currentLabel)
         {
            case textString10:
               this._jj102();
               return;
            case textString7:
               this._rk12337();
               return;
            case textString8:
               this._wy1721();
               return;
            case textString9:
               this._wd684();
               return;
            case textString11:
               this._jj102();
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         StringUtils._ff5056(this._hm13107);
      }
      
      public function show(param1:int, param2:int, param3:Object) : Boolean
      {
         _xw1367.getInstance()._uc3178(this._hm13107,this.count);
         this._hm13107.x = param1;
         this._hm13107.y = param2;
         this._hm13107.visible = true;
         this.textString10 = param3.textString10;
         this.items = param3.items;
         switch(this.textString10)
         {
            case count:
               UtilsUtils._vt11823(this._hm13107,textString7);
               break;
            case count2:
               UtilsUtils._vt11823(this._hm13107,textString8);
               break;
            case count4:
               UtilsUtils._vt11823(this._hm13107,textString9);
               break;
            case count1:
               UtilsUtils._vt11823(this._hm13107,textString11);
               break;
            default:
               UtilsUtils._vt11823(this._hm13107,textString10);
         }
         return true;
      }
      
      public function authenticateUser2() : Boolean
      {
         _xw1367.getInstance().move2(this._hm13107,this.count);
         return true;
      }
      
      private function _qx2504(param1:String, param2:String) : void
      {
         var count3:TextField = TextField(this._hm13107[param1]);
         count3.mouseEnabled = false;
         UtilsUtils._xl9503(count3,param2);
      }
      
      private function _jj102() : void
      {
         var count2:* = "";
         var count:* = "";
         switch(this.textString10)
         {
            case count1:
               count2 = this._gy10361._uo3405;
               count = this._gy10361._ce6108;
               break;
            case count3:
               count2 = this._gy10361._ho12524;
               count = this._gy10361._gs8782;
               break;
            case count5:
               count2 = this._gy10361._kb11826;
               count = this.items[0];
               break;
            case count6:
               count = this._gy10361._uf11844;
               break;
            case count7:
               count = this._gy10361._rl4676;
               break;
            case count8:
               count = this._gy10361._yh9423;
         }
         this._qx2504(TF_TITULO,count2);
         this._qx2504(textString,count);
      }
      
      private function _rk12337() : void
      {
         this._qx2504(TF_TITULO,this._gy10361._jl7297);
         this._qx2504(textString,this._gy10361._va6621);
         this._qx2504(textString2,this._gy10361._ds1850);
         this._qx2504(textString3,String(this.items[1]));
         this._qx2504(textString4,this._gy10361._oc12995);
         this._qx2504(textString5,this.getString(this.items[0]));
      }
      
      private function _wy1721() : void
      {
         this._qx2504(TF_TITULO,this._gy10361._dt11626);
         this._qx2504(textString,this._gy10361._gy1179);
         this._qx2504(textString2,this._gy10361._mm14005);
      }
      
      private function _wd684() : void
      {
         this._qx2504(TF_TITULO,this._gy10361._st4689);
         this._qx2504(textString,this._gy10361._wf7531);
         this._qx2504(textString2,this._gy10361._re8575);
         this._qx2504(textString4,this._gy10361._kr10698);
         this._qx2504(textString6,this._gy10361._jx11953);
         this._qx2504(textString1,this._gy10361._bt4691);
      }
      
      private function getString(param1:int) : String
      {
         var count:int = int(param1 / 3600);
         var count3:int = int(int(param1 - count * 3600) / 60);
         param1 = int(param1 % 60);
         var count1:* = "";
         if(count > 0)
         {
            count1 += count + " ";
            if(count == 1)
            {
               count1 += this._gy10361._jk10992 + " ";
            }
            else
            {
               count1 += this._gy10361._jk10992 + "s ";
            }
         }
         if(count3 > 0)
         {
            count1 += count3 + " ";
            if(count3 == 1)
            {
               count1 += this._gy10361._rs14567 + " ";
            }
            else
            {
               count1 += this._gy10361._rs14567 + "s ";
            }
         }
         if(count == 0 && count3 == 0)
         {
            count1 += param1 + " ";
            if(param1 == 1)
            {
               count1 += this._gy10361._rl7049 + " ";
            }
            else
            {
               count1 += this._gy10361._rl7049 + "s ";
            }
         }
         return count1;
      }
   }
}

