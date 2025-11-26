package src.tv.boombang.application.payments.gui.components
{
   import flash.display.*;
   import src.config.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ComponentsController extends MovieClip implements Interfaces
   {
      
      private var textString:String;
      
      private var textString1:String;
      
      private var _pr10098:MovieClip;
      
      private var _qe6495:ComponentsModel;
      
      private var _fe11698:MovieClip;
      
      private var _ne4523:MovieClip;
      
      private var _ub9111:ComponentsView;
      
      public function ComponentsController(param1:String, param2:String)
      {
         super();
         this.textString = param1;
         this.textString1 = param2;
         this._pr10098 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf",this.textString + "Icon") as MovieClip;
         if(this._pr10098["content"])
         {
            this._ub9111 = new ComponentsView(this._pr10098["content"] as MovieClip);
            this._ub9111.txt = "buttons.payments.title." + this.textString;
         }
         addChild(this._pr10098);
         var count3:Object = new Object();
         count3._kp2503 = Configuration.urlString27 + this.textString1.toLocaleLowerCase() + ".png";
         this._fe11698 = new MovieClip();
         this._ne4523 = new MovieClip();
         this._ne4523.name = "iconImage";
         this._fe11698.addChild(this._ne4523);
         this._qe6495 = new ComponentsModel(this._fe11698,count3,1,ComponentsModel.TOP_LEFT);
         addChild(this._qe6495);
      }
      
      public function destroy() : void
      {
         removeChild(this._pr10098);
         if(this._qe6495)
         {
            removeChild(this._qe6495);
            this._qe6495.destroy();
            this._qe6495 = null;
         }
         this._pr10098 = null;
      }
   }
}

