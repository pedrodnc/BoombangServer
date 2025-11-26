package src.modules.interfaz.baseChat
{
   import src.allData.texts.*;
   
   public class ChatManager
   {
      
      private static var textString:String = "baseChat";
      
      public var textString1:String;
      
      public var textString2:String;
      
      public var textString3:String;
      
      public var textString4:String;
      
      public var textString5:String;
      
      public var textString6:String;
      
      public var items:Array;
      
      public var items1:Array;
      
      public var textString7:String;
      
      public var textString8:String;
      
      public var textString9:String;
      
      public var textString10:String;
      
      public var textString11:String;
      
      public var items2:Array;
      
      public var items3:Array;
      
      public var textString12:String;
      
      private var _ie14486:XML;
      
      public function ChatManager()
      {
         var count2:int = 0;
         super();
         this._ie14486 = new XML(TextManager._eo5308[textString].toXMLString());
         this.textString1 = this._ie14486.attribute("publico");
         this.textString2 = this._ie14486.attribute("aceptarCambios");
         this.textString3 = this._ie14486.attribute("rechazo");
         this.textString4 = this._ie14486.attribute("password");
         this.textString5 = this._ie14486.attribute("tooltipMochila");
         this.textString7 = this._ie14486.attribute("hour");
         this.textString8 = this._ie14486.attribute("min");
         this.textString9 = this._ie14486.attribute("sec");
         this.textString12 = this._ie14486.attribute("titMonedasPlata");
         this.items = new Array();
         this.items.push(this._ie14486.attribute("descMonedasPlata1"));
         this.items.push(this._ie14486.attribute("descMonedasPlata3"));
         this.items1 = new Array();
         this.items1.push(this._ie14486.attribute("descMonedasPlata2").split("|").join("<br/>"));
         this.textString10 = this._ie14486.attribute("activarCambios");
         this.textString11 = this._ie14486.attribute("desactivarCambios");
         this.items2 = new Array();
         this.items3 = new Array();
         var count:String = this._ie14486.attribute("perfumado" + count2);
         while(count != "")
         {
            this.items2.push(count);
            count = this._ie14486.attribute("perfumado" + ++count2);
         }
         count2 = 0;
         var count3:String = this._ie14486.attribute("cumplido" + count2);
         while(count3 != "")
         {
            this.items3.push(count3);
            count3 = this._ie14486.attribute("cumplido" + ++count2);
         }
         this._ie14486 = null;
      }
      
      public static function get _hu2466() : String
      {
         return XML(TextManager._eo5308[textString].toXMLString()).attribute("tooltipExit");
      }
   }
}

