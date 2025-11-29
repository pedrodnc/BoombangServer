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
      
      private var _nb15690:int;
      
      public function NpcModel(param1:int)
      {
         super();
         this._nb15690 = param1;
      }
      
      public static function _bn928(param1:int) : NpcModel
      {
         var _loc2_:NpcModel = null;
         for each(_loc2_ in NpcModel._dy13189)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function get _dy13189() : Array
      {
         return [_nd14059,_fi15052,_su3149,_ej5839,_gc10840,_oh4747];
      }
      
      public function get id() : int
      {
         return this._nb15690;
      }
   }
}

