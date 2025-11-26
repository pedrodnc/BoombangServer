package src.logs
{
   public class Logs extends LogLevel
   {
      
      private var textString:String;
      
      private var functionName:String;
      
      private var textString1:String;
      
      public function Logs(param1:int, param2:String, param3:String)
      {
         this.textString = "Cantidad de datos recibida incorrecta";
         super(param1);
         this.functionName = param2;
         this.textString1 = param3;
      }
      
      override public function getString() : String
      {
         var count2:* = "";
         count2 += this.textString;
         count2 += " FUNCION=" + this.functionName;
         return count2 + (" TRAMA=" + this.textString1);
      }
   }
}

