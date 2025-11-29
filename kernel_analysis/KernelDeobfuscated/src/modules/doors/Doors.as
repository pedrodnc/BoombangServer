package src.modules.doors
{
   public class Doors
   {
      
      public var id:int;
      
      public var textString:String;
      
      public var isEnabled:Boolean;
      
      public function Doors(param1:int, param2:String, param3:Boolean)
      {
         super();
         this.id = param1;
         this.textString = param2;
         this.isEnabled = param3;
      }
   }
}

