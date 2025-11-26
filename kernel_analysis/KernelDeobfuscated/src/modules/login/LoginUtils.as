package src.modules.login
{
   import flash.display.MovieClip;
   import flash.utils.*;
   import src.utils.*;
   
   public class LoginUtils
   {
      
      private static const textString:String = "mcBaseGlobo";
      
      private static const textString1:String = "tfBody";
      
      private static const textString2:String = "tfDown";
      
      private static const textString3:String = "recuperar";
      
      public static const textString4:String = "errorIngreso";
      
      public static const textString5:String = "logeado";
      
      public static const textString6:String = "verificando";
      
      public static const textString7:String = "vacio";
      
      public static const textString8:String = "camposVacios";
      
      public static const textString9:String = "mailIncorrecto";
      
      public static const textString10:String = "operacionIncompleta";
      
      public static const textString11:String = "codigoIncorrecto";
      
      public static const textString12:String = "noCodigo";
      
      public static const textString13:String = "codigoTardar";
      
      public static const textString14:String = "enviamosMailConPass";
      
      public static const textString15:String = "piensaPassDiferente";
      
      public static const textString16:String = "passDesigual";
      
      public static const textString17:String = "probarNewPass";
      
      public static const textString18:String = "minimoLargoPass";
      
      public static const textString19:String = "passFacil";
      
      public static const textString20:String = "yingo";
      
      private static const count:int = 6000;
      
      private var _os3183:MovieClip;
      
      private var timer:int;
      
      private var _ym12228:LoginModule;
      
      private var _np1587:LoginModel;
      
      public function LoginUtils(param1:MovieClip, param2:LoginModule)
      {
         super();
         this._os3183 = param1[textString];
         this._np1587 = param2._np1587;
         this._ym12228 = param2;
         this._ng15312();
      }
      
      public function destroy() : void
      {
         this._lj15092();
      }
      
      public function _pd1002(param1:String) : void
      {
         if(this._os3183.currentLabel == param1)
         {
            return;
         }
         UtilsUtils._vt11823(this._os3183,param1);
      }
      
      private function _ng15312() : void
      {
         StringUtils._dp2863(this._os3183,this._jl11377);
      }
      
      private function _lj15092() : void
      {
         StringUtils._ff5056(this._os3183);
      }
      
      private function _jl11377() : void
      {
         switch(this._os3183.currentLabel)
         {
            case textString3:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString51);
               return;
            case textString4:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString55);
               UtilsUtils._xl9503(this._os3183[textString2],this._np1587.textString54);
               return;
            case textString5:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString56);
               UtilsUtils._xl9503(this._os3183[textString2],this._np1587.textString54);
               return;
            case textString6:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString53);
               return;
            case textString9:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString58);
               UtilsUtils._xl9503(this._os3183[textString2],this._np1587.textString54);
               return;
            case textString8:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString59);
               UtilsUtils._xl9503(this._os3183[textString2],this._np1587.textString54);
               return;
            case textString10:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString57);
               return;
            case textString13:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString62);
               return;
            case textString12:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString63);
               UtilsUtils._xl9503(this._os3183[textString2],this._np1587.textString54);
               return;
            case textString11:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString60);
               return;
            case textString15:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString64);
               return;
            case textString16:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString65);
               return;
            case textString17:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString66);
               return;
            case textString14:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString67);
               return;
            case textString18:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString68);
               return;
            case textString19:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString69);
               return;
            case textString20:
               UtilsUtils._xl9503(this._os3183[textString1],this._np1587.textString70);
               return;
            default:
               return;
         }
      }
      
      public function loop() : void
      {
         if(this._os3183.currentLabel == textString4 || this._os3183.currentLabel == textString5 || this._os3183.currentLabel == textString8)
         {
            if(this.timer != 0 && getTimer() > this.timer)
            {
               this._pd1002(textString7);
               this.timer = 0;
            }
         }
      }
      
      public function startTimer() : void
      {
         this.timer = getTimer() + count;
      }
   }
}

