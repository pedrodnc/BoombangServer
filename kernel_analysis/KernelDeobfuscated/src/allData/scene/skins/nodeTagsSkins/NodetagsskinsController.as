package src.allData.scene.skins.nodeTagsSkins
{
   import src.allData.scene.skins.managerObjectSkineables.ManagerobjectskineablesController;
   
   public class NodetagsskinsController
   {
      
      public var id:int;
      
      public var name:String;
      
      public var elements:Array;
      
      public var isEnabled:Boolean;
      
      public var member:Boolean;
      
      public function NodetagsskinsController(param1:int, param2:String, param3:Array, param4:Boolean)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.elements = param3;
         this.isEnabled = this.isEnabled;
         this.member = param4;
      }
      
      public function render() : NodetagsskinsController
      {
         var count:int = 0;
         var count2:Array = new Array();
         while(count < this.elements.length)
         {
            count2.push(NodetagsskinsController(this.elements[count]).render());
            count++;
         }
         return new NodetagsskinsController(this.id,this.name,count2,this.member);
      }
      
      public function _iq14877(param1:int) : NodetagsskinsController
      {
         var count:int = 0;
         while(count < this.elements.length)
         {
            if(NodetagsskinsController(this.elements[count]).id == param1)
            {
               return NodetagsskinsController(this.elements[count]);
            }
            count++;
         }
         return null;
      }
      
      internal function getList(param1:ManagerobjectskineablesController, param2:Boolean) : Array
      {
         var count1:int = 0;
         var count3:Array = new Array();
         while(count1 < this.elements.length)
         {
            NodetagsskinsController(this.elements[count1]).getList(param1,count3,param2);
            count1++;
         }
         return count3;
      }
   }
}

