package src.utils
{
   import flash.geom.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.tv.boombang.core.datatypes.Tile;
   
   public class _du9251
   {
      
      public static const RIGHT:int = 1;
      
      public static const LEFT:int = 2;
      
      public static const UP:int = 3;
      
      public static const DOWN:int = 4;
      
      public static const _df2382:int = 5;
      
      public static const _ub10256:int = 6;
      
      public static const _xd11715:int = 7;
      
      public static const _cc7964:int = 8;
      
      public static const _fi15041:int = 10;
      
      public static const _xx8457:int = 11;
      
      public static const _ek10643:int = 12;
      
      public static const _fe5212:int = 13;
      
      public static const _yt2709:int = 14;
      
      public static const _sv7120:int = 15;
      
      public static const _pw5353:int = 16;
      
      public static const _fm1208:int = 17;
      
      public static const _pc15892:int = 18;
      
      public static const _yl13656:int = 19;
      
      public static const _ul1883:int = 0;
      
      public static const _ap5392:int = 1;
      
      public static const _vj7086:int = 2;
      
      private var _bl11315:_il6324;
      
      private var _ma6863:Array;
      
      private var _aa14925:Array;
      
      private var _df11121:Array;
      
      private var _nd12381:Array;
      
      private var _wj3504:Array;
      
      private var _qk2895:int;
      
      public function _du9251()
      {
         super();
         this._df11121 = new Array();
         this._df11121[RIGHT] = [RIGHT,_pc15892,_yl13656,UP,DOWN,_ub10256,_cc7964,LEFT];
         this._df11121[LEFT] = [LEFT,_pw5353,_fm1208,UP,DOWN,_df2382,_xd11715,RIGHT];
         this._df11121[UP] = [UP,_fi15041,_xx8457,_ek10643,_fe5212,_yt2709,_sv7120,DOWN];
         this._df11121[DOWN] = [DOWN,_yt2709,_xx8457,_sv7120,_fe5212,_fi15041,_ek10643,UP];
         this._df11121[_df2382] = [_df2382,UP,RIGHT,_xd11715,_ub10256,DOWN,LEFT,_cc7964];
         this._df11121[_ub10256] = [_ub10256,UP,LEFT,_cc7964,_df2382,DOWN,RIGHT,_xd11715];
         this._df11121[_xd11715] = [_xd11715,DOWN,RIGHT,_df2382,_cc7964,UP,LEFT,_ub10256];
         this._df11121[_cc7964] = [_cc7964,DOWN,LEFT,_ub10256,_xd11715,UP,RIGHT,_df2382];
         this._nd12381 = new Array();
         this._js11770(this._nd12381,RIGHT,1,1,1,1);
         this._js11770(this._nd12381,LEFT,-1,-1,-1,-1);
         this._js11770(this._nd12381,UP,1,1,1,1);
         this._js11770(this._nd12381,DOWN,-1,-1,-1,-1);
         this._js11770(this._nd12381,_df2382,1,1,1,1);
         this._js11770(this._nd12381,_ub10256,0,0,0,0);
         this._js11770(this._nd12381,_xd11715,0,0,0,0);
         this._js11770(this._nd12381,_cc7964,-1,-1,-1,-1);
         this._js11770(this._nd12381,_fi15041,0,0,1,1);
         this._js11770(this._nd12381,_xx8457,-1,-1,1,1);
         this._js11770(this._nd12381,_ek10643,1,1,0,0);
         this._js11770(this._nd12381,_fe5212,1,1,-1,-1);
         this._js11770(this._nd12381,_yt2709,-1,-1,0,0);
         this._js11770(this._nd12381,_sv7120,0,0,-1,-1);
         this._js11770(this._nd12381,_pw5353,0,-1,0,-1);
         this._js11770(this._nd12381,_fm1208,-1,0,-1,0);
         this._js11770(this._nd12381,_pc15892,1,0,1,0);
         this._js11770(this._nd12381,_yl13656,0,1,0,1);
         this._wj3504 = new Array();
         this._js11770(this._wj3504,RIGHT,1,1,1,1);
         this._js11770(this._wj3504,LEFT,-1,-1,-1,-1);
         this._js11770(this._wj3504,UP,-1,-1,-1,-1);
         this._js11770(this._wj3504,DOWN,1,1,1,1);
         this._js11770(this._wj3504,_df2382,0,0,0,0);
         this._js11770(this._wj3504,_ub10256,-1,-1,-1,-1);
         this._js11770(this._wj3504,_xd11715,1,1,1,1);
         this._js11770(this._wj3504,_cc7964,0,0,0,0);
         this._js11770(this._wj3504,_fi15041,-1,-1,0,0);
         this._js11770(this._wj3504,_xx8457,-1,-1,1,1);
         this._js11770(this._wj3504,_ek10643,0,0,-1,-1);
         this._js11770(this._wj3504,_fe5212,1,1,-1,-1);
         this._js11770(this._wj3504,_yt2709,0,0,1,1);
         this._js11770(this._wj3504,_sv7120,1,1,0,0);
         this._js11770(this._wj3504,_pw5353,-1,0,-1,0);
         this._js11770(this._wj3504,_fm1208,0,-1,0,-1);
         this._js11770(this._wj3504,_pc15892,0,1,0,1);
         this._js11770(this._wj3504,_yl13656,1,0,1,0);
      }
      
      private function _js11770(param1:Array, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         param1[param2] = new Array();
         param1[param2][LEFT] = new Array();
         param1[param2][RIGHT] = new Array();
         param1[param2][LEFT][UP] = param3;
         param1[param2][LEFT][DOWN] = param4;
         param1[param2][RIGHT][UP] = param5;
         param1[param2][RIGHT][DOWN] = param6;
      }
      
      public function _qh4523(param1:int, param2:int, param3:Array, param4:int, param5:int, param6:_il6324) : Array
      {
         var _loc7_:Tile = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(param1 == 0 || param2 == 0)
         {
            return null;
         }
         this._bl11315 = param6;
         if(param1 == param4 && param2 == param5)
         {
            return null;
         }
         this._ma6863 = _xv14798._vd15929(param6._ma6863);
         for each(_loc7_ in param3)
         {
            this._ma6863[_loc7_._oc14271][_loc7_._ch15801] = _mc137.TIERRA;
         }
         this._aa14925 = new Array();
         _loc9_ = param1;
         _loc10_ = param2;
         this._qk2895 = _mc137._ew12008;
         while(_loc9_ != param4 || _loc10_ != param5)
         {
            _loc8_ = Boolean(this._qa3134(_loc9_,_loc10_,param3,param4,param5));
            if(_loc8_)
            {
               return null;
            }
            _loc11_ = int(this._aa14925.length);
            if(_loc11_ > 1)
            {
               _loc9_ = int(this._aa14925[_loc11_ - 3]);
               _loc10_ = int(this._aa14925[_loc11_ - 2]);
            }
            else
            {
               _loc9_ = param1;
               _loc10_ = param2;
            }
         }
         this._ma6863 = _xv14798._vd15929(param6._ma6863);
         this._aa14925 = this._jr16031(param1,param2,param3,this._aa14925);
         return this._aa14925;
      }
      
      private function _nj4446(param1:int, param2:int, param3:int, param4:int) : int
      {
         if(param1 + param2 <= param3 + param3)
         {
            return RIGHT;
         }
         return LEFT;
      }
      
      private function _vr1891(param1:int, param2:int, param3:int, param4:int) : int
      {
         var _loc5_:Point = _il6324.getPlotXY(new Point(param1,param2));
         var _loc6_:Point = _il6324.getPlotXY(new Point(param3,param4));
         if(_loc5_.y < _loc6_.y)
         {
            return DOWN;
         }
         return UP;
      }
      
      private function _is11891(param1:int, param2:int, param3:int, param4:int) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = param3 - param1;
         var _loc7_:int = param4 - param2;
         if(_loc6_ > 0)
         {
            if(_loc7_ < 0)
            {
               _loc5_ = UP;
            }
            if(_loc7_ == 0)
            {
               _loc5_ = _df2382;
            }
            if(_loc7_ > 0)
            {
               _loc5_ = RIGHT;
            }
         }
         else if(_loc6_ == 0)
         {
            if(_loc7_ < 0)
            {
               _loc5_ = _ub10256;
            }
            if(_loc7_ > 0)
            {
               _loc5_ = _xd11715;
            }
         }
         else if(_loc6_ < 0)
         {
            if(_loc7_ < 0)
            {
               _loc5_ = LEFT;
            }
            if(_loc7_ == 0)
            {
               _loc5_ = _cc7964;
            }
            if(_loc7_ > 0)
            {
               _loc5_ = DOWN;
            }
         }
         return _loc5_;
      }
      
      private function _wu12340(param1:int, param2:int, param3:int) : int
      {
         switch(param1)
         {
            case UP:
               return UP;
            case DOWN:
               return DOWN;
            case LEFT:
               return LEFT;
            case RIGHT:
               return RIGHT;
            case _ub10256:
               return _ub10256;
            case _cc7964:
               return _cc7964;
            case _xd11715:
               return _xd11715;
            case _df2382:
               return _df2382;
            case _fi15041:
               if(param2 == LEFT)
               {
                  return _ub10256;
               }
               return _df2382;
               break;
            case _ek10643:
               if(param2 == LEFT)
               {
                  return _df2382;
               }
               return _ub10256;
               break;
            case _xx8457:
               if(param2 == LEFT)
               {
                  return LEFT;
               }
               return RIGHT;
               break;
            case _fe5212:
               if(param2 == LEFT)
               {
                  return RIGHT;
               }
               return LEFT;
               break;
            case _yt2709:
               if(param2 == LEFT)
               {
                  return _cc7964;
               }
               return _xd11715;
               break;
            case _sv7120:
               if(param2 == LEFT)
               {
                  return _xd11715;
               }
               return _cc7964;
               break;
            case _pw5353:
               if(param3 == UP)
               {
                  return _ub10256;
               }
               return _cc7964;
               break;
            case _fm1208:
               if(param3 == UP)
               {
                  return _cc7964;
               }
               return _ub10256;
               break;
            case _pc15892:
               if(param3 == UP)
               {
                  return _df2382;
               }
               return _xd11715;
               break;
            case _yl13656:
               if(param3 == UP)
               {
                  return _xd11715;
               }
               return _df2382;
               break;
            default:
               return 0;
         }
      }
      
      private function _hl5406(param1:int, param2:int) : int
      {
         switch(param2)
         {
            case _df2382:
            case _cc7964:
               switch(param1)
               {
                  case DOWN:
                  case RIGHT:
                     return _xd11715;
                  case LEFT:
                  case UP:
                     return _ub10256;
               }
               break;
            case _ub10256:
            case _xd11715:
               switch(param1)
               {
                  case LEFT:
                  case DOWN:
                     return _cc7964;
                  case UP:
                  case RIGHT:
                     return _df2382;
               }
               break;
            case RIGHT:
            case LEFT:
               switch(param1)
               {
                  case LEFT:
                  case RIGHT:
                  case UP:
                     return UP;
                  case DOWN:
                     return DOWN;
               }
               break;
            case UP:
               switch(param1)
               {
                  case LEFT:
                  case DOWN:
                     return _cc7964;
                  case RIGHT:
                     return _xd11715;
               }
               break;
            case DOWN:
               switch(param1)
               {
                  case UP:
                  case RIGHT:
                     return _df2382;
                  case LEFT:
                     return _ub10256;
               }
         }
         return 0;
      }
      
      private function _nc9066(param1:int, param2:int) : int
      {
         switch(param2)
         {
            case _df2382:
            case _cc7964:
               switch(param1)
               {
                  case _cc7964:
                  case _xd11715:
                     return _xd11715;
                  case _ub10256:
                  case _df2382:
                     return _ub10256;
               }
               break;
            case _ub10256:
            case _xd11715:
               switch(param1)
               {
                  case _cc7964:
                  case _ub10256:
                     return _cc7964;
                  case _df2382:
                  case _xd11715:
                     return _df2382;
               }
               break;
            case RIGHT:
            case LEFT:
               switch(param1)
               {
                  case _df2382:
                     return _df2382;
                  case _cc7964:
                     return _cc7964;
                  case _ub10256:
                     return _ub10256;
                  case _xd11715:
                     return _xd11715;
               }
               break;
            case UP:
            case DOWN:
               switch(param1)
               {
                  case _df2382:
                     return _df2382;
                  case _xd11715:
                     return _xd11715;
                  case _cc7964:
                     return _cc7964;
                  case _ub10256:
                     return _ub10256;
               }
         }
         return 0;
      }
      
      private function _bp15020(param1:int, param2:int, param3:Array, param4:int, param5:int) : Boolean
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:Boolean = true;
         while(_loc10_ < param3.length && _loc9_)
         {
            _loc7_ = param1 + param3[_loc10_]["x"];
            _loc8_ = param2 + param3[_loc10_]["y"];
            _loc6_ = int(this._ma6863[_loc8_][_loc7_]);
            if(_mc137._il6498.indexOf(_loc6_) == -1)
            {
               _loc9_ = false;
            }
            _loc10_++;
         }
         return _loc9_;
      }
      
      private function _qa3134(param1:int, param2:int, param3:Array, param4:int, param5:int) : Boolean
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = false;
         var _loc13_:int = param1;
         var _loc14_:int = param2;
         var _loc15_:int = int(this._nj4446(_loc13_,_loc14_,param4,param5));
         var _loc16_:int = int(this._vr1891(_loc13_,_loc14_,param4,param5));
         var _loc17_:int = int(this._is11891(_loc13_,_loc14_,param4,param5));
         while(!_loc20_)
         {
            _loc6_ = int(this._df11121[_loc17_][_loc18_]);
            _loc7_ = int(this._nd12381[_loc6_][_loc15_][_loc16_]);
            _loc8_ = int(this._wj3504[_loc6_][_loc15_][_loc16_]);
            _loc9_ = int(this._wu12340(_loc6_,_loc15_,_loc16_));
            if(_loc19_ && _loc18_ > 0)
            {
               switch(_loc17_)
               {
                  case UP:
                  case DOWN:
                  case LEFT:
                  case RIGHT:
                     _loc12_ = int(this._hl5406(_loc17_,_loc9_));
                     break;
                  case _df2382:
                  case _xd11715:
                  case _ub10256:
                  case _cc7964:
                     _loc12_ = int(this._nc9066(_loc17_,_loc9_));
               }
               _loc10_ = int(this._nd12381[_loc12_][_loc15_][_loc16_]);
               _loc11_ = int(this._wj3504[_loc12_][_loc15_][_loc16_]);
               if(this._bp15020(_loc13_ + 1 * _loc10_,_loc14_ + 1 * _loc11_,param3,param4,param5))
               {
                  _loc20_ = true;
               }
            }
            if(Boolean(this._bp15020(_loc13_ + 1 * _loc7_,_loc14_ + 1 * _loc8_,param3,param4,param5)) && !_loc20_)
            {
               this._ma6863[_loc14_][_loc13_] = this._qk2895;
               _loc13_ += 1 * _loc7_;
               _loc14_ += 1 * _loc8_;
               this._aa14925.push(_loc13_);
               this._aa14925.push(_loc14_);
               this._aa14925.push(_loc9_);
               _loc19_ = true;
               switch(_loc17_)
               {
                  case UP:
                  case DOWN:
                  case LEFT:
                  case RIGHT:
                     if(_loc13_ == param4 || _loc14_ == param5)
                     {
                        _loc20_ = true;
                     }
                     break;
                  case _ub10256:
                  case _cc7964:
                  case _df2382:
                  case _xd11715:
                     if(_loc13_ == param4 && _loc14_ == param5)
                     {
                        _loc20_ = true;
                     }
               }
            }
            else if(_loc19_)
            {
               _loc20_ = true;
            }
            if(!_loc19_)
            {
               _loc18_++;
            }
            if(_loc18_ == 8)
            {
               _loc20_ = true;
               this._ma6863[_loc14_][_loc13_] = this._qk2895;
               if(this._aa14925.length == 0)
               {
                  return true;
               }
               this._aa14925.pop();
               this._aa14925.pop();
               this._aa14925.pop();
            }
         }
         return false;
      }
      
      private function _jr16031(param1:int, param2:int, param3:Array, param4:Array) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc7_:Array = _xv14798._vc10061(param4);
         _loc7_.splice(0,0,0);
         _loc7_.splice(0,0,param2);
         _loc7_.splice(0,0,param1);
         while(!_loc8_)
         {
            _loc5_ = _loc7_.length / 3 - 1;
            _loc6_ = _ul1883;
            while(_loc6_ != _ap5392 && _loc9_ < _loc5_)
            {
               _loc6_ = int(this._rt10355(_loc9_,_loc5_,param3,_loc7_));
               _loc5_--;
            }
            if(++_loc9_ >= _loc7_.length / 3)
            {
               _loc8_ = true;
            }
         }
         _loc7_.shift();
         _loc7_.shift();
         _loc7_.shift();
         return _loc7_;
      }
      
      private function _rt10355(param1:int, param2:int, param3:Array, param4:Array) : int
      {
         var _loc5_:int = int(param4[param1 * 3]);
         var _loc6_:int = int(param4[param1 * 3 + 1]);
         var _loc7_:int = int(param4[param2 * 3]);
         var _loc8_:int = int(param4[param2 * 3 + 1]);
         var _loc9_:Array = this._ew2174(_loc5_,_loc6_,param3,_loc7_,_loc8_);
         var _loc10_:int = param2 - param1;
         var _loc11_:int = _loc9_.length / 3;
         if(_loc11_ != 0)
         {
            if(_loc11_ < _loc10_)
            {
               this._ck2203(param1,param2,param4,_loc9_);
               return _ap5392;
            }
            return _vj7086;
         }
         return _ul1883;
      }
      
      private function _ew2174(param1:int, param2:int, param3:Array, param4:int, param5:int) : Array
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Array = this._hl5777(param1,param2,param3,param4,param5,0);
         if(_loc9_.length == 0)
         {
            _loc9_ = this._hl5777(param1,param2,param3,param4,param5,1);
            if(_loc9_.length == 0)
            {
               _loc9_ = this._hl5777(param1,param2,param3,param4,param5,2);
               if(_loc9_.length == 0)
               {
                  return _loc9_;
               }
            }
         }
         var _loc10_:int = int(_loc9_[_loc9_.length - 3]);
         var _loc11_:int = int(_loc9_[_loc9_.length - 2]);
         if(_loc10_ == param4 && _loc11_ == param5)
         {
            return _loc9_;
         }
         _loc6_ = this._hl5777(_loc10_,_loc11_,param3,param4,param5,0);
         if(_loc6_.length == 0)
         {
            return _loc6_;
         }
         _loc10_ = int(_loc6_[_loc6_.length - 3]);
         _loc11_ = int(_loc6_[_loc6_.length - 2]);
         if(_loc10_ == param4 && _loc11_ == param5)
         {
            _loc7_ = int(_loc6_.length);
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc9_.push(_loc6_[_loc8_]);
               _loc8_++;
            }
            return _loc9_;
         }
         return new Array();
      }
      
      private function _hl5777(param1:int, param2:int, param3:Array, param4:int, param5:int, param6:int) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc20_:Boolean = false;
         var _loc10_:int = param1;
         var _loc11_:int = param2;
         var _loc12_:int = int(this._nj4446(_loc10_,_loc11_,param4,param5));
         var _loc13_:int = int(this._vr1891(_loc10_,_loc11_,param4,param5));
         var _loc14_:int = int(this._is11891(_loc10_,_loc11_,param4,param5));
         var _loc15_:int = int(this._df11121[_loc14_][param6]);
         var _loc16_:int = int(this._nd12381[_loc15_][_loc12_][_loc13_]);
         var _loc17_:int = int(this._wj3504[_loc15_][_loc12_][_loc13_]);
         var _loc18_:int = int(this._wu12340(_loc15_,_loc12_,_loc13_));
         var _loc19_:Array = new Array();
         while(!_loc20_)
         {
            _loc7_ = false;
            _loc8_ = false;
            _loc9_ = int(this._ma6863[_loc11_ + 1 * _loc17_][_loc10_ + 1 * _loc16_]);
            if(_mc137._il6498.indexOf(_loc9_) != -1)
            {
               _loc7_ = true;
            }
            if(_mc137._ks11503.indexOf(_loc9_) != -1 && _loc11_ + 1 * _loc17_ == param5 && _loc10_ + 1 * _loc16_ == param4)
            {
               _loc8_ = true;
            }
            if(!this._bp15020(_loc10_ + 1 * _loc16_,_loc11_ + 1 * _loc17_,param3,param4,param5))
            {
               return new Array();
            }
            _loc10_ += 1 * _loc16_;
            _loc11_ += 1 * _loc17_;
            _loc19_.push(_loc10_);
            _loc19_.push(_loc11_);
            _loc19_.push(_loc18_);
            if(_loc18_ != UP && _loc18_ != DOWN && _loc11_ + _loc10_ == param4 + param5)
            {
               _loc20_ = true;
            }
            switch(_loc14_)
            {
               case UP:
               case DOWN:
               case LEFT:
               case RIGHT:
                  if(_loc10_ == param4 || _loc11_ == param5)
                  {
                     _loc20_ = true;
                  }
                  break;
               case _ub10256:
               case _cc7964:
               case _df2382:
               case _xd11715:
                  if(_loc10_ == param4 && _loc11_ == param5)
                  {
                     _loc20_ = true;
                  }
            }
         }
         return _loc19_;
      }
      
      private function _ck2203(param1:int, param2:int, param3:Array, param4:Array) : void
      {
         var _loc5_:int = 0;
         _loc5_ = param1;
         while(_loc5_ < param2)
         {
            param3.splice(3 * (param1 + 1),1);
            param3.splice(3 * (param1 + 1),1);
            param3.splice(3 * (param1 + 1),1);
            _loc5_++;
         }
         var _loc6_:int = param4.length / 3;
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            param3.splice(3 * (param1 + 1) + _loc5_ * 3,0,param4[2 + 3 * _loc5_]);
            param3.splice(3 * (param1 + 1) + _loc5_ * 3,0,param4[1 + 3 * _loc5_]);
            param3.splice(3 * (param1 + 1) + _loc5_ * 3,0,param4[0 + 3 * _loc5_]);
            _loc5_++;
         }
      }
   }
}

