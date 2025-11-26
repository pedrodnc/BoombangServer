package src.tv.boombang.library.popup
{
   import flash.display.DisplayObjectContainer;
   import src.tv.boombang.commons.interfaces.InterfacesView;
   
   public interface IPopUpManager
   {
      
      function createPopUp(param1:DisplayObjectContainer, param2:InterfacesView, param3:Boolean = false, param4:uint = 13421772) : void;
      
      function removePopUp(param1:InterfacesView) : void;
      
      function centerPopUp(param1:InterfacesView) : void;
      
      function removeAll() : void;
   }
}

