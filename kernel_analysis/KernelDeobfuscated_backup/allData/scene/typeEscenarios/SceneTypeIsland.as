package src.allData.scene.typeEscenarios
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.color._dh12601;
   import src.allData.color._pn12847;
   import src.allData.scene.*;
   import src.allData.scene.skins.*;
   import src.allData.scene.skins.managerObjectSkineables.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.modules.enterScene._ul219;
   import src.tv.boombang.core.datatypes.navigationMenu._kn4108;
   import src.utils.*;
   
   public class _bq10515 extends _il6324
   {
      
      public static const _uo14986:String = "mcEmpty";
      
      public var _fb12093:int;
      
      public var _mp11178:int;
      
      public var _wy10098:_dh12601;
      
      public var _xe10855:Boolean;
      
      public var _nv2607:Array;
      
      public var _qv2209:Array;
      
      public var _pr16032:_kh9184;
      
      private var _ey10368:MovieClip;
      
      public var _ed3523:Boolean;
      
      public var _ef15486:Array;
      
      public var _fl5981:_ul219;
      
      public function _bq10515(param1:_kn4108, param2:int, param3:_dh12601, param4:Boolean, param5:int, param6:MovieClip, param7:XML, param8:_ul219)
      {
         this._wy10098 = param3;
         this._pe5591 = param4;
         this._mp11178 = param5;
         this._fl5981 = param8;
         super(param1,param2,param6,param7);
         this._yt7170();
      }
      
      override public function init() : void
      {
         super.init();
         this._xn7478 = this._mp11178 == _hv12530.getInstance().id || _hv12530.getInstance()._vm2039 >= 13;
         this._nv2607 = _mq2583._ts14659(_ir13656);
         this._pu4970 = _mq2583._do12934(_ir13656) == 1;
         this._ed3523 = false;
         this._ey10368 = new MovieClip();
         this._ey10368.graphics.beginFill(16711680,0);
         this._ey10368.graphics.drawRect(0,0,1012,715);
         this._ey10368.graphics.endFill();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._fh11194();
      }
      
      override public function _pr4733() : void
      {
         var _loc1_:_xd7248 = null;
         var _loc3_:int = 0;
         var _loc2_:int = int(this._nv2607.length);
         while(_loc3_ < _loc2_)
         {
            _loc1_ = _xd7248(this._nv2607[_loc3_]);
            switch(_loc1_.type)
            {
               case _sb1993._he3099:
                  this._ps12504(_loc1_);
                  break;
               case _sb1993._wp14571:
                  this._md7967(_loc1_);
            }
            _loc3_++;
         }
      }
      
      private function _ps12504(param1:_xd7248) : void
      {
         var _loc3_:ColorTransform = new ColorTransform();
         var _loc4_:MovieClip = MovieClip(_wy2643.getChildByName(param1.name));
         var _loc5_:_xw1367 = _xw1367.getInstance();
         var _loc6_:DisplayObject = DisplayObject(_loc4_.getChildAt(0));
         _loc6_.x -= param1._cd7708.x;
         _loc6_.y -= param1._cd7708.y;
         _loc4_.x += param1._cd7708.x;
         _loc4_.y += param1._cd7708.y;
         if(param1._un11300 != -1)
         {
            var _loc2_:uint = this._wy10098._jk5923(param1._un11300);
            _loc3_.color = 0;
            _loc3_.blueMultiplier = -1;
            _loc3_.redMultiplier = -1;
            _loc3_.greenMultiplier = -1;
            _loc4_.transform.colorTransform = _loc3_;
         }
         _loc5_._uc3178(_loc4_,param1._ok7591,false,_xw1367._en7051);
      }
      
      private function _fa6276(param1:_xd7248) : void
      {
         var _loc2_:_xw1367 = _xw1367.getInstance();
         var _loc3_:MovieClip = _loc2_._qd11184(param1.name,param1._ok7591);
         _loc2_._na10792(_loc3_,param1._ok7591);
         _wy2643.addChild(_loc3_);
      }
      
      override public function _qk13047() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:_xd7248 = null;
         if(this._nv2607 != null)
         {
            _loc1_ = int(this._nv2607.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _xd7248(this._nv2607[_loc2_]);
               switch(_loc3_.type)
               {
                  case _sb1993._he3099:
                     this._fa6276(_loc3_);
                     break;
                  case _sb1993._wp14571:
                     this._te4670(_loc3_);
               }
               _loc2_++;
            }
         }
      }
      
      public function _yt7170() : void
      {
         this._ef15486 = _mq2583._ej14723(_ir13656);
         this._qv2209 = _mq2583._hn13069(_ir13656,this._ef15486);
         if(this._fl5981 != null)
         {
            this._pr16032 = new _kh9184(this._qv2209,this._ef15486,this._fl5981._ib8819,this._fl5981._sa1403,this._fl5981._kf3777,this._fl5981._yk13167,this._fl5981._rf1396,this._fl5981._fd9129);
         }
      }
      
      private function _md7967(param1:_xd7248) : void
      {
         var _loc2_:_sy9767 = null;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:Array = this._pr16032._dg5017(param1.name,true);
         param1._cw15200 = _loc4_;
         while(_loc5_ < _loc4_.length)
         {
            _loc2_ = _loc4_[_loc5_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_._kr1527.length)
            {
               this._jb16039(_ys12811(_loc2_._kr1527[_loc3_]));
               _loc3_++;
            }
            _loc5_++;
         }
      }
      
      private function _jb16039(param1:_ys12811) : void
      {
         var _loc2_:uint = 0;
         if(param1.name == _uo14986)
         {
            return;
         }
         var _loc3_:ColorTransform = new ColorTransform();
         var _loc4_:MovieClip = MovieClip(_wy2643.getChildByName(param1.name));
         var _loc5_:_xw1367 = _xw1367.getInstance();
         var _loc6_:DisplayObject = DisplayObject(_loc4_.getChildAt(0));
         _loc6_.x -= param1._cd7708.x;
         _loc6_.y -= param1._cd7708.y;
         _loc4_.x += param1._cd7708.x;
         _loc4_.y += param1._cd7708.y;
         if(param1._un11300 != -1)
         {
            _loc2_ = param1._mn6947.color;
            _loc3_.color = _loc2_;
            _loc3_.blueMultiplier = -1;
            _loc3_.redMultiplier = -1;
            _loc3_.greenMultiplier = -1;
            _loc4_.transform.colorTransform = _loc3_;
         }
         _loc5_._uc3178(_loc4_,param1._ok7591,false,_xw1367._en7051);
      }
      
      private function _te4670(param1:_xd7248) : void
      {
         var _loc2_:_sy9767 = null;
         var _loc3_:int = 0;
         var _loc4_:_ys12811 = null;
         var _loc6_:int = 0;
         var _loc5_:Array = this._pr16032._dg5017(param1.name,true);
         while(_loc6_ < _loc5_.length)
         {
            _loc2_ = _loc5_[_loc6_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_._kr1527.length)
            {
               _loc4_ = _ys12811(_loc2_._kr1527[_loc3_]);
               if(_loc4_.name != _uo14986)
               {
                  this._fa6276(_loc4_);
               }
               _loc3_++;
            }
            _loc6_++;
         }
      }
      
      public function _vh5033(param1:_ui16110) : void
      {
         _do10975();
         this._qk13047();
         this._pr16032._vh5033(param1._iu12125());
         this._pr4733();
         _cy13400();
         this._fh11194();
         this._xl522();
      }
      
      public function _tv1478(param1:_ul219) : void
      {
         var _loc2_:_ui16110 = null;
         var _loc3_:int = 0;
         _do10975();
         this._qk13047();
         while(_loc3_ < param1._ib8819.length)
         {
            _loc2_ = new _ui16110(param1._ib8819[_loc3_],param1._sa1403[_loc3_],param1._kf3777[_loc3_],param1._yk13167[_loc3_],param1._rf1396[_loc3_],param1._fd9129[_loc3_]);
            this._pr16032._vh5033(_loc2_);
            _loc3_++;
         }
         this._pr4733();
         _cy13400();
      }
      
      override public function _kd2897() : void
      {
         this._fb12093 = _mq2583._cv5854(_ir13656);
         if(this._fb12093 != -1)
         {
            this._bw12803 = this._wy10098._dd15313(this._fb12093) / 100 + 0.35;
            if(_bw12803 < 0)
            {
               _bw12803 = 1;
            }
            if(_bw12803 > 1)
            {
               _bw12803 = 1;
            }
            if(_bw12803 < 0.55)
            {
               _bw12803 = 0.55;
            }
         }
         else
         {
            _bw12803 = 1;
         }
      }
      
      public function _or5423() : Array
      {
         return this._wy10098._xs11657();
      }
      
      public function _dc804(param1:MovieClip, param2:XML, param3:int, param4:_dh12601) : void
      {
         this._wy2643 = param1;
         this._ir13656 = param2;
         this._nr6929._fq658 = param3;
         this._wy10098 = param4;
         this._nv2607 = _mq2583._ts14659(param2);
      }
      
      override public function _ct15269() : String
      {
         return "private";
      }
      
      public function _dd13470(param1:_dh12601) : void
      {
         var _loc2_:_xd7248 = null;
         var _loc3_:MovieClip = null;
         var _loc8_:int = 0;
         var _loc5_:ColorTransform = new ColorTransform();
         var _loc6_:int = int(this._nv2607.length);
         var _loc7_:_xw1367 = _xw1367.getInstance();
         while(_loc8_ < _loc6_)
         {
            _loc2_ = _xd7248(this._nv2607[_loc8_]);
            _loc3_ = _loc7_._qd11184(_loc2_.name,_loc2_._ok7591);
            if(_loc2_._un11300 != -1)
            {
               this._wy10098 = param1;
               var _loc4_:uint = this._wy10098._jk5923(_loc2_._un11300);
               _loc5_.color = 0;
               _loc5_.blueMultiplier = -1;
               _loc5_.redMultiplier = -1;
               _loc5_.greenMultiplier = -1;
               _loc3_.transform.colorTransform = _loc5_;
            }
            _loc8_++;
         }
         this._kd2897();
      }
      
      public function _cp2768(param1:_pn12847) : void
      {
         var _loc2_:_xd7248 = null;
         var _loc8_:int = 0;
         var _loc5_:ColorTransform = new ColorTransform();
         var _loc6_:int = int(this._nv2607.length);
         var _loc7_:_xw1367 = _xw1367.getInstance();
         this._wy10098._vo5864(param1);
         while(_loc8_ < _loc6_)
         {
            _loc2_ = _xd7248(this._nv2607[_loc8_]);
            if(_loc2_._un11300 == param1._un11300)
            {
               var _loc3_:MovieClip = _loc7_._qd11184(_loc2_.name,_loc2_._ok7591);
            }
            _loc8_++;
         }
      }
      
      public function _af805(param1:_sy9767, param2:_pn12847) : void
      {
         var _loc3_:_ys12811 = null;
         var _loc7_:int = 0;
         var _loc5_:ColorTransform = new ColorTransform();
         var _loc6_:_xw1367 = _xw1367.getInstance();
         while(_loc7_ < param1._kr1527.length)
         {
            _loc3_ = _ys12811(param1._kr1527[_loc7_]);
            if(_loc3_._mn6947 != null)
            {
               if(_loc3_._mn6947._un11300 == param2._un11300)
               {
                  var _loc4_:MovieClip = _loc6_._qd11184(_loc3_.name,_loc3_._ok7591);
                  if(_loc4_ != null)
                  {
                     _loc3_._mn6947 = param2;
                     _loc5_.color = param2.color;
                     _loc5_.blueMultiplier = -1;
                     _loc5_.redMultiplier = -1;
                     _loc5_.greenMultiplier = -1;
                     null.transform.colorTransform = _loc5_;
                  }
               }
            }
            _loc7_++;
         }
      }
      
      override public function _ih5473() : Boolean
      {
         return _xn7478 == true && this._co7364() == false;
      }
      
      override public function _co7364() : Boolean
      {
         if(_pu4970)
         {
            return true;
         }
         return false;
      }
      
      public function _xl522() : void
      {
         if(this._ed3523 == false && this._ih5473())
         {
            _xw1367.getInstance()._uc3178(this._ey10368,_xw1367._co9468,true);
            this._ey10368.addEventListener(MouseEvent.MOUSE_DOWN,this._sk10515);
            this._ed3523 = true;
         }
      }
      
      public function _fh11194() : void
      {
         if(this._ed3523)
         {
            _xw1367.getInstance()._na10792(this._ey10368,_xw1367._co9468);
            this._ey10368.removeEventListener(MouseEvent.MOUSE_DOWN,this._sk10515);
            this._ed3523 = false;
         }
      }
      
      private function _sk10515(param1:MouseEvent) : void
      {
         if(!this._ed3523)
         {
            return;
         }
         if(!_xn7478)
         {
            return;
         }
         if(this._rj4831(param1,_xw1367._co9468))
         {
            param1.stopImmediatePropagation();
            return;
         }
         if(this._ql10750(param1,_xw1367._dq996))
         {
            param1.stopImmediatePropagation();
            return;
         }
         if(this._ql10750(param1,_xw1367._en7051))
         {
            param1.stopImmediatePropagation();
            return;
         }
         if(this._rj4831(param1,_xw1367._vn1830))
         {
            param1.stopImmediatePropagation();
            return;
         }
      }
      
      private function _rj4831(param1:MouseEvent, param2:int) : Boolean
      {
         var _loc3_:MovieClip = null;
         var _loc5_:_xd7248 = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:_sy9767 = null;
         var _loc9_:int = 0;
         var _loc10_:_ys12811 = null;
         var _loc11_:int = int(this._nv2607.length);
         var _loc12_:int = _loc11_ - 1;
         while(_loc12_ >= 0)
         {
            _loc5_ = _xd7248(this._nv2607[_loc12_]);
            switch(_loc5_.type)
            {
               case _sb1993._he3099:
                  _loc3_ = this._rf4964(_loc5_,param2,param1.stageX,param1.stageY);
                  if(_loc3_ != null)
                  {
                     _hl8190._ds11773(_loc3_,_loc5_);
                     return true;
                  }
                  break;
               case _sb1993._wp14571:
                  _loc6_ = _loc5_._cw15200;
                  _loc7_ = int(_loc6_.length - 1);
                  while(_loc7_ >= 0)
                  {
                     _loc8_ = _loc6_[_loc7_];
                     _loc9_ = int(_loc8_._kr1527.length - 1);
                     while(_loc9_ >= 0)
                     {
                        _loc10_ = _ys12811(_loc8_._kr1527[_loc9_]);
                        _loc3_ = this._rf4964(_loc10_,param2,param1.stageX,param1.stageY);
                        if(_loc3_ != null)
                        {
                           _hl8190._sg12039(_loc5_,_loc8_);
                           this._pr16032._in13689(_loc8_);
                           return true;
                        }
                        _loc9_--;
                     }
                     _loc7_--;
                  }
            }
            _loc12_--;
         }
         return false;
      }
      
      private function _rf4964(param1:_xd7248, param2:int, param3:int, param4:int) : MovieClip
      {
         var _loc5_:MovieClip = null;
         var _loc6_:Boolean = false;
         var _loc7_:_xw1367 = _xw1367.getInstance();
         if(param1._un11300 != -1 && param1._ok7591 == param2)
         {
            _loc5_ = _loc7_._qd11184(param1.name,param1._ok7591);
            _loc6_ = Boolean(_xv14798._kb1538(_loc5_,new Point(param3,param4)));
            if(_loc6_)
            {
               return _loc5_;
            }
         }
         return null;
      }
      
      private function _ql10750(param1:MouseEvent, param2:int) : Boolean
      {
         var _loc4_:MovieClip = null;
         var _loc5_:Sprite = _xw1367.getInstance()._pf16091();
         _xv14798._tx2457(_loc5_);
         var _loc6_:int = _loc5_.numChildren;
         var _loc7_:int = _loc6_ - 1;
         while(_loc7_ >= 0)
         {
            _loc4_ = MovieClip(_loc5_.getChildAt(_loc7_));
            switch(_loc4_._jr11615)
            {
               case _xw1367._dq996:
                  if(_loc4_._jr11615 == param2)
                  {
                     if(!_hl8190._do11186())
                     {
                        var _loc3_:Boolean = Boolean(this._hy14067(param1,_loc4_));
                     }
                  }
                  break;
               case _xw1367._en7051:
                  if(_loc4_._jr11615 == param2)
                  {
                     _loc3_ = Boolean(this._rj4831(param1,_xw1367._jf1741));
                  }
            }
            _loc7_--;
         }
         return false;
      }
      
      private function _hy14067(param1:MouseEvent, param2:MovieClip) : Boolean
      {
         var _loc6_:int = 0;
         var _loc5_:int = int(objects.length);
         while(_loc6_ < _loc5_)
         {
            if(_hl15578(objects[_loc6_]).graphics == param2)
            {
               var _loc3_:_hl15578 = _hl15578(objects[_loc6_]);
               var _loc4_:Boolean = Boolean(_xv14798._ea11980(null.graphics,new Point(param1.stageX,param1.stageY),null._sl11700._cg6545[null._vw12711]));
               if(_loc4_)
               {
                  _hl8190._lc1990(param1,null);
                  return true;
               }
            }
            _loc6_++;
         }
         return false;
      }
      
      public function _qr5670() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:_ld6048 = null;
         var _loc6_:_hf3886 = null;
         var _loc7_:_sy9767 = null;
         var _loc8_:_gi15767 = null;
         var _loc9_:_am1056 = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc15_:Dictionary = new Dictionary();
         _loc1_ = 1;
         while(_loc1_ < 2)
         {
            _loc5_ = _ld6048(this._qv2209[_loc1_]);
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ < 2)
         {
            _loc5_ = _ld6048(this._qv2209[_loc1_]);
            _loc2_ = 0;
            while(_loc2_ < _loc5_.templates.length)
            {
               _loc6_ = _hf3886(_loc5_.templates[_loc2_]);
               _loc2_++;
            }
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ < 2)
         {
            _loc5_ = _ld6048(this._qv2209[_loc1_]);
            _loc2_ = 0;
            while(_loc2_ < _loc5_.templates.length)
            {
               _loc6_ = _hf3886(_loc5_.templates[_loc2_]);
               _loc3_ = 0;
               while(_loc3_ < _loc6_.elements.length)
               {
                  _loc8_ = _gi15767(_loc6_.elements[_loc3_]);
                  if(_loc15_[_loc8_.id] == null)
                  {
                     _loc15_[_loc8_.id] = _loc8_.id;
                  }
                  _loc3_++;
               }
               _loc2_++;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._ef15486.length)
         {
            _loc7_ = _sy9767(this._ef15486[_loc1_]);
            _loc10_ = _loc7_._st1257();
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ < 2)
         {
            _loc5_ = _ld6048(this._qv2209[_loc1_]);
            _loc2_ = 0;
            while(_loc2_ < _loc5_.templates.length)
            {
               _loc6_ = _hf3886(_loc5_.templates[_loc2_]);
               _loc11_ = "";
               _loc3_ = 0;
               while(_loc3_ < _loc6_.elements.length)
               {
                  _loc8_ = _gi15767(_loc6_.elements[_loc3_]);
                  _loc11_ += _loc8_.id + ",";
                  _loc3_++;
               }
               _loc2_++;
            }
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ < 2)
         {
            _loc5_ = _ld6048(this._qv2209[_loc1_]);
            _loc2_ = 0;
            while(_loc2_ < _loc5_.templates.length)
            {
               _loc6_ = _hf3886(_loc5_.templates[_loc2_]);
               _loc3_ = 0;
               while(_loc3_ < _loc6_.elements.length)
               {
                  _loc8_ = _gi15767(_loc6_.elements[_loc3_]);
                  _loc12_ = "";
                  _loc4_ = 0;
                  while(_loc4_ < _loc8_.skins.length)
                  {
                     _loc9_ = _am1056(_loc8_.skins[_loc4_]);
                     _loc12_ += _loc9_.id + ",";
                     _loc4_++;
                  }
                  _loc3_++;
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
   }
}

