package src.allData.scene.skins.nodeTagsSkins
{
   import src.allData.scene.skins.managerObjectSkineables.ManagerobjectskineablesController;
   
   public class NodetagsskinsController
   {
      
      public var id:int;
      
      public var name:String;
      
      public var elements:Array;
      
      public var _lx630:Boolean;
      
      public var member:Boolean;
      
      public function NodetagsskinsController(param1:int, param2:String, param3:Array, param4:Boolean)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.elements = param3;
         this._lx630 = this._lx630;
         this.member = param4;
      }
      
      public function _iu12125() : NodetagsskinsController
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         while(_loc2_ < this.elements.length)
         {
            _loc1_.push(NodetagsskinsController(this.elements[_loc2_])._iu12125());
            _loc2_++;
         }
         return new NodetagsskinsController(this.id,this.name,_loc1_,this.member);
      }
      
      public function _iq14877(param1:int) : NodetagsskinsController
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.elements.length)
         {
            if(NodetagsskinsController(this.elements[_loc2_]).id == param1)
            {
               return NodetagsskinsController(this.elements[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      internal function _jk10868(param1:ManagerobjectskineablesController, param2:Boolean) : Array
      {
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc4_ < this.elements.length)
         {
            NodetagsskinsController(this.elements[_loc4_])._jk10868(param1,_loc3_,param2);
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

