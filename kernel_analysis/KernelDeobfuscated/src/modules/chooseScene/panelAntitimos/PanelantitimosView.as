package src.modules.chooseScene.panelAntitimos
{
   import flash.display.*;
   import flash.events.*;
   import src.config.*;
   import src.modules.chooseScene.ChoosesceneController;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.modules.login.*;
   import src.org.osflash.thunderbolt.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.*;
   
   public class PanelantitimosView extends MovieClip
   {
      
      public static const textString:String = "getMovieClip";
      
      private static const textString1:String = "_mcPanel";
      
      private static const textString2:String = "mcReenviar";
      
      private static const textString3:String = "mcEmailProgress";
      
      private static const textString4:String = "tfText";
      
      private static const _xl8327:uint = 160;
      
      private var _ef4896:MovieClip;
      
      private var _pq9645:ChoosesceneModel;
      
      private var _dn9880:ChoosesceneController;
      
      private var _bw5861:FichasController;
      
      private var _xf5548:CommoncomponentsView;
      
      private var _wi13877:Sprite;
      
      private var _eg2220:CommoncomponentsView;
      
      private var count4:uint = 0;
      
      public function PanelantitimosView(param1:MovieClip, param2:ChoosesceneModel, param3:ChoosesceneController)
      {
         super();
         this._pq9645 = param2;
         this._dn9880 = param3;
         this._ef4896 = param1;
         var count1:FichasUtils = new FichasUtils(null,[this._pq9645._sf1582,this._pq9645._dv9710,this._pq9645._ou13443,this._pq9645._fe14539,this._pq9645._kd2863,this._pq9645._hi14116]);
         this._bw5861 = new FichasController(this._ef4896,count1);
         this._xf5548 = new CommoncomponentsView(this._ef4896[textString2],this.authenticateUser,this._pq9645._pu11232);
         this._eg2220 = new CommoncomponentsView(this._ef4896[textString3],this._pq9645._xl7056,this._pq9645._sj2848,this._pq9645._ly779);
         this.render();
      }
      
      public function destroy() : void
      {
         this._bw5861.destroy();
         this._xf5548.destroy();
         this._pq9645 = null;
         this._dn9880 = null;
      }
      
      private function authenticateUser() : void
      {
         this._dn9880.addEventListener(LoginEvents.textString,this.authenticateUser1);
         this._xf5548.authenticateUser2();
         this._eg2220._yf12156(CommoncomponentsView.textString4);
         this._dn9880.authenticateUser6();
      }
      
      private function authenticateUser1(param1:LoginEvents) : void
      {
         var count:Array = null;
         this._dn9880.removeEventListener(LoginEvents.textString,this.authenticateUser1);
         count = param1.items;
         var count1:uint = uint(String(count[2]).charCodeAt(0));
         switch(count1)
         {
            case LoginProtocol.count10:
               var count3:uint = uint(int(count[3]));
               switch(0)
               {
                  case 1:
                     this._eg2220._yf12156(CommoncomponentsView.textString3);
                     this.addEventListener(Event.ENTER_FRAME,this.move);
                     ThunderboltModel.info("Re-enviado");
                     break;
                  case -1:
                     this._eg2220._yf12156(CommoncomponentsView.ERROR);
                     this.addEventListener(Event.ENTER_FRAME,this.move);
                     ThunderboltModel.info("Error");
                     break;
                  case 0:
                     this._eg2220._yf12156(CommoncomponentsView.textString2);
                     this._xf5548.authenticateUser2();
               }
               return;
            default:
               return;
         }
      }
      
      private function move(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         ++this.count4;
         if(this.count4 >= _xl8327)
         {
            this.count4 = 0;
            this.removeEventListener(Event.ENTER_FRAME,this.move);
            this._eg2220._yf12156(CommoncomponentsView.textString2);
            this._xf5548.show();
         }
      }
      
      public function authenticateUser2() : Boolean
      {
         this._dn9880.removeEventListener(LoginEvents.textString,this.authenticateUser1);
         this._bw5861.authenticateUser2();
         return false;
      }
      
      public function show(param1:int, param2:int) : Boolean
      {
         this._bw5861.show(param1,param2);
         this._wi13877.x += Configuration.count2 / 2 - param1;
         this._wi13877.y += Configuration.count3 / 2 - param2;
         return true;
      }
      
      private function render() : void
      {
         this._wi13877 = new Sprite();
         this._wi13877.graphics.beginFill(0,0.5);
         this._wi13877.graphics.drawRect(-Configuration.count2 / 2,-Configuration.count3 / 2,Configuration.count2,Configuration.count3);
         this._wi13877.graphics.endFill();
         this._ef4896.addChild(this._wi13877);
         this._ef4896.setChildIndex(this._wi13877,0);
      }
   }
}

