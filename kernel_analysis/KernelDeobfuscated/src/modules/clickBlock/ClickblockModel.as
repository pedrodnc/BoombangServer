package src.modules.clickBlock
{
   import flash.display.*;
   import flash.events.*;
   import src.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public dynamic class ClickblockModel
   {
      
      private static var _uf9866:MovieClip;
      
      private static var _cw11838:MovieClip;
      
      private static var _pl6654:CommoncomponentsView;
      
      private static var _qe15639:CommoncomponentsView;
      
      private static var _ob9498:CommoncomponentsView;
      
      public static const count:int = 0;
      
      public static const count1:int = 1;
      
      private static const textString:String = "avisoBB";
      
      private static const textString1:String = "mcWaitBB";
      
      private static const textString2:String = "mcAvisoBB";
      
      private static const textString3:String = "mcAvisoBBExit";
      
      private static const textString4:String = "mcBotonCerrar";
      
      private static const textString5:String = "mcBottonExit";
      
      private static const textString6:String = "mcInfoAviso";
      
      private static const textString7:String = "tfText";
      
      private static var isEnabled:Boolean = false;
      
      public function ClickblockModel()
      {
         super();
      }
      
      public static function _oa11569(param1:MovieClip) : void
      {
         _cw11838 = param1;
      }
      
      private static function _ga15528(param1:int) : void
      {
         if(_cw11838 != null)
         {
            switch(param1)
            {
               case count:
                  UtilsUtils._xl9503(_cw11838[textString2][textString6][textString7],"popup.fullArea");
                  UtilsUtils._xl9503(_cw11838[textString3][textString6][textString7],"popup.fullArea.exit");
                  UtilsUtils._xl9503(_cw11838[textString1][textString7],XML(TextManager._eo5308[textString]).attribute("conectado"));
                  return;
               case count1:
                  UtilsUtils._xl9503(_cw11838[textString2][textString6][textString7],"popup.fullArea");
                  UtilsUtils._xl9503(_cw11838[textString3][textString6][textString7],"popup.fullArea.exit");
                  UtilsUtils._xl9503(_cw11838[textString1][textString7],XML(TextManager._eo5308[textString]).attribute("waiting"));
                  return;
            }
         }
      }
      
      public static function render(param1:int) : void
      {
         var count:MovieClip = null;
         move();
         if(_uf9866 == null)
         {
            _uf9866 = new MovieClip();
            count = new MovieClip();
            count.graphics.beginFill(16777215,0.2);
            count.graphics.drawRect(0,0,Configuration.count2,Configuration.count3);
            count.graphics.endFill();
            _uf9866.addChild(count);
            if(_cw11838 != null)
            {
               MovieClip(_cw11838[textString1]).x = Configuration.count2 / 2;
               MovieClip(_cw11838[textString1]).y = Configuration.count3 / 2;
               _uf9866.addChild(_cw11838[textString1]);
               _ga15528(param1);
            }
         }
         _uf9866.addEventListener(MouseEvent.MOUSE_DOWN,stop);
         _og12356();
         _xw1367.getInstance()._uc3178(_uf9866,_xw1367.count9);
      }
      
      public static function move() : void
      {
         if(_uf9866 != null)
         {
            _uf9866.removeEventListener(MouseEvent.MOUSE_DOWN,stop);
            _xw1367.getInstance().move2(_uf9866,_xw1367.count9);
            _uf9866 = null;
         }
      }
      
      public static function _il2596(param1:Function) : void
      {
         if(_qe15639 == null)
         {
            MovieClip(_cw11838[textString3]).x = Configuration.count2 / 2;
            MovieClip(_cw11838[textString3]).y = Configuration.count3 / 2;
            _qe15639 = new CommoncomponentsView(_cw11838[textString3][textString4],_og12356,"button.cerrar");
         }
         if(_ob9498)
         {
            _ob9498.destroy();
            _ob9498 = null;
         }
         _ob9498 = new CommoncomponentsView(_cw11838[textString3][textString5],param1,"popup.fullArea.button.exitHouse");
         _xw1367.getInstance()._uc3178(_cw11838[textString3],_xw1367.count9);
         isEnabled = true;
      }
      
      public static function _py12780() : void
      {
         if(_pl6654 == null)
         {
            MovieClip(_cw11838[textString2]).x = Configuration.count2 / 2;
            MovieClip(_cw11838[textString2]).y = Configuration.count3 / 2;
            _pl6654 = new CommoncomponentsView(_cw11838[textString2][textString4],_og12356,"button.cerrar");
         }
         _xw1367.getInstance()._uc3178(_cw11838[textString2],_xw1367.count9);
         isEnabled = true;
      }
      
      public static function _og12356() : void
      {
         if(isEnabled)
         {
            _xw1367.getInstance().move2(_cw11838[textString2],_xw1367.count9);
            _xw1367.getInstance().move2(_cw11838[textString3],_xw1367.count9);
            isEnabled = false;
         }
      }
      
      private static function stop(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
   }
}

