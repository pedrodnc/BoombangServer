package src.config
{
   import flash.external.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class _cc7688
   {
      
      public static var _bu7331:int;
      
      public static var _vx10360:String;
      
      public static var _rx1560:String;
      
      public static var _va14143:String;
      
      public static var _iy1873:int;
      
      public static var _lc3908:String;
      
      public static var _jo11635:Boolean;
      
      public static var ticketsso:String;
      
      public static const _gk8815:String = "lang_es.xml";
      
      public static const _uo6813:String = "lang_cl.xml";
      
      public static const _mi124:String = "lang_mx.xml";
      
      public static const _gl650:String = "lang_en.xml";
      
      public static const _xy0034:String = "579918edd";
      
      public static var _qs3725:String = _gk8815;
      
      public static var _yg212:String = _dw1395._me6934;
      
      public static var _io3885:Boolean = true;
      
      public static var _wc13865:int = 1012;
      
      public static var _kl10731:int = 657;
      
      public static const _hk1755:String = "/";
      
      public static var _ih39312:String = ExternalInterface.call("keyf");
      
      public static const _ih15806:Boolean = true;
      
      public static const _sq6072:Boolean = true;
      
      public static const _qi5634:Boolean = true;
      
      public static const _qp14200:Boolean = false;
      
      public static const _onlyrc4:Boolean = false;
      
      public static const _ql3714:String = "127.0.0.1";
      
      public static var _ja1502:String = "7200";
      
      private static const _nq5272:String = "21598765";
      
      private static const _cv1161:String = "135";
      
      private static const _lw2371:int = 135;
      
      private static const _hm4117:String = "21598765";
      
      private static const _oa4766:String = "135";
      
      private static const _si1103:int = 135;
      
      private static const _jq3778:String = "21598765";
      
      private static const _ax8529:String = "135";
      
      private static const _qx16088:int = 135;
      
      private static const _cy11036:String = "21598765";
      
      private static const _lx1857:String = "135";
      
      private static const _mu10746:int = 135;
      
      private static const _dn94:String = "21598765";
      
      private static const _ko3400:String = "135";
      
      private static const _op6634:int = 135;
      
      public static const _av4029:Boolean = true;
      
      public static const _hy13908:String = "boombang.bbgames.com/start.html";
      
      public static const _ic15653:Array = [".boombang.tv","127.0.0.1",".boombang.com.mx",".boombang.nl",".boombang.pw",".sytes.net","localhost",_hy13908];
      
      public static const _ck389:Boolean = true;
      
      public static const _gy7506:Boolean = true;
      
      public static const _rg15353:Boolean = true;
      
      public static const _lw6097:String = "";
      
      public static const _gc1387:Boolean = false;
      
      public static const _bd8175:Boolean = false;
      
      public static const _dg9983:Boolean = false;
      
      public static const _bc15601:Boolean = false;
      
      public static const _kx13603:String = "dswmedia/images/payments/";
      
      public static var _gr2711:Boolean = true;
      
      public static var _su9470:String = "";
      
      public static var _te13733:String = "/";
      
      public static var _am6925:String = "https://www.boombang.tv/";
      
      public static var _jv717:Boolean = true;
      
      public function _cc7688()
      {
         super();
      }
      
      public static function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:Object = _tq2768._ps6769().loaderInfo.parameters;
         _ly14211._nc939 = _loc3_;
         _ly14211._ns12055 = _loc3_["lang"] as String;
         _ly14211.locale = _loc3_["locale"] as String;
         _ly14211.ver = _loc3_["ver"] as String;
         _ly14211._ry9019 = _loc3_["sw1"] as String;
         _ly14211._dk13651 = _loc3_["sw2"] as String;
         _ly14211._qq2512 = _loc3_["sw3"] as String;
         _ly14211._qw1539 = _loc3_["sw4"] as String;
         _ly14211._bc4854 = _loc3_["sw5"] as String;
         ticketsso = _loc3_["ticket_sso"] as String;
         _lt15061();
         if(_rg15353)
         {
            _loc1_ = _tq2768._ps6769().loaderInfo.loaderURL;
            _loc2_ = _loc1_.length - 1;
            while(_loc2_ > -1)
            {
               if(_loc1_.charAt(_loc2_) == "/" || _loc1_.charAt(_loc2_) == "\\")
               {
                  _su9470 = _loc1_.substring(0,_loc2_ + 1);
                  break;
               }
               _loc2_--;
            }
         }
         switch(_qs3725)
         {
            case _gk8815:
               _bu7331 = _xv14798._xu10930;
               if(_vx10360 == null)
               {
                  _vx10360 = _ql3714;
                  _rx1560 = _hm4117;
                  _va14143 = _oa4766;
                  _iy1873 = _si1103;
               }
               return;
            case _gl650:
               _bu7331 = _xv14798._cb11919;
               if(_vx10360 == null)
               {
                  _vx10360 = _ql3714;
                  _rx1560 = _jq3778;
                  _va14143 = _ax8529;
                  _iy1873 = _qx16088;
               }
               _gr2711 = false;
               return;
            case _uo6813:
               _bu7331 = _xv14798._xu10930;
               if(_vx10360 == null)
               {
                  _vx10360 = _ql3714;
                  _rx1560 = _cy11036;
                  _va14143 = _lx1857;
                  _iy1873 = _mu10746;
               }
               return;
            case _mi124:
               _bu7331 = _xv14798._xu10930;
               if(_vx10360 == null)
               {
                  _vx10360 = _ql3714;
                  _rx1560 = _dn94;
                  _va14143 = _ko3400;
                  _iy1873 = _op6634;
               }
               return;
            default:
               return;
         }
      }
      
      private static function _lt15061() : void
      {
         switch(_ly14211._ns12055)
         {
            case "chl":
               _yg212 = _dw1395._bk11098;
               _qs3725 = _uo6813;
               _lc3908 = irrcrpt(_am6925 + "operators.xml",0);
               break;
            case "eng":
               _yg212 = _dw1395._xy5004;
               _qs3725 = _gl650;
               _lc3908 = irrcrpt(_am6925 + "operators.xml",0);
               break;
            case "mex":
               _yg212 = _dw1395._js6510;
               _qs3725 = _mi124;
               _lc3908 = irrcrpt(_am6925 + "operators.xml",0);
               break;
            case "esp":
            default:
               _yg212 = _dw1395._me6934;
               _qs3725 = _gk8815;
               _lc3908 = irrcrpt(_am6925 + "operators.xml",0);
         }
         if(_ih15806)
         {
            _lc3908 = irrcrpt(_am6925 + "operators.xml",0);
         }
      }
   }
}

