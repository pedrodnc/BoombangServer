package src.allData.scene.skins.nodeTagsSkins
{
   import flash.utils.*;
   import src.allData.color.*;
   import src.allData.scene.skins.managerObjectSkineables._ui16110;
   
   public class _sy9767
   {
      
      public var id:int;
      
      public var name:String;
      
      public var _hb13923:String;
      
      public var _kr1527:Array;
      
      public function _sy9767(param1:int, param2:String, param3:String, param4:Array)
      {
         super();
         this.id = param1;
         this.name = param2;
         this._hb13923 = param3;
         this._kr1527 = param4;
      }
      
      public static function _ay12276(param1:Array, param2:int) : _sy9767
      {
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(_sy9767(param1[_loc3_]).id == param2)
            {
               return _sy9767(param1[_loc3_]);
            }
            _loc3_++;
         }
         return null;
      }
      
      public function _iu12125() : _sy9767
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this._kr1527.length)
         {
            _loc1_.push(_ys12811(this._kr1527[_loc2_])._iu12125());
            _loc2_++;
         }
         return new _sy9767(this.id,this.name,this._hb13923,_loc1_);
      }
      
      public function _jy13779(param1:Array, param2:int) : _sy9767
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            if(_sy9767(param1[_loc4_]).id == param2)
            {
               return _sy9767(param1[_loc4_]);
            }
            _loc4_++;
         }
         return null;
      }
      
      public function _st1257() : Array
      {
         var _loc1_:_ys12811 = null;
         var _loc4_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:Dictionary = new Dictionary();
         while(_loc4_ < this._kr1527.length)
         {
            _loc1_ = _ys12811(this._kr1527[_loc4_]);
            if(_loc1_._un11300 != -1)
            {
               if(_loc3_[String(_loc1_._un11300)] == null)
               {
                  _loc2_.push(_loc1_._tk11635._iu12125());
                  _loc3_[String(_loc1_._un11300)] = _loc1_._tk11635;
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function _da15170() : Array
      {
         var _loc1_:_ys12811 = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:_ys12811 = null;
         var _loc6_:int = 0;
         var _loc5_:Array = new Array();
         while(_loc6_ < this._kr1527.length)
         {
            _loc1_ = _ys12811(this._kr1527[_loc6_]);
            if(_loc1_._un11300 != -1)
            {
               _loc2_ = false;
               _loc3_ = 0;
               while(_loc3_ < _loc5_.length)
               {
                  _loc4_ = _ys12811(_loc5_[_loc3_]);
                  if(_loc4_._un11300 == _loc1_._un11300)
                  {
                     _loc2_ = true;
                  }
                  _loc3_++;
               }
               if(!_loc2_)
               {
                  _loc5_.push(_loc1_);
               }
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      internal function _jk10868(param1:_ui16110, param2:Array, param3:int, param4:Boolean) : void
      {
         var _loc5_:_ys12811 = null;
         var _loc8_:int = 0;
         param2.push(this);
         var _loc7_:Dictionary = new Dictionary();
         while(_loc8_ < this._kr1527.length)
         {
            _loc5_ = _ys12811(this._kr1527[_loc8_]);
            if(_loc5_._un11300 != -1)
            {
               if(_loc7_[String(_loc5_._un11300)] == null)
               {
                  _loc5_._mn6947 = _pn12847(param1.colors[param3][0]);
                  _loc7_[String(_loc5_._un11300)] = _pn12847(param1.colors[param3][0]);
                  _loc6_++;
               }
               else
               {
                  _loc5_._mn6947 = _pn12847(_loc7_[String(_loc5_._un11300)]);
               }
            }
            _loc8_++;
         }
      }
   }
}

