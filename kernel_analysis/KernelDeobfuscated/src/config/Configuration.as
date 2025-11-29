package src.config
{
   import flash.external.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class Configuration
   {
      
      public static var count:int;
      
      public static var urlString:String;
      
      public static var urlString1:String;
      
      public static var urlString2:String;
      
      public static var count1:int;
      
      public static var urlString3:String;
      
      public static var isEnabled:Boolean;
      
      public static var ticketsso:String;
      
      public static const urlString4:String = "lang_es.xml";
      
      public static const urlString5:String = "lang_cl.xml";
      
      public static const urlString6:String = "lang_mx.xml";
      
      public static const urlString7:String = "lang_en.xml";
      
      public static const urlString8:String = "579918edd";
      
      public static var urlString9:String = urlString4;
      
      public static var textString:String = ServiceFactory.textString;
      
      public static var isEnabled1:Boolean = true;
      
      public static var count2:int = 1012;
      
      public static var count3:int = 657;
      
      public static const urlString11:String = "/";
      
      public static var urlString12:String = ExternalInterface.call("keyf");
      
      public static const isEnabled2:Boolean = true;
      
      public static const isEnabled3:Boolean = true;
      
      public static const isEnabled4:Boolean = true;
      
      public static const isEnabled5:Boolean = false;
      
      public static const isEnabled6:Boolean = false;
      
      public static const urlString13:String = "127.0.0.1";
      
      public static var urlString14:String = "7200";
      
      private static const urlString15:String = "21598765";
      
      private static const urlString16:String = "135";
      
      private static const count4:int = 135;
      
      private static const urlString17:String = "21598765";
      
      private static const urlString18:String = "135";
      
      private static const count5:int = 135;
      
      private static const urlString19:String = "21598765";
      
      private static const urlString20:String = "135";
      
      private static const count6:int = 135;
      
      private static const urlString21:String = "21598765";
      
      private static const urlString22:String = "135";
      
      private static const count7:int = 135;
      
      private static const urlString23:String = "21598765";
      
      private static const urlString24:String = "135";
      
      private static const count8:int = 135;
      
      public static const isEnabled7:Boolean = true;
      
      public static const urlString25:String = "boombang.bbgames.com/start.html";
      
      public static const items:Array = [".boombang.tv","127.0.0.1",".boombang.com.mx",".boombang.nl",".boombang.pw",".sytes.net","localhost",urlString25];
      
      public static const isEnabled8:Boolean = true;
      
      public static const isEnabled9:Boolean = true;
      
      public static const isEnabled10:Boolean = true;
      
      public static const urlString26:String = "";
      
      public static const isEnabled11:Boolean = false;
      
      public static const isEnabled12:Boolean = false;
      
      public static const isEnabled13:Boolean = false;
      
      public static const isEnabled14:Boolean = false;
      
      public static const urlString27:String = "dswmedia/images/payments/";
      
      public static var isEnabled15:Boolean = true;
      
      public static var urlString28:String = "";
      
      public static var urlString29:String = "/";
      
      public static var urlString30:String = "https://www.boombang.tv/";
      
      public static var isEnabled16:Boolean = true;
      
      public function Configuration()
      {
         super();
      }
      
      public static function init() : void
      {
         var count2:String = null;
         var count:int = 0;
         var count3:Object = DisplayUtils._ps6769().loaderInfo.parameters;
         RuntimeParams._nc939 = count3;
         RuntimeParams._ns12055 = count3["lang"] as String;
         RuntimeParams.locale = count3["locale"] as String;
         RuntimeParams.ver = count3["ver"] as String;
         RuntimeParams._ry9019 = count3["sw1"] as String;
         RuntimeParams._dk13651 = count3["sw2"] as String;
         RuntimeParams._qq2512 = count3["sw3"] as String;
         RuntimeParams._qw1539 = count3["sw4"] as String;
         RuntimeParams._bc4854 = count3["sw5"] as String;
         ticketsso = count3["ticket_sso"] as String;
         _lt15061();
         if(isEnabled10)
         {
            count2 = DisplayUtils._ps6769().loaderInfo.loaderURL;
            count = count2.length - 1;
            while(count > -1)
            {
               if(count2.charAt(count) == "/" || count2.charAt(count) == "\\")
               {
                  urlString28 = count2.substring(0,count + 1);
                  break;
               }
               count--;
            }
         }
         switch(urlString9)
         {
            case urlString4:
               count = StringUtils.count;
               if(urlString == null)
               {
                  urlString = urlString13;
                  urlString1 = urlString17;
                  urlString2 = urlString18;
                  count1 = count5;
               }
               return;
            case urlString7:
               count = StringUtils.count1;
               if(urlString == null)
               {
                  urlString = urlString13;
                  urlString1 = urlString19;
                  urlString2 = urlString20;
                  count1 = count6;
               }
               isEnabled15 = false;
               return;
            case urlString5:
               count = StringUtils.count;
               if(urlString == null)
               {
                  urlString = urlString13;
                  urlString1 = urlString21;
                  urlString2 = urlString22;
                  count1 = count7;
               }
               return;
            case urlString6:
               count = StringUtils.count;
               if(urlString == null)
               {
                  urlString = urlString13;
                  urlString1 = urlString23;
                  urlString2 = urlString24;
                  count1 = count8;
               }
               return;
            default:
               return;
         }
      }
      
      private static function _lt15061() : void
      {
         switch(RuntimeParams._ns12055)
         {
            case "chl":
               textString = ServiceFactory.textString1;
               urlString9 = urlString5;
               urlString3 = irrcrpt(urlString30 + "operators.xml",0);
               break;
            case "eng":
               textString = ServiceFactory.textString3;
               urlString9 = urlString7;
               urlString3 = irrcrpt(urlString30 + "operators.xml",0);
               break;
            case "mex":
               textString = ServiceFactory.textString2;
               urlString9 = urlString6;
               urlString3 = irrcrpt(urlString30 + "operators.xml",0);
               break;
            case "esp":
            default:
               textString = ServiceFactory.textString;
               urlString9 = urlString4;
               urlString3 = irrcrpt(urlString30 + "operators.xml",0);
         }
         if(isEnabled2)
         {
            urlString3 = irrcrpt(urlString30 + "operators.xml",0);
         }
      }
   }
}

