package src.allData.scene.skins.nodeTagsSkins
{
   import src.allData.scene.skins.managerObjectSkineables._ui16110;
   
   public class _gi15767
   {
      
      public var id:int;
      
      public var _pr9381:String;
      
      public var _ny2512:int;
      
      public var type:String;
      
      public var skins:Array;
      
      public function _gi15767(param1:int, param2:String, param3:int, param4:Array, param5:String)
      {
         super();
         this.id = param1;
         this.type = param2;
         this._ny2512 = param3;
         this.skins = param4;
         this._pr9381 = param5;
      }
      
      public function _iu12125() : _gi15767
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this.skins.length)
         {
            _loc1_.push(_am1056(this.skins[_loc2_])._iu12125());
            _loc2_++;
         }
         return new _gi15767(this.id,this.type,this._ny2512,_loc1_,this._pr9381);
      }
      
      public function _vr14801(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.skins.length)
         {
            if(_am1056(this.skins[_loc2_]).id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function _gj5744(param1:int) : _am1056
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.skins.length)
         {
            if(_am1056(this.skins[_loc2_]).id == param1)
            {
               return _am1056(this.skins[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function _cs15075() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this.skins.length)
         {
            _loc1_.push(_am1056(this.skins[_loc2_]).name);
            _loc2_++;
         }
         return _loc1_;
      }
      
      internal function _jk10868(param1:_ui16110, param2:Array, param3:Boolean) : void
      {
         var _loc6_:int = int(param1._kr4569.indexOf(this.id));
         if(_loc6_ != -1)
         {
            var _loc4_:int = int(param1._of5759[_loc6_]);
            var _loc5_:_am1056 = this._gj5744(0);
            if(_loc5_ != null)
            {
               null._jk10868(param1,param2,_loc6_,param3);
            }
         }
      }
   }
}

