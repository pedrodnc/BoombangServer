package src.allData.scene
{
   import flash.geom.*;
   import src.allData.color.*;
   import src.allData.scene.skins.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.logs.*;
   import src.modules.doors.*;
   import src.utils.*;
   
   public class _mq2583
   {
      
      public static const _he9368:String = "matrix";
      
      public static const _ws9520:String = "row";
      
      public static const _vg12765:String = "coordenates";
      
      public static const _oy14332:String = "ledScreen";
      
      public static const _oc14017:String = "layers";
      
      public static const _sx12935:String = "layer";
      
      public static const _tc3054:String = "colors";
      
      public static const _cj6372:String = "color";
      
      public static const _pn7725:String = "colorsRef";
      
      public static const _mm12778:String = "colorRef";
      
      public static const _xw9221:String = "trampas";
      
      public static const _gw9071:String = "trampa";
      
      public static const _gu15430:String = "maxFlyHeights";
      
      public static const _pv14851:String = "maxFlyHeight";
      
      public static const _ov199:String = "iconos";
      
      public static const _xq12397:String = "skins";
      
      public static const _cw5802:String = "skins";
      
      public static const _gy8194:String = "id";
      
      public static const _oc4011:String = "alpha";
      
      public static const _sa8798:String = "scale";
      
      public static const _gs2071:String = "maxBBoxHeight";
      
      public static const _us13319:String = "insideObject";
      
      public static const _la8719:String = "id";
      
      public static const _bh8353:String = "data";
      
      public static const _nu9816:String = "x";
      
      public static const _qp1287:String = "y";
      
      public static const _rx7003:String = "id";
      
      public static const _lb4235:String = "name";
      
      public static const _vn15155:String = "idprof";
      
      public static const _jj15744:String = "regpointx";
      
      public static const _cu4063:String = "regpointy";
      
      public static const _rg7797:String = "idcolor";
      
      public static const _iu12149:String = "idcolorbd";
      
      public static const _tb11356:String = "namePart";
      
      public static const _rq6882:String = "locz";
      
      public static const _yu13137:String = "type";
      
      public static const _ha4100:String = "id";
      
      public static const _mi13674:String = "rgb";
      
      public static const _mg11699:String = "alpha";
      
      public static const _tb3116:String = "pointx";
      
      public static const _nl14061:String = "pointy";
      
      public static const _lu13119:String = "name";
      
      public static const _gr5882:String = "idAlpha";
      
      public static const _di14380:String = "xFrom";
      
      public static const _ll5561:String = "xTo";
      
      public static const _mh7620:String = "yDelta";
      
      public static const _sg13246:String = "iconoCompra";
      
      public static const _rv4676:String = "iconoCatalogo";
      
      public static const _xo10620:String = "iconoCandado";
      
      public static const _bc11447:String = "idGame";
      
      public static const _vy10037:String = "grupoScene";
      
      public static const _fe4321:String = "id";
      
      public static const _mh2588:String = "puertas";
      
      public static const _kc9635:String = "id";
      
      public static const _mc8926:String = "name";
      
      public static const _bi763:String = "backDoor";
      
      public static const _iu15815:String = "objectsSkineables";
      
      public static const _gm635:String = "templates";
      
      public static const _vm14903:String = "elements";
      
      public static const _lm2841:String = "skins";
      
      public static const _ca15636:String = "id";
      
      public static const _we6900:String = "name";
      
      public static const _yi12836:String = "id";
      
      public static const _ig8896:String = "name";
      
      public static const _fh14490:String = "member";
      
      public static const _xc2795:String = "id";
      
      public static const _kx1568:String = "type";
      
      public static const _np6968:String = "default";
      
      public static const _yb10531:String = "nameMenu";
      
      public static const _og12952:String = "id";
      
      public static const _lg15284:String = "name";
      
      public static const _qk15214:String = "id";
      
      public static const _yi9866:String = "name";
      
      public static const _rl12354:String = "namePart";
      
      public static const _ls5551:String = "namePartColor";
      
      public static const _ww9185:String = "name";
      
      public static const _lw3383:String = "idprof";
      
      public static const _uu13643:String = "regpointx";
      
      public static const _og5080:String = "regpointy";
      
      public static const _td2528:String = "idcolor";
      
      public function _mq2583()
      {
         super();
      }
      
      public static function _co4151(param1:XML) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:int = 0;
         var _loc10_:int = 0;
         var _loc7_:Array = new Array();
         var _loc8_:XMLList = param1[_oc14017].children();
         var _loc9_:int = int(_loc8_.length());
         while(_loc10_ < _loc9_)
         {
            _loc2_ = int(_loc8_[_loc10_].attribute(_rx7003));
            _loc3_ = _loc8_[_loc10_].attribute(_lb4235);
            _loc4_ = int(_loc8_[_loc10_].attribute(_vn15155));
            _loc5_ = new Point(int(_loc8_[_loc10_].attribute(_jj15744)),int(_loc8_[_loc10_].attribute(_cu4063)));
            _loc6_ = 0;
            if(_loc8_[_loc10_].attribute(_rq6882))
            {
               _loc6_ = int(_loc8_[_loc10_].attribute(_rq6882));
            }
            _loc7_.push(new _lr1664(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_));
            _loc10_++;
         }
         return _loc7_;
      }
      
      public static function _ts14659(param1:XML) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc13_:int = 0;
         var _loc10_:XMLList = param1[_oc14017].children();
         var _loc11_:Array = new Array();
         var _loc12_:int = int(_loc10_.length());
         while(_loc13_ < _loc12_)
         {
            _loc2_ = int(_loc10_[_loc13_].attribute(_rx7003));
            _loc3_ = _loc10_[_loc13_].attribute(_lb4235);
            _loc4_ = int(_loc10_[_loc13_].attribute(_vn15155));
            _loc5_ = new Point(int(_loc10_[_loc13_].attribute(_jj15744)),int(_loc10_[_loc13_].attribute(_cu4063)));
            _loc6_ = int(_loc10_[_loc13_].attribute(_rg7797));
            _loc7_ = String(_loc10_[_loc13_].attribute(_tb11356));
            _loc8_ = 0;
            if(_loc10_[_loc13_].attribute(_rq6882))
            {
               _loc8_ = int(_loc10_[_loc13_].attribute(_rq6882));
            }
            _loc9_ = int(_sb1993._he3099);
            if(_loc10_[_loc13_].attribute(_yu13137))
            {
               _loc9_ = int(_loc10_[_loc13_].attribute(_yu13137));
            }
            _loc11_.push(new _xd7248(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc8_,_loc9_,_loc7_));
            _loc13_++;
         }
         return _loc11_;
      }
      
      public static function _ej14723(param1:XML) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XMLList = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:_pn12847 = null;
         var _loc16_:String = null;
         var _loc17_:XMLList = param1[_xq12397].children();
         var _loc18_:Array = new Array();
         var _loc19_:int = int(_loc17_.length());
         while(0 < _loc19_)
         {
            _loc2_ = int(_loc17_[0].attribute(_qk15214));
            _loc3_ = _loc17_[0].attribute(_yi9866);
            _loc4_ = _loc17_[0].attribute(_rl12354);
            _loc5_ = new Array();
            _loc6_ = _loc17_[0].children();
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length())
            {
               _loc8_ = _loc6_[_loc7_].attribute(_ww9185);
               _loc9_ = int(_loc6_[_loc7_].attribute(_lw3383));
               _loc10_ = int(_loc6_[_loc7_].attribute(_uu13643));
               _loc11_ = int(_loc6_[_loc7_].attribute(_og5080));
               _loc12_ = int(_loc6_[_loc7_].attribute(_td2528));
               _loc13_ = _loc6_[_loc7_].attribute(_rl12354);
               _loc14_ = _loc6_[_loc7_].attribute(_ls5551);
               _loc15_ = _ev15420(param1,_loc12_);
               _loc16_ = _qi4067(param1,_loc12_);
               _loc5_.push(new _ys12811(_loc8_,_loc9_,new Point(_loc10_,_loc11_),_loc12_,_loc13_,_loc14_,_loc15_,_loc16_));
               _loc7_++;
            }
            _loc18_.push(new _sy9767(_loc2_,_loc3_,_loc4_,_loc5_));
            _loc20_++;
         }
         return _loc18_;
      }
      
      public static function _hn13069(param1:XML, param2:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:XMLList = null;
         var _loc8_:int = 0;
         var _loc9_:_ld6048 = null;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:Array = null;
         var _loc14_:XMLList = null;
         var _loc15_:int = 0;
         var _loc16_:_hf3886 = null;
         var _loc17_:int = 0;
         var _loc18_:String = null;
         var _loc19_:int = 0;
         var _loc20_:String = null;
         var _loc21_:Array = null;
         var _loc22_:XMLList = null;
         var _loc23_:int = 0;
         var _loc24_:_gi15767 = null;
         var _loc25_:int = 0;
         var _loc26_:String = null;
         var _loc27_:_sy9767 = null;
         var _loc28_:_am1056 = null;
         var _loc29_:Array = new Array();
         var _loc30_:XMLList = param1[_iu15815].children();
         if(_loc30_ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc30_.length())
            {
               _loc4_ = int(_loc30_[_loc3_].attribute(_ca15636));
               _loc5_ = _loc30_[_loc3_].attribute(_we6900);
               _loc6_ = new Array();
               _loc7_ = _loc30_[_loc3_][_gm635].children();
               _loc8_ = 0;
               while(_loc8_ < _loc7_.length())
               {
                  _loc10_ = int(_loc7_[_loc8_].attribute(_yi12836));
                  _loc11_ = _loc7_[_loc8_].attribute(_ig8896);
                  _loc12_ = Boolean(int(_loc7_[_loc8_].attribute(_fh14490)));
                  _loc13_ = new Array();
                  _loc14_ = _loc7_[_loc8_][_vm14903].children();
                  _loc15_ = 0;
                  while(_loc15_ < _loc14_.length())
                  {
                     _loc17_ = int(_loc14_[_loc15_].attribute(_xc2795));
                     _loc18_ = _loc14_[_loc15_].attribute(_kx1568);
                     _loc19_ = int(_loc14_[_loc15_].attribute(_np6968));
                     _loc20_ = _loc14_[_loc15_].attribute(_yb10531);
                     _loc21_ = new Array();
                     _loc22_ = _loc14_[_loc15_][_lm2841].children();
                     _loc23_ = 0;
                     while(_loc23_ < _loc22_.length())
                     {
                        _loc25_ = int(_loc22_[_loc23_].attribute(_og12952));
                        _loc26_ = _loc22_[_loc23_].attribute(_lg15284);
                        _loc27_ = _sy9767._ay12276(param2,_loc25_);
                        if(_loc27_ != null)
                        {
                           _loc28_ = new _am1056(_loc25_,_loc26_,_loc27_);
                           _loc21_.push(_loc28_);
                        }
                        else
                        {
                           _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ControlXmlScene.getStructObjetosSkineablesFromNodeObjectosSkineables","invalid idSkin=" + _loc25_ + "idObj=" + _loc4_));
                        }
                        _loc23_++;
                     }
                     _loc24_ = new _gi15767(_loc17_,_loc18_,_loc19_,_loc21_,_loc20_);
                     _loc13_.push(_loc24_);
                     _loc15_++;
                  }
                  _loc16_ = new _hf3886(_loc10_,_loc11_,_loc13_,_loc12_);
                  _loc6_.push(_loc16_);
                  _loc8_++;
               }
               _loc9_ = new _ld6048(_loc4_,_loc5_,_loc6_);
               _loc29_.push(_loc9_);
               _loc3_++;
            }
         }
         return _loc29_;
      }
      
      public static function _jv3843(param1:XML) : Array
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc7_:int = 0;
         var _loc4_:Array = new Array();
         var _loc5_:XMLList = param1[_he9368].children();
         var _loc6_:int = int(_loc5_.length());
         while(_loc7_ < _loc6_)
         {
            _loc2_ = _loc5_[_loc7_].attribute(_bh8353);
            _loc3_ = _yq8362.splitInt(_loc2_,",");
            _loc4_.push(_loc3_);
            _loc7_++;
         }
         return _loc4_;
      }
      
      public static function _ev15420(param1:XML, param2:int) : _pn12847
      {
         var _ta4822:XMLList = null;
         var _mj11026:XMLList = null;
         var _ir13656:XML = param1;
         var _un11300:int = param2;
         _ta4822 = _ir13656[_tc3054];
         _mj11026 = _ta4822.*.(@id == _un11300);
         return new _pn12847(_un11300,uint("0x" + _mj11026.attribute(_mi13674)),int(_mj11026.attribute(_tb3116)),int(_mj11026.attribute(_nl14061)),int(_mj11026.attribute(_mg11699)));
      }
      
      public static function _ic5429(param1:XML) : Point
      {
         var _loc2_:Point = new Point();
         var _loc3_:XMLList = param1[_vg12765];
         _loc2_.x = Number(_loc3_.attribute(_nu9816));
         _loc2_.y = Number(_loc3_.attribute(_qp1287));
         return _loc2_;
      }
      
      public static function _ms15992(param1:XML) : Number
      {
         return Number(param1.attribute(_oc4011));
      }
      
      public static function _bn14023(param1:XML) : Number
      {
         return Number(param1.attribute(_sa8798));
      }
      
      public static function _ja1725(param1:XML) : Number
      {
         return Number(param1.attribute(_gs2071));
      }
      
      public static function _do12934(param1:XML) : Number
      {
         return Number(param1.attribute(_us13319));
      }
      
      public static function _cv5854(param1:XML) : int
      {
         var _loc2_:XMLList = param1[_tc3054];
         return int(_loc2_.attribute(_gr5882));
      }
      
      public static function _mw6424(param1:XML, param2:int) : uint
      {
         var color:uint = 0;
         var _ta4822:XMLList = null;
         var _mj11026:XMLList = null;
         var _ir13656:XML = param1;
         var _un11300:int = param2;
         _ta4822 = _ir13656[_tc3054];
         _mj11026 = _ta4822.*.(@id == _un11300);
         color = uint("0x" + _mj11026.attribute(_mi13674));
         return color;
      }
      
      public static function _tp7450(param1:XML, param2:int) : String
      {
         var color:String = null;
         var _ta4822:XMLList = null;
         var _mj11026:XMLList = null;
         var _ir13656:XML = param1;
         var _un11300:int = param2;
         _ta4822 = _ir13656[_tc3054];
         _mj11026 = _ta4822.*.(@id == _un11300);
         color = _mj11026.attribute(_mi13674);
         return color;
      }
      
      public static function _ep15593(param1:XML, param2:int) : String
      {
         var _tl8472:String = null;
         var _ta4822:XMLList = null;
         var _mj11026:XMLList = null;
         var _ir13656:XML = param1;
         var _un11300:int = param2;
         _ta4822 = _ir13656[_tc3054];
         _mj11026 = _ta4822.*.(@id == _un11300);
         _tl8472 = _mj11026.attribute(_tb3116) + "," + _mj11026.attribute(_nl14061) + "," + _mj11026.attribute(_mg11699);
         return _tl8472;
      }
      
      public static function _rr928(param1:XML, param2:int, param3:int) : _pn12847
      {
         var _ta4822:XMLList = null;
         var _mj11026:XMLList = null;
         var _fb9988:XMLList = null;
         var _ne2803:XMLList = null;
         var _ir13656:XML = param1;
         var _un11300:int = param2;
         var idColorRef:int = param3;
         _ta4822 = _ir13656[_tc3054];
         _mj11026 = _ta4822.*.(@id == _un11300);
         _fb9988 = _mj11026[_pn7725];
         _ne2803 = _fb9988.*.(@id == idColorRef);
         return new _pn12847(_un11300,uint("0x" + _ne2803.attribute(_mi13674)),int(_ne2803.attribute(_tb3116)),int(_ne2803.attribute(_nl14061)),int(_ne2803.attribute(_mg11699)));
      }
      
      public static function _qi4067(param1:XML, param2:int) : String
      {
         var color:uint = 0;
         var _ta4822:XMLList = null;
         var _mj11026:XMLList = null;
         var _rl13433:String = null;
         var _ir13656:XML = param1;
         var _un11300:int = param2;
         _ta4822 = _ir13656[_tc3054];
         _mj11026 = _ta4822.*.(@id == _un11300);
         _rl13433 = _mj11026.attribute(_lu13119);
         return _rl13433;
      }
      
      public static function _uk10528(param1:XML) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:Array = new Array();
         var _loc5_:XMLList = param1[_xw9221].children();
         var _loc6_:int = int(_loc5_.length());
         while(_loc7_ < _loc6_)
         {
            _loc2_ = int(_loc5_[_loc7_].attribute(_nu9816));
            _loc3_ = int(_loc5_[_loc7_].attribute(_qp1287));
            _loc4_.push(new Point(_loc2_,_loc3_));
            _loc7_++;
         }
         return _loc4_;
      }
      
      public static function _qg10619(param1:XML) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc8_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:XMLList = param1[_gu15430].children();
         var _loc7_:int = int(_loc6_.length());
         while(_loc8_ < _loc7_)
         {
            _loc2_ = int(_loc6_[_loc8_].attribute(_di14380));
            _loc3_ = int(_loc6_[_loc8_].attribute(_ll5561));
            _loc4_ = int(_loc6_[_loc8_].attribute(_mh7620));
            _loc5_.push(new _jl16088(_loc2_,_loc3_,_loc4_));
            _loc8_++;
         }
         return _loc5_;
      }
      
      public static function _wb982(param1:XML) : int
      {
         var _loc2_:int = 0;
         var _loc3_:XMLList = param1[_vy10037];
         var _loc4_:String = _loc3_.attribute(_fe4321);
         if(_loc4_ != null)
         {
            _loc2_ = int(_loc4_);
         }
         else
         {
            _loc2_ = -1;
         }
         return _loc2_;
      }
      
      public static function _xw9881(param1:XML) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:* = false;
         var _loc6_:Array = new Array();
         var _loc7_:XMLList = param1[_mh2588].children();
         if(_loc7_ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc7_.length())
            {
               _loc3_ = int(_loc7_[_loc2_].attribute(_kc9635));
               _loc4_ = _loc7_[_loc2_].attribute(_mc8926);
               _loc5_ = _loc7_[_loc2_].attribute(_bi763) == "true";
               _loc6_.push(new _fe9942(_loc3_,_loc4_,_loc5_));
               _loc2_++;
            }
         }
         return _loc6_;
      }
      
      public static function _aj6505(param1:XML) : Array
      {
         var _loc5_:int = 0;
         var _loc2_:Array = new Array();
         _loc2_[0] = "";
         _loc2_[1] = "";
         var _loc3_:XMLList = param1[_tc3054].children();
         var _loc4_:int = int(_loc3_.length());
         while(_loc5_ < _loc4_)
         {
            _loc2_[0] += _loc3_[_loc5_].attribute(_mi13674);
            _loc2_[1] += _loc3_[_loc5_].attribute(_tb3116) + "," + _loc3_[_loc5_].attribute(_nl14061) + "," + _loc3_[_loc5_].attribute(_mg11699);
            if(_loc5_ < _loc4_ - 1)
            {
               _loc2_[1] += ",";
            }
            _loc5_++;
         }
         return _loc2_;
      }
      
      public static function _eg1228(param1:XML) : String
      {
         return null;
      }
      
      public static function _vn7285(param1:XML) : Boolean
      {
         var _loc2_:XMLList = param1[_ov199];
         var _loc3_:String = _loc2_.attribute(_rv4676);
         if(_loc3_ != "")
         {
            return Boolean(int(_loc3_));
         }
         return true;
      }
      
      public static function _lx8005(param1:XML) : Boolean
      {
         var _loc2_:XMLList = param1[_ov199];
         var _loc3_:String = _loc2_.attribute(_sg13246);
         if(_loc3_ != "")
         {
            return Boolean(int(_loc3_));
         }
         return true;
      }
      
      public static function _ed171(param1:XML) : Boolean
      {
         var _loc2_:XMLList = param1[_ov199];
         var _loc3_:String = _loc2_.attribute(_xo10620);
         if(_loc3_ != "")
         {
            return Boolean(int(_loc3_));
         }
         return false;
      }
      
      public static function _vh1503(param1:XML) : Object
      {
         var _loc2_:XMLList = param1[_oy14332];
         var _loc3_:Object = {};
         _loc3_._oa3310 = int(_loc2_.attribute(_bc11447));
         if(Boolean(_loc2_) && _loc3_._oa3310 > 0)
         {
            _loc3_.x = int(_loc2_.attribute(_nu9816));
            _loc3_.y = int(_loc2_.attribute(_qp1287));
            _loc3_._ok7591 = int(_loc2_.attribute(_vn15155));
            return _loc3_;
         }
         _loc3_._oa3310 = 0;
         return _loc3_;
      }
      
      public static function _xk2967(param1:XML) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc8_:int = 0;
         var _loc5_:XMLList = param1["sounds"]["sound"];
         var _loc6_:Array = new Array();
         var _loc7_:int = int(_loc5_.length());
         while(_loc8_ < _loc7_)
         {
            _loc3_ = new Object();
            _loc3_.id = _loc5_[_loc8_].attribute("id");
            _loc3_.loop = false;
            _loc4_ = _loc5_[_loc8_].attribute("loop");
            if(_loc4_ != "")
            {
               _loc3_.loop = true;
            }
            _loc6_.push(_loc3_);
            _loc8_++;
         }
         return _loc6_;
      }
   }
}

