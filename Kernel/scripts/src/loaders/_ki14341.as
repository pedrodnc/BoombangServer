package src.loaders
{
   import src.config.*;
   
   public class _ki14341
   {
      
      public var name:String;
      
      public var _en11768:String;
      
      public var _le1402:String;
      
      public var type:int;
      
      public var _pi16172:Boolean;
      
      public var _qk3096:int = 0;
      
      public var _xy4578:int = 0;
      
      public var _ef8064:String = "";
      
      public function _ki14341(param1:String, param2:String, param3:String, param4:int, param5:Boolean, param6:Boolean = true)
      {
         super();
         this.name = param1;
         if(param6)
         {
            this._en11768 = _cc7688._su9470 + param2;
         }
         else
         {
            this._en11768 = param2;
         }
         this._le1402 = param3;
         this.type = param4;
         this._pi16172 = param5;
      }
      
      public function get _lv11027() : String
      {
         var _loc1_:String = _sa9254._av14707;
         if(this._ef8064.length > 0)
         {
            _loc1_ = "?nocache=" + this._ef8064;
         }
         return this._en11768 + this._le1402 + _loc1_;
      }
   }
}

