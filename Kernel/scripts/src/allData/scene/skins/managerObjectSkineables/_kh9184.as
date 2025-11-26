package src.allData.scene.skins.managerObjectSkineables
{
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.logs.*;
   
   public class _kh9184
   {
      
      private var _iw10440:Array;
      
      private var _ef15486:Array;
      
      private var _qv2209:Array;
      
      public function _kh9184(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:Array, param7:Array, param8:Array)
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         var _loc15_:int = 0;
         var _loc16_:Boolean = false;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:Boolean = false;
         var _loc24_:int = 0;
         super();
         this._qv2209 = param1;
         this._ef15486 = param2;
         this._iw10440 = new Array();
         var _loc23_:int = int(param3.length);
         if(param4.length != _loc23_ || param5.length != _loc23_ || param6.length != _loc23_ || param7.length != _loc23_ || param8.length != _loc23_)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.ManagerMusObjectsSkineables","invalid cant elements Objetos"));
            return;
         }
         while(_loc24_ < _loc23_)
         {
            _loc9_ = int(param3[_loc24_]);
            _loc10_ = int(param4[_loc24_]);
            _loc11_ = param5[_loc24_];
            _loc12_ = param6[_loc24_];
            _loc13_ = param7[_loc24_];
            _loc14_ = param8[_loc24_];
            _loc15_ = int(_loc11_.length);
            if(_loc12_.length == _loc15_ && _loc13_.length == _loc15_ && _loc14_.length == _loc15_)
            {
               _loc16_ = true;
               _loc17_ = 0;
               while(_loc17_ < _loc15_)
               {
                  _loc18_ = int(_loc11_[_loc17_]);
                  _loc19_ = int(_loc12_[_loc17_]);
                  _loc20_ = _loc13_[_loc17_];
                  _loc21_ = _loc14_[_loc17_];
                  _loc22_ = this._rh8830(param1,param2,_loc9_,_loc10_,_loc18_,_loc19_);
                  if(!_loc22_)
                  {
                     _loc16_ = false;
                  }
                  _loc17_++;
               }
               if(_loc16_)
               {
                  this._iw10440.push(new _ui16110(_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_));
               }
               else
               {
                  _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.ManagerMusObjectsSkineables","ERROR EN CREACION DE OBJETO SKINEABLE"));
               }
            }
            else
            {
               _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.ManagerMusObjectsSkineables","invalid cant elements Elements vs skins"));
            }
            _loc24_++;
         }
      }
      
      public function _rh8830(param1:Array, param2:Array, param3:int, param4:int, param5:int, param6:int) : Boolean
      {
         var _loc7_:_ld6048 = this._em6344(param1,param3);
         if(_loc7_ == null)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.controlExistSkinInTemplateObject","nodeObjectSkineable==null idObjetoSkineable=" + param3));
            return false;
         }
         var _loc8_:_hf3886 = _loc7_._lt8614(param4);
         if(_loc8_ == null)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.controlExistSkinInTemplateObject","nodeTemplateObjectSkineable==null idObjetoSkineable=" + param3 + " idTemplateObjetoSkineable=" + param4));
            return false;
         }
         var _loc9_:_gi15767 = _loc8_._iq14877(param5);
         if(_loc9_ == null)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.controlExistSkinInTemplateObject","nodeElementObjectSkineable==null idObjetoSkineable=" + param3 + " idTemplateObjetoSkineable=" + param4 + " idElementObjetoSkineable=" + param5));
            return false;
         }
         var _loc10_:_am1056 = _loc9_._gj5744(param6);
         if(_loc10_ == null)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.controlExistSkinInTemplateObject","nodeSkinObjectSkineable==null idObjetoSkineable=" + param3 + " idTemplateObjetoSkineable=" + param4 + " idElementObjetoSkineable=" + param5 + " idSkinObjetoSkineable=" + param6));
            return false;
         }
         var _loc11_:_sy9767 = _sy9767._ay12276(param2,param6);
         if(_loc11_ == null)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.controlExistSkinInTemplateObject","nodeSkins==null idSkinObjetoSkineable=" + param6));
            return false;
         }
         return true;
      }
      
      public function _in13689(param1:_sy9767) : void
      {
      }
      
      public function _dg5017(param1:String, param2:Boolean) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:_ld6048 = this._ip3513(this._qv2209,param1);
         if(_loc4_ == null)
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"ManagerMusObjectsSkineables.getArrayNodesMovieclipsFromNameObject","nodeObjectSkineable==null nameObjeto=" + param1));
            return _loc3_;
         }
         var _loc5_:_ui16110 = this._nc6280(_loc4_.id);
         if(_loc5_ == null)
         {
            return _loc3_;
         }
         return _loc4_._jk10868(_loc5_,param2);
      }
      
      public function _nc6280(param1:int) : _ui16110
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._iw10440.length)
         {
            if(_ui16110(this._iw10440[_loc2_])._pq6113 == param1)
            {
               return _ui16110(this._iw10440[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function _vh5033(param1:_ui16110) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._iw10440.length)
         {
            if(_ui16110(this._iw10440[_loc2_])._pq6113 == param1._pq6113)
            {
               this._iw10440[_loc2_] = param1;
            }
            _loc2_++;
         }
      }
      
      public function _vm2290(param1:int) : _ld6048
      {
         return this._em6344(this._qv2209,param1);
      }
      
      public function _em6344(param1:Array, param2:int) : _ld6048
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            if(_ld6048(param1[_loc4_]).id == param2)
            {
               return _ld6048(param1[_loc4_]);
            }
            _loc4_++;
         }
         return null;
      }
      
      public function _pi3785(param1:String) : _ld6048
      {
         return this._ip3513(this._qv2209,param1);
      }
      
      public function _ip3513(param1:Array, param2:String) : _ld6048
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            if(_ld6048(param1[_loc4_]).name == param2)
            {
               return _ld6048(param1[_loc4_]);
            }
            _loc4_++;
         }
         return null;
      }
   }
}

