package src.loaders
{
   import flash.display.Loader;
   import flash.net.URLLoader;
   
   internal class _xe14606
   {
      
      public var _uf1803:String = "";
      
      public var _kf11860:Array;
      
      public var _ga933:Array;
      
      public function _xe14606()
      {
         this._kf11860 = new Array();
         this._ga933 = new Array();
         super();
      }
      
      public function _bx12196(param1:URLLoader) : _jb3113
      {
         var _loc2_:_jb3113 = null;
         for each(_loc2_ in this._kf11860)
         {
            if(param1 == _loc2_._wb7100)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _cv1926(param1:Loader) : _jb3113
      {
         var _loc2_:_jb3113 = null;
         for each(_loc2_ in this._kf11860)
         {
            if(param1 == _loc2_._sk4816)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _vo12786(param1:URLLoader) : _xc10131
      {
         var _loc2_:_xc10131 = null;
         for each(_loc2_ in this._ga933)
         {
            if(param1 == _loc2_._gh9083)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _pg15787() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < this._kf11860.length)
         {
            _loc2_ += _jb3113(this._kf11860[_loc1_])._dg12846._qk3096;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._ga933.length)
         {
            _loc2_ += _xc10131(this._ga933[_loc1_])._dg12846._qk3096;
            _loc1_++;
         }
         return _loc2_;
      }
      
      public function _tg7298() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = int(this._kf11860.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            if(_jb3113(this._kf11860[_loc2_]).state != _jb3113.COMPLETE)
            {
               return false;
            }
            _loc2_++;
         }
         _loc1_ = int(this._ga933.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            if(_xc10131(this._ga933[_loc2_]).state != _xc10131.COMPLETE)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function _dw9002() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < this._kf11860.length)
         {
            if(_jb3113(this._kf11860[_loc1_]).state == _jb3113.COMPLETE)
            {
               _loc2_ += _jb3113(this._kf11860[_loc1_])._dg12846._qk3096;
            }
            else
            {
               _loc2_ += _jb3113(this._kf11860[_loc1_])._dg12846._xy4578;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._ga933.length)
         {
            if(_xc10131(this._ga933[_loc1_]).state == _xc10131.COMPLETE)
            {
               _loc2_ += _xc10131(this._ga933[_loc1_])._dg12846._qk3096;
            }
            else
            {
               _loc2_ += _xc10131(this._ga933[_loc1_])._dg12846._xy4578;
            }
            _loc1_++;
         }
         return _loc2_;
      }
   }
}

