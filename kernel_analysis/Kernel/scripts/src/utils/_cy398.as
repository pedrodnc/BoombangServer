package src.utils
{
   public class _cy398
   {
      
      public static const _hu6258:String = "Segundos";
      
      public static const _jd8811:String = "Minutos";
      
      public static const _fg14290:String = "Horas";
      
      public static const _uk9949:String = "Dias";
      
      public static const _ey5062:String = "Semanas";
      
      protected var _xb2753:int;
      
      protected var _ff2826:int;
      
      protected var _aa8270:int;
      
      protected var _hx14248:int;
      
      protected var _bb3331:int;
      
      public function _cy398()
      {
         super();
      }
      
      public function _de6958(param1:int, param2:String) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         switch(param2)
         {
            case _hu6258:
               this._xb2753 = param1;
               return;
            case _jd8811:
               this._ff2826 = param1;
               return;
            case _fg14290:
               this._aa8270 = param1;
               return;
            case _uk9949:
               this._hx14248 = param1;
               return;
            case _ey5062:
               this._bb3331 = param1;
               return;
            default:
               return;
         }
      }
      
      public function get _np9789() : int
      {
         return this._xb2753;
      }
      
      public function get _js12081() : int
      {
         return this._ff2826;
      }
      
      public function get _df6810() : int
      {
         return this._aa8270;
      }
      
      public function get _fb9678() : int
      {
         return this._hx14248;
      }
      
      public function get _xo6790() : int
      {
         return this._bb3331;
      }
   }
}

