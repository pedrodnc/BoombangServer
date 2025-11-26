package src.tv.boombang.core.datatypes.npc
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public class NpcModel extends ColorUtils
   {
      
      public static const _nd14059:NpcModel = new NpcModel(0);
      
      public static const _fi15052:NpcModel = new NpcModel(1);
      
      public static const _su3149:NpcModel = new NpcModel(2);
      
      public static const _ej5839:NpcModel = new NpcModel(3);
      
      public static const _gc10840:NpcModel = new NpcModel(4);
      
      public static const _oh4747:NpcModel = new NpcModel(5);
      
      _xy6875(NpcModel);
      
      private var count:int;
      
      public function NpcModel(param1:int)
      {
         super();
         this.count = param1;
      }
      
      public static function _bn928(param1:int) : NpcModel
      {
         var count:NpcModel = null;
         for each(count in NpcModel.items)
         {
            if(count.id == param1)
            {
               return count;
            }
         }
         return null;
      }
      
      public static function get items() : Array
      {
         return [_nd14059,_fi15052,_su3149,_ej5839,_gc10840,_oh4747];
      }
      
      public function get id() : int
      {
         return this.count;
      }
   }
}

