package src.tv.boombang.core.datatypes.notifications
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public class NotificationsModel extends ColorUtils
   {
      
      public static const _ft9177:NotificationsModel = new NotificationsModel(-1);
      
      public static const TEXT:NotificationsModel = new NotificationsModel(0);
      
      public static const _je12522:NotificationsModel = new NotificationsModel(1);
      
      public static const _uq10974:NotificationsModel = new NotificationsModel(2);
      
      public static const _fk12602:NotificationsModel = new NotificationsModel(3);
      
      public static const _qy2384:NotificationsModel = new NotificationsModel(4);
      
      public static const _ur4266:NotificationsModel = new NotificationsModel(5);
      
      public static const _ap6455:NotificationsModel = new NotificationsModel(6);
      
      public static const _em13679:NotificationsModel = new NotificationsModel(7);
      
      public static const _ww14078:NotificationsModel = new NotificationsModel(8);
      
      _xy6875(NotificationsModel);
      
      private var _id:int;
      
      public function NotificationsModel(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public static function _ob13942(param1:int) : NotificationsModel
      {
         var _loc2_:NotificationsModel = null;
         for each(_loc2_ in NotificationsModel._dy13189)
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
         return [_ft9177,TEXT,_je12522,_uq10974,_fk12602,_qy2384,_ur4266,_ap6455,_em13679,_ww14078];
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

