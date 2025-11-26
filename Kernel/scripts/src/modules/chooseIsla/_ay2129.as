package src.modules.chooseIsla
{
   import src.allData.color.*;
   import src.person.*;
   
   public class _ay2129
   {
      
      public static const _lk13497:int = 4;
      
      public var id:int;
      
      public var name:String;
      
      public var type:int;
      
      public var color:String;
      
      public var _lp13903:_um8624;
      
      public function _ay2129()
      {
         super();
      }
      
      public function _ey14613() : void
      {
         this._lp13903 = new _um8624();
         this._lp13903.id = this.id;
         this._lp13903.name = this.name;
         this._lp13903._jn11596 = this.type;
         this._lp13903.colors = new _qm1392(this.color);
      }
   }
}

