package src.logs
{
   public class _sy12041 extends _fr7722
   {
      
      private var _gl5571:String;
      
      private var functionName:String;
      
      private var _oi11598:String;
      
      public function _sy12041(param1:int, param2:String, param3:String)
      {
         this._gl5571 = "Errores Varios";
         super(param1);
         this.functionName = param2;
         this._oi11598 = param3;
      }
      
      override public function _ya15560() : String
      {
         var _loc1_:* = "";
         _loc1_ += this._gl5571;
         _loc1_ += " FUNCION=" + this.functionName;
         return _loc1_ + (" DESC=" + this._oi11598);
      }
   }
}

