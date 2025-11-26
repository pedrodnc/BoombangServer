package src.utils
{
   public class _kg12861
   {
      
      private static var _xf5268:_cy398;
      
      private static var _io11111:Number;
      
      private static var _lh2399:int;
      
      private static var _xo6790:int;
      
      private static var _fb9678:int;
      
      private static var _df6810:int;
      
      private static var _js12081:int;
      
      private static var _np9789:int;
      
      private static const _sk10010:String = "w ";
      
      private static const _bb9337:String = "d ";
      
      private static const _tq2906:String = "h ";
      
      private static const _vd14329:String = "m ";
      
      private static const _nf10932:String = "s ";
      
      private static const _uk9949:int = 7;
      
      private static const _fg14290:int = 24;
      
      private static const _jd8811:int = 60;
      
      private static const _ey5062:int = _uk9949 * _fg14290 * _jd8811;
      
      private static var _ff10717:String = "";
      
      private static var _fu1098:int = 0;
      
      public function _kg12861()
      {
         super();
      }
      
      public static function _os4304(param1:Number = 1) : _cy398
      {
         _le11515(param1);
         _xf5268 = new _cy398();
         _xf5268._de6958(_np9789,_cy398._hu6258);
         _xf5268._de6958(_js12081,_cy398._jd8811);
         _xf5268._de6958(_df6810,_cy398._fg14290);
         _xf5268._de6958(_fb9678,_cy398._uk9949);
         _xf5268._de6958(_xo6790,_cy398._ey5062);
         return _xf5268;
      }
      
      public static function _po2157(param1:Number = 1, param2:int = 2) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         _fu1098 = 0;
         _ff10717 = "";
         _le11515(param1);
         if(_xo6790 > 0)
         {
            _ff10717 = _xo6790 + _sk10010;
            ++_fu1098;
         }
         if(_fb9678 > 0)
         {
            _ff10717 += _fb9678 + _bb9337;
            ++_fu1098;
         }
         if(_df6810 > 0 && _fu1098 < param2)
         {
            _loc3_ = _df6810 < 10 ? "0" + String(_df6810) : String(_df6810);
            _ff10717 += _loc3_ + _tq2906;
            ++_fu1098;
         }
         if(_js12081 > 0 && _fu1098 < param2)
         {
            _loc4_ = _js12081 < 10 ? "0" + String(_js12081) : String(_js12081);
            _ff10717 += _loc4_ + _vd14329;
            ++_fu1098;
         }
         if(_fu1098 < param2 && _np9789 > 0)
         {
            _loc5_ = _np9789 < 10 ? "0" + String(_np9789) : String(_np9789);
            _ff10717 += _loc5_ + _nf10932;
         }
         else if(_fu1098 < param2)
         {
            _ff10717 += "0" + _nf10932;
         }
         return _ff10717;
      }
      
      private static function _le11515(param1:Number) : void
      {
         _io11111 = param1 / _ey5062;
         _xo6790 = int(_io11111);
         _io11111 -= _xo6790;
         _io11111 *= _uk9949;
         _fb9678 = int(_io11111);
         _io11111 -= _fb9678;
         _io11111 *= _fg14290;
         _df6810 = int(_io11111);
         _io11111 -= _df6810;
         _io11111 *= _jd8811;
         _js12081 = int(_io11111);
         _io11111 -= _js12081;
         _io11111 *= _jd8811;
         _np9789 = int(_io11111);
      }
   }
}

