package src.person
{
   import flash.display.*;
   import flash.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class PersonData
   {
      
      private static var _instance:PersonData;
      
      private var _op2478:Dictionary;
      
      public function PersonData(param1:_rw9443)
      {
         super();
         this._op2478 = new Dictionary();
      }
      
      public static function getInstance() : PersonData
      {
         if(_instance == null)
         {
            _instance = new PersonData(new _rw9443());
         }
         return _instance;
      }
      
      private function _yf9918(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Person = null;
         var _loc7_:int = 0;
         _loc3_ = param1.split("|");
         while(_loc7_ < _loc3_.length)
         {
            _loc2_ = _loc3_[_loc7_].split(",");
            _loc4_ = _loc2_[0] + _loc2_[1];
            _loc5_ = _loc2_[2];
            _loc6_ = new Person();
            _loc6_.type = _loc2_[3];
            switch(_loc6_.type)
            {
               case irrcrpt("eqnqt",2):
                  _loc6_._qj12043 = this._oo15630;
                  _loc6_._fb4001 = _loc2_[4];
                  _loc6_._pq14173 = _loc2_[5];
                  break;
               case irrcrpt("xkukdng",2):
                  _loc6_._qj12043 = this._ji14380;
                  _loc6_._fb4001 = _loc2_[4];
                  _loc6_.visible = Boolean(Number(_loc2_[5]));
                  break;
               case irrcrpt("jokfdu",1):
                  _loc6_._qj12043 = this._qs11596;
                  _loc6_._fb4001 = _loc2_[4];
                  _loc6_.sourceName = _loc2_[5];
                  break;
               case irrcrpt("wxst",4):
                  _loc6_._qj12043 = this._sp4517;
            }
            if(this._op2478[_loc4_] == null)
            {
               this._op2478[_loc4_] = new Dictionary();
            }
            if(this._op2478[_loc4_][_loc5_] == null)
            {
               this._op2478[_loc4_][_loc5_] = new Array();
            }
            this._op2478[_loc4_][_loc5_].push(_loc6_);
            _loc7_++;
         }
      }
      
      public function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:PersonModel = PersonModel.getInstance();
         var _loc5_:Array = _loc4_._bt3478();
         var _loc6_:Array = _loc4_._nt6211();
         _loc3_ = 0;
         while(_loc3_ < _loc5_.length)
         {
            _loc1_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._eb710(_loc5_[_loc3_],false,true);
            this._yf9918(_loc1_);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc6_.length)
         {
            _loc2_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._eb710(_loc6_[_loc3_],false,true);
            this._yf9918(_loc2_);
            _loc3_++;
         }
      }
      
      private function _ji14380(param1:Person) : void
      {
         var _loc2_:MovieClip = param1.mc.getChildByName(param1._fb4001) as MovieClip;
         if(_loc2_)
         {
            _loc2_.visible = param1.visible;
         }
      }
      
      private function _qs11596(param1:Person) : void
      {
         var _loc2_:MovieClip = param1.mc.getChildByName(param1._fb4001) as MovieClip;
         if(_loc2_ != null && param1.source != null)
         {
            StringUtils.cleanChildsMovieclip(_loc2_);
            _loc2_.addChild(param1.source);
            param1.source.gotoAndPlay(param1.mc.currentFrame);
         }
      }
      
      private function _oo15630(param1:Person) : void
      {
         var _loc4_:int = 0;
         var _loc2_:Array = param1._fb4001.split(".");
         var _loc3_:MovieClip = param1.mc;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc3_)
            {
               _loc3_ = _loc3_[_loc2_[_loc4_]];
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc3_.transform.colorTransform = param1.color;
         }
      }
      
      private function _sp4517(param1:Person) : void
      {
         StringUtils._vb14910(param1.mc);
      }
      
      private function _gb12560(param1:Array) : Function
      {
         var customizeDates:Array = param1;
         return function():void
         {
            var _loc1_:* = undefined;
            for each(_loc1_ in customizeDates)
            {
               _loc1_._qj12043.call(undefined,_loc1_);
            }
         };
      }
      
      private function _vl13892(param1:String, param2:String, param3:String) : Dictionary
      {
         var _loc5_:String = null;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:String = param2 + param1;
         var _loc8_:String = param2 + param3 + param1;
         if(this._op2478[_loc7_] != null)
         {
            for(_loc5_ in this._op2478[_loc7_])
            {
               _loc6_[_loc5_] = this._op2478[_loc7_][_loc5_];
            }
         }
         if(this._op2478[_loc8_] != null)
         {
            for(_loc5_ in this._op2478[_loc8_])
            {
               if(_loc6_[_loc5_] != null)
               {
                  _loc6_[_loc5_] = _loc6_[_loc5_].concat(this._op2478[_loc8_][_loc5_]);
               }
               else
               {
                  _loc6_[_loc5_] = this._op2478[_loc8_][_loc5_];
               }
            }
         }
         return _loc6_;
      }
      
      public function _jm6145(param1:MovieClip, param2:PersonAnimation, param3:String, param4:int = 1) : void
      {
         var _loc5_:Dictionary = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc21_:* = undefined;
         var _loc22_:Array = null;
         var _loc23_:int = 0;
         var _loc24_:Person = null;
         var _loc13_:PersonModel = PersonModel.getInstance();
         var _loc14_:Array = new Array(param1.totalFrames);
         var _loc15_:Array = new Array();
         param4--;
         _loc5_ = this._vl13892(param3,_loc13_._ny11833(param2._jn11596),_loc13_._vh10309(param2._cj5718));
         var _loc20_:String = PersonModel.getInstance()._bc10149(param2._cj5718);
         if((Boolean(_loc20_)) && (_loc20_.indexOf("pet0") == 0 && _loc20_.length >= 5 && _loc20_.charAt(4) >= "1" && _loc20_.charAt(4) <= "9" || _loc20_.indexOf("pet10") == 0 || _loc20_.indexOf("flag01") == 0 || _loc20_.indexOf("flag02") == 0))
         {
            for(_loc21_ in _loc5_)
            {
               _loc22_ = _loc5_[_loc21_];
               _loc23_ = int(_loc22_.length - 1);
               while(_loc23_ >= 0)
               {
                  _loc24_ = _loc22_[_loc23_];
                  if(_loc24_.type == "visible" && _loc24_._fb4001.indexOf("hide_hat") == 0)
                  {
                     _loc22_.splice(_loc23_,1);
                  }
                  _loc23_--;
               }
            }
         }
         for(_loc12_ in _loc5_)
         {
            _loc15_.push(Number(_loc12_));
         }
         _loc15_.sort(Array.NUMERIC);
         if(_loc5_ != null)
         {
            _loc18_ = int(_loc15_.length);
            _loc7_ = 0;
            while(_loc7_ < _loc18_)
            {
               if(_loc7_ + 1 < _loc18_)
               {
                  _loc17_ = int(_loc15_[_loc7_ + 1]);
               }
               _loc16_ = int(_loc15_[_loc7_]);
               _loc10_ = _loc5_[_loc16_];
               _loc9_ = int(_loc10_.length);
               if(_loc9_ > 0)
               {
                  _loc11_ = new Array();
                  _loc8_ = 0;
                  while(_loc8_ < _loc9_)
                  {
                     _loc11_[_loc8_] = _loc10_[_loc8_]._hg7256();
                     _loc11_[_loc8_].mc = param1;
                     switch(_loc11_[_loc8_].type)
                     {
                        case irrcrpt("eqnqt",2):
                           _loc11_[_loc8_].color = param2._yt6727(_loc11_[_loc8_]._pq14173);
                           break;
                        case irrcrpt("jokfdu",1):
                           _loc11_[_loc8_].source = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_loc13_._bc10149(param2._cj5718),_loc11_[_loc8_].sourceName,false);
                     }
                     _loc8_++;
                  }
                  param1.addFrameScript(_loc16_,this._gb12560(_loc11_));
                  if(param4 > 0)
                  {
                     if(_loc16_ <= param4 && _loc17_ > param4)
                     {
                        param1.addFrameScript(param4,this._gb12560(_loc11_));
                     }
                  }
                  if(_loc16_ == 0)
                  {
                     _loc8_ = 0;
                     while(_loc8_ < _loc9_)
                     {
                        _loc11_[_loc8_]._qj12043.call(undefined,_loc11_[_loc8_]);
                        _loc8_++;
                     }
                  }
               }
               _loc7_++;
            }
         }
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
