package src.modules.doors
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import src.allData.mochila.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.modules.privados.PrivadosModel;
   import src.utils.fichas.*;
   
   public class DoorsController extends EventDispatcher
   {
      
      private static const _qh11016:int = 804;
      
      private static const _cj11822:int = 357;
      
      public static const _ue3469:String = "getMovieClip";
      
      public static const _dq4439:String = "mcDoorCanOpen";
      
      public static const _un3197:String = "mcCanNotOpenDoor";
      
      public static const _jw1817:String = "mcCanOpenDoor";
      
      public static const _bj543:String = "mcLlaves";
      
      private var _cb6554:MovieClip;
      
      private var _pd13045:FichasController;
      
      private var _ay3770:DoorsModel;
      
      private var _tb12411:PrivadosModel;
      
      private var _bl11315:SceneType;
      
      public function DoorsController(param1:MovieClip, param2:PrivadosModel, param3:SceneType)
      {
         super();
         this._cb6554 = param1;
         this._tb12411 = param2;
         this._bl11315 = param3;
         this._ay3770 = new DoorsModel();
      }
      
      public function _gt3152(param1:DoorsModel) : void
      {
         if(!param1._sg11546)
         {
            this._ma7468();
            var _loc4_:Boolean = Boolean(MochilaModel.getInstance()._hl8360(param1._rs3115));
            if(!this._bl11315._xn7478)
            {
               var _loc2_:MovieClip = this._cb6554[_ue3469](_un3197);
               null[_bj543].gotoAndStop(0);
               var _loc3_:FichasUtils = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,"",""]);
               this._pd13045 = new FichasController(null,null);
               this._pd13045._db5584(_qh11016,_cj11822);
               dispatchEvent(new DoorsEvents(DoorsEvents._ma5592));
            }
            else
            {
               _loc2_ = this._cb6554[_ue3469](_un3197);
               var _loc5_:String = "";
               if(param1._tl8577 < this._ay3770._nx11037.length && param1._tl8577 >= 0)
               {
                  null[_bj543].gotoAndStop(param1._tl8577);
               }
               _loc5_ = this._ay3770._nx11037[param1._tl8577];
               if(param1._tl8577 >= 2)
               {
                  _loc3_ = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,"",null]);
               }
               else
               {
                  _loc3_ = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,this._ay3770._xg4232,null]);
               }
               this._pd13045 = new FichasController(null,null);
               this._pd13045._db5584(_qh11016,_cj11822);
               dispatchEvent(new DoorsEvents(DoorsEvents._ma5592));
            }
         }
      }
      
      private function _lc2122() : void
      {
         if(this._pd13045 != null)
         {
            this._pd13045.destroy();
            var _loc1_:MovieClip = this._cb6554[_ue3469](_un3197);
            var _loc2_:FichasUtils = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,this._ay3770._by12210,""]);
            this._pd13045 = new FichasController(null,null);
            this._pd13045._db5584(_qh11016,_cj11822);
         }
      }
      
      private function _li13563() : void
      {
         if(this._pd13045 != null)
         {
            this._pd13045.destroy();
            var _loc1_:MovieClip = this._cb6554[_ue3469](_jw1817);
            var _loc2_:FichasUtils = new FichasUtils(this._ay3770._ac1443,[this._ay3770._ac1443,this._ay3770._nq12644,this._ay3770._qu747]);
            this._pd13045 = new FichasController(null,null);
            this._pd13045._db5584(_qh11016,_cj11822);
         }
      }
      
      public function _hu12389() : void
      {
         this._ma7468();
      }
      
      private function _if2003(param1:DoorsModel) : void
      {
         this._tb12411._pr6590(param1._ap9953);
      }
      
      public function _cr11263(param1:int) : void
      {
         this._li13563();
      }
      
      public function _up14749() : void
      {
         this._lc2122();
      }
      
      private function _ma7468() : void
      {
         if(this._pd13045 != null)
         {
            this._pd13045.destroy();
            this._pd13045 = null;
         }
      }
      
      public function destroy() : void
      {
         this._ma7468();
      }
   }
}

