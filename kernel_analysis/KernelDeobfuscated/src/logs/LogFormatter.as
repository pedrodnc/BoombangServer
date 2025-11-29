package src.logs
{
   public class LogFormatter extends LogLevel
   {
      
      private var textString:String;
      
      private var functionName:String;
      
      private var textString1:String;
      
      public function LogFormatter(param1:int, param2:String, param3:String)
      {
         this.textString = "MovieClip Not Found";
         super(param1);
         this.functionName = param2;
         this.textString1 = param3;
      }
      
      override public function getString() : String
      {
         var count2:* = "";
         count2 += this.textString;
         count2 += " FUNCION=" + this.functionName;
         return count2 + (" NAME MOVIECLIP=" + this.textString1);
      }
   }
}

