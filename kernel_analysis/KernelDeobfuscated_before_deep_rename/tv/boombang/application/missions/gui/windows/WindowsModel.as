package src.tv.boombang.application.missions.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.com.greensock.*;
   import src.com.greensock.easing.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.missions.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.missions.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.list.*;
   import src.tv.boombang.library.steps.*;
   
   public class WindowsModel extends WindowsView implements Interfaces
   {
      
      private var _th13283:ComponentsController;
      
      private var _rf7887:ComponentsController;
      
      public function WindowsModel(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _xo6614.scaleX = 0;
         _xo6614.scaleY = 0;
         CustomEase.create("elasticBoombang",[{
            "s":0,
            "_qx12429":0.56899,
            "e":0.82
         },{
            "s":0.82,
            "_qx12429":1.071,
            "e":1.004
         },{
            "s":1.004,
            "_qx12429":0.937,
            "e":0.982
         },{
            "s":0.982,
            "_qx12429":1.02699,
            "e":1
         }]);
         GreensockUtils._lk9069(this._xo6614,1.5,{
            "x":120,
            "y":-180,
            "scaleY":1,
            "scaleX":1,
            "ease":CustomEase._yi14844("elasticBoombang")
         });
         this._th13283 = new ComponentsController();
         this._th13283._wt2363((ServiceLocator.get(ServicesController) as ServicesController)._gj9315());
         this._th13283.addEventListener(ListModel._yh7280,this._ic11415,false,0,true);
         this._rf7887 = new ComponentsController();
         this._rf7887.addEventListener("onShowList",this._kd611,false,0,true);
         this._rf7887.visible = false;
         _xo6614.addChild(this._th13283);
         _xo6614.addChild(this._rf7887);
      }
      
      private function _kd611(param1:Event) : void
      {
         this._rf7887.visible = false;
         this._th13283.visible = true;
      }
      
      private function _ic11415(param1:ListModel) : void
      {
         this._rf7887._xd13006(param1.data as MissionsModel);
         this._rf7887.visible = true;
         this._th13283.visible = false;
      }
      
      override protected function _qn6887(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         GreensockUtils._lk9069(this._xo6614,0.5,{
            "x":0,
            "y":0,
            "scaleY":0,
            "scaleX":0,
            "ease":Linear.easeNone,
            "_rm1014":function():void
            {
               _nk11935(StepsView._by10560);
            }
         });
      }
      
      override public function destroy() : void
      {
         this._th13283.destroy();
         this._rf7887.destroy();
         this._th13283.removeEventListener(ListModel._yh7280,this._ic11415);
         this._rf7887.removeEventListener(Event.CLOSE,this._kd611);
         super.destroy();
      }
   }
}

