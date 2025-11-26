package src.tv.boombang.application.bpad.gui.component
{
   import flash.display.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.levelup.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   
   public class ComponentModel extends MovieClip implements Interfaces
   {
      
      private var _id:int;
      
      private var count:NotificationsModel;
      
      private var _ia2984:MovieClip;
      
      private var _data:Array;
      
      public function ComponentModel(param1:Array)
      {
         super();
         this.count = NotificationsModel._ob13942(param1[0]);
         this._id = param1[1];
         this._data = new Array();
         this._data[0] = this.count;
         this._data[1] = this._id;
         this._data[2] = "";
         this._data[3] = "";
         this._data[4] = "";
         var count:int = 2;
         while(count < param1.length)
         {
            this._data.push(param1[count]);
            count++;
         }
         switch(this.count)
         {
            case NotificationsModel._fk12602:
               this._ia2984 = new ComponentController(new LevelupModel(this._data)) as MovieClip;
               break;
            case NotificationsModel._qy2384:
               this._ia2984 = new ComponentController(this._data) as MovieClip;
               break;
            case NotificationsModel._ww14078:
               this._ia2984 = new ComponentController(this._data) as MovieClip;
         }
         addChild(this._ia2984);
      }
      
      public function destroy() : void
      {
         if(this._ia2984)
         {
            removeChild(this._ia2984);
            this._ia2984.destroy();
            this._ia2984 = null;
         }
      }
   }
}

