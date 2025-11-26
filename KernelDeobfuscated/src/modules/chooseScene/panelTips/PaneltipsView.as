package src.modules.chooseScene.panelTips
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import src.*;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.utils.*;
   
   public class PaneltipsView
   {
      
      private static var items:Array;
      
      private static var count:int;
      
      private static const textString:String = "tfTituloTips";
      
      private static const textString1:String = "tfTip";
      
      private static const textString2:String = "tfSiguienteTip";
      
      private static const textString3:String = "tfImportante";
      
      private static const textString4:String = "mcBotonTipSiguiente";
      
      private static const textString5:String = "mcHitAreaBotonTipSiguiente";
      
      private static const textString6:String = "mcMariposa";
      
      private static const textString7:String = "enter";
      
      private static const textString8:String = "loop";
      
      private static const textString9:String = "leave";
      
      private var _yo7341:MovieClip;
      
      private var _gy10361:ChoosesceneModel;
      
      private var count:int;
      
      public function PaneltipsView(param1:MovieClip, param2:ChoosesceneModel)
      {
         super();
         this._yo7341 = param1;
         this._gy10361 = param2;
         MovieClip(this._yo7341[textString4]).hitArea = MovieClip(this._yo7341[textString5]);
         MovieClip(this._yo7341[textString5]).visible = false;
         TextField(this._yo7341[textString2]).mouseEnabled = false;
         this._pw5074();
         this._ae6466();
         this._yo7341.visible = false;
         this.count = _xw1367.count5;
         this.init();
      }
      
      private function init() : void
      {
         this.onClick();
      }
      
      public function destroy() : void
      {
         this.onClick1();
      }
      
      private function _pw5074() : void
      {
         UtilsUtils._xl9503(this._yo7341[textString],this._gy10361._mw12243);
         UtilsUtils._xl9503(this._yo7341[textString2],this._gy10361._rs3823);
         UtilsUtils._xl9503(this._yo7341[textString3],this._gy10361._wx2720);
      }
      
      private function _ut8237() : void
      {
         UtilsUtils._xl9503(this._yo7341[textString1],this._gy10361._ws15316[items[count]]);
      }
      
      private function _ae6466() : void
      {
         var count2:int = 0;
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:int = 0;
         if(items == null)
         {
            items = new Array();
            count2 = 0;
            while(count2 < this._gy10361._ws15316.length)
            {
               items.push(count2);
               count2++;
            }
            count = 0;
            while(count2 < this._gy10361._ws15316.length * 8)
            {
               count3 = Math.random() * this._gy10361._ws15316.length;
               count1 = Math.random() * this._gy10361._ws15316.length;
               if(count3 < this._gy10361._ws15316.length && count1 < this._gy10361._ws15316.length)
               {
                  count2 = int(items[count1]);
                  items[count1] = items[count3];
                  items[count3] = count2;
               }
               count2++;
            }
         }
         count = (count + 1) % this._gy10361._ws15316.length;
         this._ut8237();
      }
      
      private function stop(param1:MouseEvent) : void
      {
         MovieClip(this._yo7341[textString4]).gotoAndStop("rollover");
         var count:ColorTransform = new ColorTransform();
         count.color = 16750848;
         TextField(this._yo7341[textString2]).transform.colorTransform = count;
      }
      
      private function stop1(param1:MouseEvent) : void
      {
         MovieClip(this._yo7341[textString4]).gotoAndStop("normal");
         var count:ColorTransform = new ColorTransform();
         count.color = 52326;
         TextField(this._yo7341[textString2]).transform.colorTransform = count;
      }
      
      private function _hq5985(param1:MouseEvent) : void
      {
         count = (count + 1) % this._gy10361._ws15316.length;
         this._ut8237();
      }
      
      public function loop() : void
      {
      }
      
      public function authenticateUser2() : Boolean
      {
         _xw1367.getInstance().move2(this._yo7341,this.count);
         this._yo7341.visible = false;
         MovieClip(this._yo7341[textString6]).gotoAndPlay(textString9);
         return true;
      }
      
      public function show(param1:int, param2:int) : Boolean
      {
         _xw1367.getInstance()._uc3178(this._yo7341,this.count);
         this._yo7341.x = param1;
         this._yo7341.y = param2;
         this._yo7341.visible = true;
         this._ae6466();
         MovieClip(this._yo7341[textString6]).gotoAndPlay(textString7);
         return true;
      }
      
      public function onClick() : void
      {
         MovieClip(this._yo7341[textString4]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._yo7341[textString4]).addEventListener(MouseEvent.ROLL_OUT,this.stop1);
         MovieClip(this._yo7341[textString4]).addEventListener(MouseEvent.CLICK,this._hq5985);
      }
      
      public function onClick1() : void
      {
         MovieClip(this._yo7341[textString4]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._yo7341[textString4]).removeEventListener(MouseEvent.ROLL_OUT,this.stop1);
         MovieClip(this._yo7341[textString4]).removeEventListener(MouseEvent.CLICK,this._hq5985);
      }
   }
}

