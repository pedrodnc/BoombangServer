package src.modules.interfaz.intercambios.boobles
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.dataObjects.DataobjectsModel;
   import src.modules.interfaz.intercambios.IntercambiosModel;
   import src.utils.*;
   import src.utils.showObjects.*;
   
   public class BooblesModel extends BooblesView
   {
      
      private static const textString:String = "tfTooltip";
      
      private static const textString1:String = "mcIconoMember";
      
      private var _il1123:ShowobjectsController;
      
      private var _om9425:DataobjectsModel;
      
      private var _ra4999:MovieClip;
      
      private var _rj10285:MovieClip;
      
      private var _mx2207:MovieClip;
      
      private var _im12039:IntercambiosModel;
      
      public function BooblesModel(param1:MovieClip, param2:Function, param3:DataobjectsModel, param4:MovieClip, param5:MovieClip, param6:MovieClip, param7:MovieClip, param8:IntercambiosModel)
      {
         super(param1,param2);
         this._om9425 = param3;
         this._ra4999 = param5;
         this._rj10285 = param6;
         this._mx2207 = param7;
         this._im12039 = param8;
         this._il1123 = new ShowobjectsController(_gh4578,param3._sl11700,param4);
         this._il1123.show();
         param1.buttonMode = true;
         param1.mouseEnabled = true;
         if(param3._sl11700._ph8835())
         {
            param1.gotoAndStop(textString2);
         }
         else
         {
            param1.gotoAndStop(textString);
         }
         MovieClip(param1[textString1]).visible = param3._sl11700.member;
         _hq10834.visible = false;
         param5.mouseEnabled = false;
         param5.mouseChildren = false;
         param6.mouseEnabled = false;
         param6.mouseChildren = false;
         param7.mouseEnabled = false;
         param7.mouseChildren = false;
         if(!param3._sl11700.isEnabled1)
         {
            _ef6299.visible = true;
            UtilsUtils._xl9503(_ji4650,String(param3.cant));
         }
      }
      
      override protected function onClick() : void
      {
         super.onClick();
         _pe16126.addEventListener(MouseEvent.MOUSE_MOVE,this.stop);
      }
      
      override protected function move() : void
      {
         super.move();
         if(_pe16126.hasEventListener(MouseEvent.MOUSE_MOVE))
         {
            _pe16126.removeEventListener(MouseEvent.MOUSE_MOVE,this.stop);
         }
      }
      
      override protected function stop(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.MOUSE_MOVE:
               this._si2326(param1);
               break;
            default:
               super.stop(param1);
         }
         param1.stopImmediatePropagation();
      }
      
      protected function _si2326(param1:MouseEvent) : void
      {
         this._ra4999.x = MovieClip(_pe16126.parent).mouseX;
         this._ra4999.y = MovieClip(_pe16126.parent).mouseY;
         this._rj10285.x = this._ra4999.x;
         this._rj10285.y = this._ra4999.y;
         this._mx2207.x = this._ra4999.x;
         this._mx2207.y = this._ra4999.y;
      }
      
      override public function stop() : void
      {
         UtilsUtils._xl9503(this._ra4999[textString],this._om9425._sl11700.name);
         this._ra4999.x = MovieClip(_pe16126.parent).mouseX;
         this._ra4999.y = MovieClip(_pe16126.parent).mouseY;
         this._ra4999.visible = true;
         this._rj10285.y = this._ra4999.y;
         this._rj10285.x = this._ra4999.x;
         this._mx2207.y = this._ra4999.y;
         this._mx2207.x = this._ra4999.x;
         switch(this._om9425._sl11700.count47)
         {
            case CatobjectsController.count41:
               UtilsUtils._xl9503(this._rj10285[textString],this._om9425._sl11700._sb8254.toString());
               break;
            case CatobjectsController._unicouq:
               UtilsUtils._xl9503(this._mx2207[textString],this._im12039._unico);
               break;
            case CatobjectsController._casiunicouq:
               UtilsUtils._xl9503(this._mx2207[textString],this._im12039._casiUnico);
               break;
            case CatobjectsController._ltduq:
               UtilsUtils._xl9503(this._mx2207[textString],this._im12039._ltd);
               break;
            case CatobjectsController._muyrareuq:
               UtilsUtils._xl9503(this._mx2207[textString],this._im12039._muyRare);
               break;
            case CatobjectsController._rareuq:
               UtilsUtils._xl9503(this._mx2207[textString],this._im12039._rare);
               break;
            case CatobjectsController._eventouq:
               UtilsUtils._xl9503(this._mx2207[textString],this._im12039._evento);
         }
         if(this._om9425._sl11700._ph8835())
         {
            _pe16126.gotoAndStop(textString3);
            this._rj10285.visible = false;
            this._mx2207.visible = true;
         }
         else
         {
            _pe16126.gotoAndStop(textString1);
            if(this._om9425._sl11700._sb8254 > 0)
            {
               this._rj10285.visible = true;
            }
            else
            {
               this._rj10285.visible = false;
            }
            this._mx2207.visible = false;
         }
      }
      
      override public function stop() : void
      {
         if(this._om9425 != null)
         {
            if(this._om9425._sl11700._ph8835())
            {
               _pe16126.gotoAndStop(textString2);
            }
            else
            {
               _pe16126.gotoAndStop(textString);
            }
            this._ra4999.visible = false;
            this._rj10285.visible = false;
            this._mx2207.visible = false;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._il1123 != null)
         {
            this._il1123.destroy();
            this._il1123 = null;
         }
      }
   }
}

