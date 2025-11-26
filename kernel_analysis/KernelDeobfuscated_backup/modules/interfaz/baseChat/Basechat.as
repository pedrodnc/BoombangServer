package src.modules.interfaz.baseChat
{
   import src.person._um8624;
   
   public class _db131
   {
      
      public static const _rf10272:int = 1;
      
      public static const _br14650:int = 2;
      
      public static const _ah8415:int = 3;
      
      public static const _rr10320:int = 4;
      
      public static const _gm15586:int = 5;
      
      public static const _yc7932:int = 6;
      
      public static const _di15294:int = 7;
      
      public static const _ou5551:int = 8;
      
      public static const _hn2638:int = 9;
      
      public static const _ta15045:int = 10;
      
      public static const _qi7227:int = 11;
      
      public static const _op3753:int = 12;
      
      public static const _mb873:int = 13;
      
      public static const _bl5172:int = 14;
      
      public static const _ff3846:int = 15;
      
      public static const _wr1537:int = 16;
      
      public static const _gw9556:int = 17;
      
      public static const _cl9787:int = 18;
      
      public static const _wl4689:int = 19;
      
      public static const _oq7016:int = 20;
      
      public static const _im13214:int = 21;
      
      public static const _vq2508:int = 22;
      
      public static const _xx3666:int = 23;
      
      public static const _tg4679:int = 24;
      
      public static const _vq1916:int = 25;
      
      public static const _fi1144:int = 26;
      
      public static const _bo5191:int = 27;
      
      public static const _ar1854:int = 28;
      
      public static const _bm296:int = 29;
      
      public static const _pd10410:int = 30;
      
      public static const _kl8694:int = 31;
      
      public static const _ft11127:int = 32;
      
      public static const _xv2211:int = 33;
      
      public static const _xv1232:int = 34;
      
      public function _db131()
      {
         super();
      }
      
      public function _wt13394(param1:int, param2:String, param3:String, param4:_um8624) : _tj12079
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc8_:Boolean = true;
         switch(param1)
         {
            case 41:
               _loc5_ = 16777215;
               _loc6_ = 0;
               _loc7_ = 1;
               _loc8_ = false;
               param2 = "";
               break;
            case 40:
               _loc5_ = 0;
               _loc6_ = 851198;
               _loc7_ = 1;
               _loc8_ = false;
               param2 = "[CLAN]";
               break;
            case _rr10320:
               _loc5_ = 16777215;
               _loc6_ = 16724838;
               _loc7_ = 0.8;
               _loc8_ = false;
               param2 = "";
               break;
            case _gm15586:
               _loc5_ = 16777215;
               _loc6_ = 16724838;
               _loc7_ = 0.8;
               _loc8_ = false;
               param2 = "";
               break;
            case _yc7932:
               if(param4.name == "")
               {
                  _loc5_ = 0;
                  _loc6_ = 16768953;
                  _loc7_ = 1;
               }
               else
               {
                  _loc5_ = 16777215;
                  _loc6_ = 16724838;
                  _loc7_ = 0.8;
               }
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _rf10272:
               _loc5_ = 0;
               _loc6_ = 16777215;
               _loc7_ = 0.8;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _br14650:
               if(param4.name == "")
               {
                  _loc5_ = 0;
               }
               if(param4._vm2039 == 11)
               {
                  _loc6_ = 11513775;
                  _loc5_ = 0;
               }
               else if(param4._vm2039 == 10)
               {
                  _loc6_ = 10354688;
                  _loc5_ = 16777215;
               }
               else if(param4._vm2039 == 9)
               {
                  _loc6_ = 1474628;
                  _loc5_ = 16777215;
               }
               else if(param4._vm2039 == 8)
               {
                  _loc6_ = 1677512;
                  _loc5_ = 16777215;
               }
               else if(param4._vm2039 == 7)
               {
                  _loc6_ = 12804608;
                  _loc5_ = 16777215;
               }
               else if(param4._vm2039 == 6)
               {
                  _loc6_ = 13050777;
                  _loc5_ = 16777215;
               }
               else if(param4._vm2039 >= 12)
               {
                  _loc6_ = 16770560;
                  _loc5_ = 0;
               }
               else
               {
                  _loc6_ = 16770560;
                  _loc5_ = 0;
               }
               _loc7_ = param4.name == "" || param4.name == "Franela1992" ? 0.95 : 0.95;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _op3753:
               _loc5_ = 16777215;
               _loc6_ = 0;
               _loc7_ = 0.6;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _ft11127:
               _loc5_ = 16777215;
               _loc6_ = 0;
               _loc7_ = 0.6;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               _loc8_ = false;
               break;
            case _mb873:
               _loc6_ = 0;
               _loc5_ = 16770560;
               _loc7_ = 0.6;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _bl5172:
               _loc5_ = 16777215;
               _loc6_ = 16711680;
               _loc7_ = 1;
               param3 = param2 + " " + param3;
               param2 += " ";
               break;
            case _wr1537:
               _loc5_ = 16777215;
               _loc6_ = 16711680;
               _loc7_ = 1;
               param3 = param2 + " SPAM";
               param2 += " ";
               break;
            case _ff3846:
               _loc5_ = 16777215;
               _loc6_ = 16711680;
               _loc7_ = 0.95;
               param2 = "";
               _loc8_ = false;
               break;
            case _ah8415:
               _loc5_ = 0;
               _loc6_ = 16761600;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _gw9556:
               _loc5_ = 16777215;
               _loc6_ = 3373827;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               _loc7_ = 1;
               _loc8_ = false;
               break;
            case _vq2508:
               _loc5_ = 0;
               _loc6_ = 16773376;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               _loc7_ = 1;
               _loc8_ = false;
               break;
            case _cl9787:
               _loc5_ = 13369344;
               _loc6_ = 16777215;
               _loc7_ = 1;
               _loc8_ = false;
               _loc11_ = true;
               break;
            case _wl4689:
               _loc5_ = 16777215;
               _loc6_ = 8388736;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               _loc7_ = 1;
               _loc8_ = false;
               break;
            case _oq7016:
               _loc5_ = 16761600;
               _loc6_ = 6697728;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _im13214:
               _loc5_ = 16777215;
               _loc6_ = 11141120;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               _loc7_ = 1;
               _loc8_ = false;
               break;
            case _xx3666:
               _loc5_ = 16777215;
               _loc6_ = 16739280;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _tg4679:
               _loc5_ = 16777215;
               _loc6_ = 16711680;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _vq1916:
               _loc5_ = 16777215;
               _loc6_ = 11290624;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _di15294:
               _loc5_ = 0;
               _loc6_ = 15536141;
               _loc7_ = 0.8;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _ou5551:
               _loc5_ = 16777215;
               _loc6_ = 5249660;
               _loc7_ = 0.8;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _hn2638:
               _loc5_ = 0;
               _loc6_ = 15567128;
               _loc7_ = 0.8;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _ta15045:
               _loc5_ = 0;
               _loc6_ = 5426201;
               _loc7_ = 0.8;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _qi7227:
               _loc5_ = 16777215;
               _loc6_ = 11141120;
               param2 += ": ";
               param3 = param2 + param3;
               _loc7_ = 1;
               _loc8_ = false;
               break;
            case _bo5191:
               _loc5_ = 16777215;
               _loc6_ = 9371813;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               param2 += ": ";
               param3 = param2 + param3;
               break;
            case _ar1854:
               _loc5_ = 16777215;
               _loc6_ = 9458713;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               param2 += ": ";
               param3 = param2 + param3;
               break;
            case _fi1144:
               _loc5_ = 16777215;
               _loc6_ = 12807707;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _bm296:
               _loc5_ = 16777215;
               _loc6_ = 9371813;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _pd10410:
               _loc5_ = 16777215;
               _loc6_ = 7242788;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _kl8694:
               _loc5_ = 16777215;
               _loc6_ = 6538982;
               _loc7_ = 0.95;
               _loc8_ = false;
               _loc9_ = 2;
               _loc10_ = 2;
               break;
            case _xv2211:
               _loc5_ = 16777215;
               _loc6_ = 6250335;
               _loc7_ = 1;
               param3 = param2 + ": " + param3;
               param2 += ": ";
               break;
            case _xv1232:
               _loc5_ = 0;
               _loc6_ = 3390163;
               _loc7_ = 0.8;
               param3 = param2 + ": " + param3;
               param2 += ": ";
         }
         var _loc12_:_tj12079 = new _tj12079();
         _loc12_._sf7808 = _loc6_;
         _loc12_._de8828 = _loc5_;
         _loc12_._ns998 = _loc7_;
         _loc12_._hs3693 = _loc8_;
         _loc12_._tf1597 = _loc9_;
         _loc12_._nv1822 = _loc10_;
         _loc12_._vt9357 = _loc11_;
         _loc12_._hs9331 = param2;
         _loc12_.texto = param3;
         return _loc12_;
      }
   }
}

