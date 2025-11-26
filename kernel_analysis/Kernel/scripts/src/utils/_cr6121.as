package src.utils
{
   import flash.utils.*;
   import src.config.*;
   
   public class _cr6121
   {
      
      private static var _ku1328:Array;
      
      private static var _rt5513:Array;
      
      private static var _mw3857:String;
      
      private static var _kx10867:Array;
      
      private static var _rj15606:Array;
      
      private static var _wx8881:Dictionary;
      
      private static var _hj6098:Dictionary;
      
      private static var _jk737:Dictionary;
      
      private static const _da4719:String = String.fromCharCode(13);
      
      private static const _wn2448:String = " ";
      
      public function _cr6121()
      {
         super();
      }
      
      public static function init() : void
      {
         var _loc1_:int = 0;
         _mw3857 = "#$%&/()?_;:.,<>+-*ªº=[]{}¿!ç\'~";
         _ku1328 = ["á","é","í","ó","ú","à","è","ì","ò","ù","â","@","0","5","1","4","!","+","7","Ñ","ª","3"];
         _rt5513 = ["a","e","i","o","u","a","e","i","o","u","a","a","o","s","i","a","i","t","t","ñ","a","e"];
         switch(_cc7688._qs3725)
         {
            case _cc7688._mi124:
            case _cc7688._gk8815:
            case _cc7688._uo6813:
               _kx10867 = [];
               _rj15606 = [];
               break;
            case _cc7688._gl650:
               _kx10867 = [];
               _rj15606 = [];
         }
         _do6879(_kx10867);
         _do6879(_rj15606);
         _wx8881 = new Dictionary();
         _hj6098 = new Dictionary();
         _jk737 = new Dictionary();
         _loc1_ = 0;
         while(_loc1_ < _ku1328.length)
         {
            _wx8881[_ku1328[_loc1_]] = _rt5513[_loc1_];
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _rj15606.length)
         {
            _hj6098[_rj15606[_loc1_]] = 1;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _mw3857.length)
         {
            _jk737[_mw3857.charAt(_loc1_)] = 1;
            _loc1_++;
         }
      }
      
      private static function _do6879(param1:Array) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(param1.length);
         while(_loc3_ < _loc2_)
         {
            param1[_loc3_] = _qy5719(param1[_loc3_]);
            _loc3_++;
         }
      }
      
      private static function _qy5719(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1.length;
         var _loc3_:* = "";
         while(_loc4_ < _loc2_)
         {
            _loc3_ += String.fromCharCode(param1.charCodeAt(_loc4_) + 30);
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function _vg15769(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1.length;
         var _loc3_:* = "";
         while(_loc4_ < _loc2_)
         {
            _loc3_ += String.fromCharCode(param1.charCodeAt(_loc4_) - 30);
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function _px12349(param1:String) : String
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = _mh12058(param1).toLowerCase();
         if(_loc4_.length > 0 && _hj6098[_qy5719(_loc4_)] != null)
         {
            _loc2_ = param1.length;
            param1 = "";
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               param1 += ".";
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function _ko10046(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc9_:int = 0;
         var _loc7_:Array = new Array();
         var _loc8_:* = "";
         var _loc10_:int = param1.length;
         while(_loc9_ < _loc10_)
         {
            _loc3_ = param1.charAt(_loc9_);
            if(_loc3_ != " ")
            {
               _loc4_ = _loc9_;
               while(_loc3_ != " " && _loc9_ < _loc10_)
               {
                  if(++_loc9_ < _loc10_)
                  {
                     _loc3_ = param1.charAt(_loc9_);
                  }
                  else
                  {
                     _loc3_ = "";
                  }
               }
               _loc5_ = _loc9_;
               _loc6_ = param1.slice(_loc4_,_loc5_);
               _loc6_ = _px12349(_loc6_);
               _loc8_ += _loc6_;
            }
            else
            {
               _loc8_ += _loc3_;
               _loc9_++;
            }
         }
         return _loc8_;
      }
      
      private static function _mh12058(param1:String, param2:Array = null) : String
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = param1.length;
         var _loc7_:* = "";
         _loc3_ = 0;
         while(_loc3_ < _loc5_)
         {
            _loc4_ = param1.charAt(_loc3_).toLowerCase();
            if(_wx8881[_loc4_] != null)
            {
               _loc4_ = _wx8881[_loc4_];
            }
            if(_loc4_ != _loc7_)
            {
               if(_jk737[_loc4_] == null && _loc4_ != _wn2448 && _loc4_ != _da4719)
               {
                  if(param2 != null)
                  {
                     param2["".length] = _loc3_;
                  }
                  var _loc6_:* = "" + _loc4_;
               }
            }
            _loc7_ = _loc4_;
            _loc3_++;
         }
         return "";
      }
      
      private static function _oq1209(param1:String) : String
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:String = null;
         var _loc10_:Array = new Array();
         var _loc11_:int = param1.length;
         var _loc12_:String = _mh12058(param1,_loc10_);
         _loc12_ = _loc12_.toLowerCase();
         for each(_loc4_ in _kx10867)
         {
            _loc4_ = _vg15769(_loc4_);
            _loc5_ = int(_loc12_.indexOf(_loc4_));
            while(_loc5_ >= 0)
            {
               _loc6_ = int(_loc10_[_loc5_]);
               if(_loc5_ + _loc4_.length < _loc10_.length)
               {
                  _loc7_ = int(_loc10_[_loc5_ + _loc4_.length]);
               }
               else
               {
                  _loc7_ = _loc11_;
               }
               _loc8_ = "";
               _loc9_ = param1.slice(_loc6_,_loc7_);
               _loc2_ = 0;
               while(_loc2_ < _loc9_.length)
               {
                  _loc3_ = _loc9_.charAt(_loc2_);
                  if(_loc3_ == _wn2448 || _loc3_ == _da4719)
                  {
                     _loc8_ += _loc3_;
                  }
                  else
                  {
                     _loc8_ += ".";
                  }
                  _loc2_++;
               }
               param1 = param1.slice(0,_loc6_) + _loc8_ + param1.slice(_loc7_,_loc11_);
               _loc8_ = "";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc8_ += ".";
                  _loc2_++;
               }
               _loc12_ = _loc12_.slice(0,_loc5_) + _loc8_ + _loc12_.slice(_loc5_ + _loc4_.length);
               _loc5_ = int(_loc12_.indexOf(_loc4_,_loc5_));
            }
         }
         return param1;
      }
      
      private static function _jk13441(param1:String) : String
      {
         return _oq1209(param1);
      }
      
      public static function _bg5268(param1:String) : String
      {
         if(param1 != null)
         {
            param1 = _jk13441(param1);
            param1 = _ko10046(param1);
         }
         return param1;
      }
   }
}

