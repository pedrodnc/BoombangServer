package src.modules.interfaz.intercambios.boobles
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.modules.interfaz.intercambios._to7430;
   import src.utils.*;
   import src.utils.showObjects.*;
   
   public class _oy3679 extends _vx12186
   {
      
      private static const _jc6758:String = "tfTooltip";
      
      private static const _bc8459:String = "mcIconoMember";
      
      private var _il1123:_ex13074;
      
      private var _om9425:_gl6654;
      
      private var _ra4999:MovieClip;
      
      private var _rj10285:MovieClip;
      
      private var _mx2207:MovieClip;
      
      private var _im12039:_to7430;
      
      public function _oy3679(param1:MovieClip, param2:Function, param3:_gl6654, param4:MovieClip, param5:MovieClip, param6:MovieClip, param7:MovieClip, param8:_to7430)
      {
         super(param1,param2);
         this._om9425 = param3;
         this._ra4999 = param5;
         this._rj10285 = param6;
         this._mx2207 = param7;
         this._im12039 = param8;
         this._il1123 = new _ex13074(_gh4578,param3._sl11700,param4);
         this._il1123.show();
         param1.buttonMode = true;
         param1.mouseEnabled = true;
         if(param3._sl11700._ph8835())
         {
            param1.gotoAndStop(_fh9305);
         }
         else
         {
            param1.gotoAndStop(_yg8197);
         }
         MovieClip(param1[_bc8459]).visible = param3._sl11700.member;
         _hq10834.visible = false;
         param5.mouseEnabled = false;
         param5.mouseChildren = false;
         param6.mouseEnabled = false;
         param6.mouseChildren = false;
         param7.mouseEnabled = false;
         param7.mouseChildren = false;
         if(!param3._sl11700._au2864)
         {
            _ef6299.visible = true;
            _yq8362._xl9503(_ji4650,String(param3.cant));
         }
      }
      
      override protected function _nc2422() : void
      {
         super._nc2422();
         _pe16126.addEventListener(MouseEvent.MOUSE_MOVE,this._xx13833);
      }
      
      override protected function _al10937() : void
      {
         super._al10937();
         if(_pe16126.hasEventListener(MouseEvent.MOUSE_MOVE))
         {
            _pe16126.removeEventListener(MouseEvent.MOUSE_MOVE,this._xx13833);
         }
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.MOUSE_MOVE:
               this._si2326(param1);
               break;
            default:
               super._xx13833(param1);
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
      
      override public function _ch1514() : void
      {
         _yq8362._xl9503(this._ra4999[_jc6758],this._om9425._sl11700.name);
         this._ra4999.x = MovieClip(_pe16126.parent).mouseX;
         this._ra4999.y = MovieClip(_pe16126.parent).mouseY;
         this._ra4999.visible = true;
         this._rj10285.y = this._ra4999.y;
         this._rj10285.x = this._ra4999.x;
         this._mx2207.y = this._ra4999.y;
         this._mx2207.x = this._ra4999.x;
         switch(this._om9425._sl11700._eg3710)
         {
            case _uq7753._nt6489:
               _yq8362._xl9503(this._rj10285[_jc6758],this._om9425._sl11700._sb8254.toString());
               break;
            case _uq7753._unicouq:
               _yq8362._xl9503(this._mx2207[_jc6758],this._im12039._unico);
               break;
            case _uq7753._casiunicouq:
               _yq8362._xl9503(this._mx2207[_jc6758],this._im12039._casiUnico);
               break;
            case _uq7753._ltduq:
               _yq8362._xl9503(this._mx2207[_jc6758],this._im12039._ltd);
               break;
            case _uq7753._muyrareuq:
               _yq8362._xl9503(this._mx2207[_jc6758],this._im12039._muyRare);
               break;
            case _uq7753._rareuq:
               _yq8362._xl9503(this._mx2207[_jc6758],this._im12039._rare);
               break;
            case _uq7753._eventouq:
               _yq8362._xl9503(this._mx2207[_jc6758],this._im12039._evento);
         }
         if(this._om9425._sl11700._ph8835())
         {
            _pe16126.gotoAndStop(_bs12037);
            this._rj10285.visible = false;
            this._mx2207.visible = true;
         }
         else
         {
            _pe16126.gotoAndStop(_sg6807);
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
      
      override public function _iv1460() : void
      {
         if(this._om9425 != null)
         {
            if(this._om9425._sl11700._ph8835())
            {
               _pe16126.gotoAndStop(_fh9305);
            }
            else
            {
               _pe16126.gotoAndStop(_yg8197);
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

