package src.allData.color
{
   public class _dh12601
   {
      
      private var _ql1609:Array;
      
      public function _dh12601(param1:String, param2:String)
      {
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         super();
         this._ql1609 = new Array();
         var _loc7_:int = param1.length / 6;
         var _loc8_:Array = param2.split(",");
         while(_loc9_ < _loc7_)
         {
            _loc3_ = uint("0x" + param1.substr(_loc9_ * 6,6));
            _loc4_ = int(_loc8_[_loc9_ * 3]);
            _loc5_ = int(_loc8_[_loc9_ * 3 + 1]);
            _loc6_ = int(_loc8_[_loc9_ * 3 + 2]);
            this._ql1609.push(new _pn12847(_loc9_,_loc3_,_loc4_,_loc5_,_loc6_));
            _loc9_++;
         }
      }
      
      public function _jk5923(param1:int) : uint
      {
         return _pn12847(this._ql1609[param1]).color;
      }
      
      public function _dd15313(param1:int) : int
      {
         if(this._ql1609[param1])
         {
            return _pn12847(this._ql1609[param1]).alpha;
         }
         return 100;
      }
      
      public function _yy6948(param1:int) : _pn12847
      {
         if(param1 < this._ql1609.length)
         {
            return new _pn12847(param1,this._ql1609[param1].color,this._ql1609[param1]._xk1425,this._ql1609[param1]._fp5369,this._ql1609[param1].alpha);
         }
         return null;
      }
      
      public function _vo5864(param1:_pn12847) : void
      {
         if(param1._un11300 < this._ql1609.length)
         {
            this._ql1609[param1._un11300] = param1;
         }
      }
      
      public function _xs11657() : Array
      {
         return _pn12847._cc6252(this._ql1609);
      }
      
      public function _xb15586() : int
      {
         return this._ql1609.length;
      }
   }
}

