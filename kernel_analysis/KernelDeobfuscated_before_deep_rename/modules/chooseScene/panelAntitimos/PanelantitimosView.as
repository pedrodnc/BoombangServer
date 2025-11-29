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
      
      public static const _ue3469:String = "getMovieClip";
      
      private static const _sd5599:String = "_mcPanel";
      
      private static const _ar2293:String = "mcReenviar";
      
      private static const _vl10118:String = "mcEmailProgress";
      
      private static const _qa575:String = "tfText";
      
      private static const _xl8327:uint = 160;
      
      private var _ef4896:MovieClip;
      
      private var _pq9645:ChoosesceneModel;
      
      private var _dn9880:ChoosesceneController;
      
      private var _bw5861:FichasController;
      
      private var _xf5548:CommoncomponentsView;
      
      private var _wi13877:Sprite;
      
      private var _eg2220:CommoncomponentsView;
      
      private var _li9369:uint = 0;
      
      public function PanelantitimosView(param1:MovieClip, param2:ChoosesceneModel, param3:ChoosesceneController)
      {
         super();
         this._pq9645 = param2;
         this._dn9880 = param3;
         this._ef4896 = param1;
         var _loc4_:FichasUtils = new FichasUtils(null,[this._pq9645._sf1582,this._pq9645._dv9710,this._pq9645._ou13443,this._pq9645._fe14539,this._pq9645._kd2863,this._pq9645._hi14116]);
         this._bw5861 = new FichasController(this._ef4896,_loc4_);
         this._xf5548 = new CommoncomponentsView(this._ef4896[_ar2293],this._qd4454,this._pq9645._pu11232);
         this._eg2220 = new CommoncomponentsView(this._ef4896[_vl10118],this._pq9645._xl7056,this._pq9645._sj2848,this._pq9645._ly779);
         this._av15549();
      }
      
      public function destroy() : void
      {
         this._bw5861.destroy();
         this._xf5548.destroy();
         this._pq9645 = null;
         this._dn9880 = null;
      }
      
      private function _qd4454() : void
      {
         this._dn9880.addEventListener(LoginEvents._tf16043,this._vh9315);
         this._xf5548._hu12389();
         this._eg2220._yf12156(CommoncomponentsView._hv1902);
         this._dn9880._lt13599();
      }
      
      private function _vh9315(param1:LoginEvents) : void
      {
         var _loc2_:Array = null;
         this._dn9880.removeEventListener(LoginEvents._tf16043,this._vh9315);
         _loc2_ = param1._lv9976;
         var _loc4_:uint = uint(String(_loc2_[2]).charCodeAt(0));
         switch(_loc4_)
         {
            case LoginProtocol._ar9210:
               var _loc3_:uint = uint(int(_loc2_[3]));
               switch(0)
               {
                  case 1:
                     this._eg2220._yf12156(CommoncomponentsView._sw10226);
                     this.addEventListener(Event.ENTER_FRAME,this._jx14467);
                     ThunderboltModel.info("Re-enviado");
                     break;
                  case -1:
                     this._eg2220._yf12156(CommoncomponentsView.ERROR);
                     this.addEventListener(Event.ENTER_FRAME,this._jx14467);
                     ThunderboltModel.info("Error");
                     break;
                  case 0:
                     this._eg2220._yf12156(CommoncomponentsView._ra14588);
                     this._xf5548._hu12389();
               }
               return;
            default:
               return;
         }
      }
      
      private function _jx14467(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         ++this._li9369;
         if(this._li9369 >= _xl8327)
         {
            this._li9369 = 0;
            this.removeEventListener(Event.ENTER_FRAME,this._jx14467);
            this._eg2220._yf12156(CommoncomponentsView._ra14588);
            this._xf5548._db5584();
         }
      }
      
      public function _hu12389() : Boolean
      {
         this._dn9880.removeEventListener(LoginEvents._tf16043,this._vh9315);
         this._bw5861._hu12389();
         return false;
      }
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         this._bw5861._db5584(param1,param2);
         this._wi13877.x += Configuration._wc13865 / 2 - param1;
         this._wi13877.y += Configuration._kl10731 / 2 - param2;
         return true;
      }
      
      private function _av15549() : void
      {
         this._wi13877 = new Sprite();
         this._wi13877.graphics.beginFill(0,0.5);
         this._wi13877.graphics.drawRect(-Configuration._wc13865 / 2,-Configuration._kl10731 / 2,Configuration._wc13865,Configuration._kl10731);
         this._wi13877.graphics.endFill();
         this._ef4896.addChild(this._wi13877);
         this._ef4896.setChildIndex(this._wi13877,0);
      }
   }
}

