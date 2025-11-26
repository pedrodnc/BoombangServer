package src.logs
{
   public class _ex15859 extends _fr7722
   {
      
      private var _gl5571:String;
      
      private var functionName:String;
      
      private var _gi7222:String;
      
      public function _ex15859(param1:int, param2:String, param3:String)
      {
         this._gl5571 = "Cantidad de datos recibida incorrecta";
         super(param1);
         this.functionName = param2;
         this._gi7222 = param3;
      }
      
      override public function _ya15560() : String
      {
         var _loc1_:* = "";
         _loc1_ += this._gl5571;
         _loc1_ += " FUNCION=" + this.functionName;
         return _loc1_ + (" TRAMA=" + this._gi7222);
      }
   }
}

