package src.utils.boombang
{
   import flash.display.DisplayObjectContainer;
   import flash.events.ContextMenuEvent;
   import flash.ui.*;
   
   public class _qa14528
   {
      
      public function _qa14528()
      {
         super();
      }
      
      public static function _bm3024(param1:DisplayObjectContainer) : void
      {
         var _loc2_:ContextMenu = new ContextMenu();
         _loc2_.hideBuiltInItems();
         var _loc3_:ContextMenuBuiltInItems = _loc2_.builtInItems;
         _loc3_.print = false;
         _loc3_.quality = true;
         _loc2_.customItems.push(new ContextMenuItem("BoomBang"));
         param1.contextMenu = _loc2_;
      }
      
      private static function _ym1084(param1:ContextMenuEvent) : void
      {
         ContextMenuItem(param1.contextMenuOwner.contextMenu.customItems[0]).caption = _ef10972._pd5179();
      }
   }
}

