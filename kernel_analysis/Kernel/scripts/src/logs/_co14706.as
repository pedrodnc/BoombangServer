package src.logs
{
   public class _co14706 extends _fr7722
   {
      
      private var _gl5571:String;
      
      private var functionName:String;
      
      private var _sd1162:String;
      
      public function _co14706(param1:int, param2:String, param3:String)
      {
         this._gl5571 = "MovieClip Not Found";
         super(param1);
         this.functionName = param2;
         this._sd1162 = param3;
      }
      
      override public function _ya15560() : String
      {
         var _loc1_:* = "";
         _loc1_ += this._gl5571;
         _loc1_ += " FUNCION=" + this.functionName;
         return _loc1_ + (" NAME MOVIECLIP=" + this._sd1162);
      }
   }
}

