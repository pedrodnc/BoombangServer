package
{
   public function irrcrpt(param1:String, param2:int) : String
   {
      var _loc3_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:String = new String();
      while(_loc5_ < param1.length)
      {
         _loc3_ = int(param1.charCodeAt(_loc5_));
         if(_loc3_ >= 48 && _loc3_ <= 57)
         {
            _loc3_ = _loc3_ - param2 - 48;
            if(_loc3_ < 0)
            {
               _loc3_ += 57 - 48 + 1;
            }
            _loc3_ = _loc3_ % (57 - 48 + 1) + 48;
         }
         else if(_loc3_ >= 65 && _loc3_ <= 90)
         {
            _loc3_ = _loc3_ - param2 - 65;
            if(_loc3_ < 0)
            {
               _loc3_ += 90 - 65 + 1;
            }
            _loc3_ = _loc3_ % (90 - 65 + 1) + 65;
         }
         else if(_loc3_ >= 97 && _loc3_ <= 122)
         {
            _loc3_ = _loc3_ - param2 - 97;
            if(_loc3_ < 0)
            {
               _loc3_ += 122 - 97 + 1;
            }
            _loc3_ = _loc3_ % (122 - 97 + 1) + 97;
         }
         _loc4_ += String.fromCharCode(_loc3_);
         _loc5_++;
      }
      return _loc4_;
   }
}

