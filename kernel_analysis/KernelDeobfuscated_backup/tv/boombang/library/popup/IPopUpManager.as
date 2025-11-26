package src.tv.boombang.library.popup
{
   import flash.display.DisplayObjectContainer;
   import src.tv.boombang.commons.interfaces._ff15513;
   
   public interface IPopUpManager
   {
      
      function createPopUp(param1:DisplayObjectContainer, param2:_ff15513, param3:Boolean = false, param4:uint = 13421772) : void;
      
      function removePopUp(param1:_ff15513) : void;
      
      function centerPopUp(param1:_ff15513) : void;
      
      function removeAll() : void;
   }
}

