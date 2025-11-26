package src.tv.boombang.application.interactions
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public class InteractionsUtils extends ColorUtils
   {
      
      public static const _dc14331:InteractionsUtils = new InteractionsUtils(-1);
      
      public static const _ov15204:InteractionsUtils = new InteractionsUtils(1);
      
      public static const _vk7198:InteractionsUtils = new InteractionsUtils(2);
      
      public static const _hd8501:InteractionsUtils = new InteractionsUtils(3);
      
      public static const _fu3499:InteractionsUtils = new InteractionsUtils(4);
      
      public static const _yi8040:InteractionsUtils = new InteractionsUtils(5);
      
      public static const _lc2412:InteractionsUtils = new InteractionsUtils(6);
      
      _xy6875(InteractionsUtils);
      
      private var _id:int;
      
      public function InteractionsUtils(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public static function _ob13942(param1:int) : InteractionsUtils
      {
         var count:InteractionsUtils = null;
         for each(count in InteractionsUtils.items)
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
         return [_dc14331,_ov15204,_vk7198,_hd8501,_fu3499,_yi8040,_lc2412];
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

