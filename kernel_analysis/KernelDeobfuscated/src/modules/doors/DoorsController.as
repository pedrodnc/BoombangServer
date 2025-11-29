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
      
      private static const count6:int = 804;
      
      private static const count7:int = 357;
      
      public static const textString:String = "getMovieClip";
      
      public static const textString1:String = "mcDoorCanOpen";
      
      public static const textString2:String = "mcCanNotOpenDoor";
      
      public static const textString3:String = "mcCanOpenDoor";
      
      public static const textString4:String = "mcLlaves";
      
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
      
      public function stop(param1:DoorsModel) : void
      {
         if(!param1.isEnabled)
         {
            this.destroy2();
            var count1:Boolean = Boolean(MochilaModel.getInstance()._hl8360(param1.count2));
            if(!this._bl11315.isEnabled1)
            {
               var count:MovieClip = this._cb6554[textString](textString2);
               null[textString4].gotoAndStop(0);
               var count3:FichasUtils = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,"",""]);
               this._pd13045 = new FichasController(null,null);
               this._pd13045.show(count6,count7);
               dispatchEvent(new DoorsEvents(DoorsEvents.textString1));
            }
            else
            {
               count = this._cb6554[textString](textString2);
               var count2:String = "";
               if(param1.count1 < this._ay3770._nx11037.length && param1.count1 >= 0)
               {
                  null[textString4].gotoAndStop(param1.count1);
               }
               count2 = this._ay3770._nx11037[param1.count1];
               if(param1.count1 >= 2)
               {
                  count3 = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,"",null]);
               }
               else
               {
                  count3 = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,this._ay3770._xg4232,null]);
               }
               this._pd13045 = new FichasController(null,null);
               this._pd13045.show(count6,count7);
               dispatchEvent(new DoorsEvents(DoorsEvents.textString1));
            }
         }
      }
      
      private function destroy() : void
      {
         if(this._pd13045 != null)
         {
            this._pd13045.destroy();
            var count2:MovieClip = this._cb6554[textString](textString2);
            var count:FichasUtils = new FichasUtils(this._ay3770._ns11408,[this._ay3770._jx6057,this._ay3770._by12210,""]);
            this._pd13045 = new FichasController(null,null);
            this._pd13045.show(count6,count7);
         }
      }
      
      private function destroy1() : void
      {
         if(this._pd13045 != null)
         {
            this._pd13045.destroy();
            var count2:MovieClip = this._cb6554[textString](textString3);
            var count:FichasUtils = new FichasUtils(this._ay3770._ac1443,[this._ay3770._ac1443,this._ay3770._nq12644,this._ay3770._qu747]);
            this._pd13045 = new FichasController(null,null);
            this._pd13045.show(count6,count7);
         }
      }
      
      public function authenticateUser2() : void
      {
         this.destroy2();
      }
      
      private function _if2003(param1:DoorsModel) : void
      {
         this._tb12411.handleSocket19(param1.count);
      }
      
      public function _cr11263(param1:int) : void
      {
         this.destroy1();
      }
      
      public function _up14749() : void
      {
         this.destroy();
      }
      
      private function destroy2() : void
      {
         if(this._pd13045 != null)
         {
            this._pd13045.destroy();
            this._pd13045 = null;
         }
      }
      
      public function destroy() : void
      {
         this.destroy2();
      }
   }
}

