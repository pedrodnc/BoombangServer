package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.modules.creacionObjetos.skin._kd11296;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class _rv7452 extends _rm15087
   {
      
      private var _vq3912:MovieClip;
      
      private var _yt6862:String = "";
      
      public function _rv7452(param1:MovieClip, param2:_sw3551, param3:_kd11296, param4:int)
      {
         super(param1,param2,param3,"","");
         _yq8362._xl9503(param1["tfTitulo"],"npc." + param4 + ".texts.title");
         _yq8362._bj8346(param1["summary"],"npc." + param4 + ".texts.summary");
         _yq8362._bj8346(param1["details"],"npc." + param4 + ".texts.details");
         (param1["details"] as TextField).mouseEnabled = true;
         param1["details"].addEventListener(MouseEvent.CLICK,this._gh6120);
         param1.mouseChildren = true;
         this._yt6862 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("npc." + param4 + ".texts.link");
         this._vq3912 = param1["link"];
         this._vq3912.buttonMode = true;
         this._vq3912.mouseChildren = false;
         this._vq3912.visible = false;
         if(param1["subtitle1"])
         {
            _yq8362._xl9503(param1["subtitle1"],"npc." + param4 + ".texts.subtitle1");
         }
         if(param1["subtitle2"])
         {
            _yq8362._xl9503(param1["subtitle2"],"npc." + param4 + ".texts.subtitle2");
         }
         if(param1["rect"])
         {
            _xv14798._ts14032(param1["rect"],param3._kk3956);
         }
         if(param1["rect2"])
         {
            _xv14798._ts14032(param1["rect2"],param3._kk3956);
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

