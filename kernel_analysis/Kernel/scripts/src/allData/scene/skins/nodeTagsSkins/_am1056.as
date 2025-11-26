package src.allData.scene.skins.nodeTagsSkins
{
   import src.allData.scene.skins.managerObjectSkineables._ui16110;
   
   public class _am1056
   {
      
      public var id:int;
      
      public var name:String;
      
      public var skin:_sy9767;
      
      public function _am1056(param1:int, param2:String, param3:_sy9767)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.skin = param3;
      }
      
      public function _iu12125() : _am1056
      {
         return new _am1056(this.id,this.name,this.skin._iu12125());
      }
      
      public function _st1257() : Array
      {
         return this.skin._st1257();
      }
      
      internal function _jk10868(param1:_ui16110, param2:Array, param3:int, param4:Boolean) : void
      {
         this.skin._jk10868(param1,param2,param3,param4);
      }
   }
}

