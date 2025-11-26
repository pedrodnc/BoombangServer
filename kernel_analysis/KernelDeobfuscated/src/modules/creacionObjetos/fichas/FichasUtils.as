package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.modules.creacionObjetos.skin.Skin;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class FichasUtils extends FichasUtils
   {
      
      private var _vq3912:MovieClip;
      
      private var textString2:String = "";
      
      public function FichasUtils(param1:MovieClip, param2:FichasModel, param3:Skin, param4:int)
      {
         super(param1,param2,param3,"","");
         UtilsUtils._xl9503(param1["tfTitulo"],"npc." + param4 + ".texts.title");
         UtilsUtils._bj8346(param1["summary"],"npc." + param4 + ".texts.summary");
         UtilsUtils._bj8346(param1["details"],"npc." + param4 + ".texts.details");
         (param1["details"] as TextField).mouseEnabled = true;
         param1["details"].addEventListener(MouseEvent.CLICK,this._gh6120);
         param1.mouseChildren = true;
         this.textString2 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("npc." + param4 + ".texts.link");
         this._vq3912 = param1["link"];
         this._vq3912.buttonMode = true;
         this._vq3912.mouseChildren = false;
         this._vq3912.visible = false;
         if(param1["subtitle1"])
         {
            UtilsUtils._xl9503(param1["subtitle1"],"npc." + param4 + ".texts.subtitle1");
         }
         if(param1["subtitle2"])
         {
            UtilsUtils._xl9503(param1["subtitle2"],"npc." + param4 + ".texts.subtitle2");
         }
         if(param1["rect"])
         {
            StringUtils._ts14032(param1["rect"],param3._kk3956);
         }
         if(param1["rect2"])
         {
            StringUtils._ts14032(param1["rect2"],param3._kk3956);
         }
      }
      
      public function _ij14801(param1:MouseEvent) : void
      {
      }
      
      public function _gh6120(param1:Event) : void
      {
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
   }
}

