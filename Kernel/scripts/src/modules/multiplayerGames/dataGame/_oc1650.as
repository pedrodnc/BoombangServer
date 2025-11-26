package src.modules.multiplayerGames.dataGame
{
   public class _oc1650
   {
      
      public static const _hx13454:int = 1;
      
      public static const _wu9447:int = 2;
      
      public static const _de12066:int = 3;
      
      public static const _qf5633:int = 4;
      
      public static const _io15583:int = 5;
      
      public static const _ik10140:int = 6;
      
      public static const _pa14595:int = 7;
      
      public static const _jt6401:int = 0;
      
      public static const _sr6766:int = 1;
      
      public static const _uh5110:int = 2;
      
      public static const _vh15114:int = 3;
      
      public static const _ir2135:int = 6;
      
      public static const _vy13443:int = 7;
      
      public static const _ot11105:int = 8;
      
      public static const _fj7135:int = 9;
      
      public static const _hk4944:int = 10;
      
      public static const _wx3834:int = 11;
      
      public static const _ro15425:int = 12;
      
      public static const _gh12451:int = 13;
      
      public static const _on12160:int = 14;
      
      public static const _xr2844:int = 15;
      
      public static const _st10546:int = 1;
      
      public static const _ke4441:int = 5;
      
      public static const _ra8950:int = 8;
      
      public static const _xj3610:int = 10;
      
      public static const _dr7889:int = 12;
      
      public static const _oi10019:int = 14;
      
      public function _oc1650()
      {
         super();
      }
      
      public static function _bd3215(param1:int) : int
      {
         switch(param1)
         {
            case _uh5110:
            case _vh15114:
               return _hx13454;
            case _ir2135:
            case _vy13443:
               return _de12066;
            case _ot11105:
            case _fj7135:
               return _qf5633;
            case _hk4944:
            case _wx3834:
               return _io15583;
            case _ro15425:
            case _gh12451:
               return _ik10140;
            case _on12160:
            case _xr2844:
               return _pa14595;
            default:
               return -1;
         }
      }
      
      public static function _fv13263(param1:int) : int
      {
         switch(param1)
         {
            case _hx13454:
               return _uh5110;
            case _de12066:
               return _ir2135;
            case _qf5633:
               return _ot11105;
            case _io15583:
               return _hk4944;
            case _ik10140:
               return _ro15425;
            case _pa14595:
               return _on12160;
            default:
               return -1;
         }
      }
      
      public static function _bt2322(param1:int) : int
      {
         switch(param1)
         {
            case _hx13454:
               return _vh15114;
            case _de12066:
               return _vy13443;
            case _qf5633:
               return _fj7135;
            case _io15583:
               return _wx3834;
            case _ik10140:
               return _gh12451;
            case _pa14595:
               return _xr2844;
            default:
               return -1;
         }
      }
      
      public static function _yf11260(param1:int) : int
      {
         switch(param1)
         {
            case _hx13454:
               return _st10546;
            case _de12066:
               return _ke4441;
            case _qf5633:
               return _ra8950;
            case _io15583:
               return _xj3610;
            case _ik10140:
               return _dr7889;
            case _pa14595:
               return _oi10019;
            default:
               return -1;
         }
      }
      
      public static function _cr1192(param1:int, param2:Array) : String
      {
         var _loc3_:_ct8320 = null;
         var _loc5_:int = 0;
         var _loc4_:int = int(_oc1650._bt2322(param1));
         if(_loc4_ == -1)
         {
            return null;
         }
         while(_loc5_ < param2.length)
         {
            _loc3_ = _ct8320(param2[_loc5_]);
            if(_loc3_._oa3310 == _loc4_)
            {
               return _loc3_.texto;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function _ci6678(param1:int, param2:Array) : int
      {
         var _loc3_:_ct8320 = null;
         var _loc5_:int = 0;
         var _loc4_:int = int(_oc1650._bt2322(param1));
         if(_loc4_ == -1)
         {
            return -1;
         }
         while(_loc5_ < param2.length)
         {
            _loc3_ = _ct8320(param2[_loc5_]);
            if(_loc3_._oa3310 == _loc4_)
            {
               return _loc3_._fk13397;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public static function _ts5565(param1:int, param2:Array) : String
      {
         var _loc3_:_ct8320 = null;
         var _loc5_:int = 0;
         var _loc4_:int = int(_oc1650._fv13263(param1));
         if(_loc4_ == -1)
         {
            return null;
         }
         while(_loc5_ < param2.length)
         {
            _loc3_ = _ct8320(param2[_loc5_]);
            if(_loc3_._oa3310 == _loc4_)
            {
               return _loc3_.texto;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function _mb10575(param1:int, param2:Array) : int
      {
         var _loc3_:_ct8320 = null;
         var _loc5_:int = 0;
         var _loc4_:int = int(_oc1650._fv13263(param1));
         if(_loc4_ == -1)
         {
            return -1;
         }
         while(_loc5_ < param2.length)
         {
            _loc3_ = _ct8320(param2[_loc5_]);
            if(_loc3_._oa3310 == _loc4_)
            {
               return _loc3_._kn11986;
            }
            _loc5_++;
         }
         return -1;
      }
   }
}

