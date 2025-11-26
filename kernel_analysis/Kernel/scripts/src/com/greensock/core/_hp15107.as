package src.com.greensock.core
{
   public final class _hp15107
   {
      
      public var target:Object;
      
      public var property:String;
      
      public var start:Number;
      
      public var change:Number;
      
      public var name:String;
      
      public var priority:int;
      
      public var _po6828:Boolean;
      
      public var _cj3209:_hp15107;
      
      public var _el4863:_hp15107;
      
      public function _hp15107(param1:Object, param2:String, param3:Number, param4:Number, param5:String, param6:Boolean, param7:_hp15107 = null, param8:int = 0)
      {
         super();
         this.target = param1;
         this.property = param2;
         this.start = param3;
         this.change = param4;
         this.name = param5;
         this._po6828 = param6;
         if(param7)
         {
            param7._el4863 = this;
            this._cj3209 = param7;
         }
         this.priority = param8;
      }
   }
}

