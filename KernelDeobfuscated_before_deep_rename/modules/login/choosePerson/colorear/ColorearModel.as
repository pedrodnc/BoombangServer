package src.modules.login.choosePerson.colorear
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.color.ColorModel;
   import src.modules.login.choosePerson.*;
   import src.person.*;
   
   public class ColorearModel extends ColorearModel
   {
      
      private static const _wx12638:int = 8;
      
      private static const _iw6046:String = "pez";
      
      private static const _ll9401:String = "aletas";
      
      private static const _if10105:String = "cuerpo";
      
      private static const _dx10807:String = "cabeza";
      
      private static const _yx459:int = 0;
      
      private static const _es11361:int = 1;
      
      private static const _ee7058:int = 2;
      
      private static const _on2621:Array = [[],[7736642,5443951,9060213],[16777215,12101792,14207175],[6736896,5346347,26163],[13599382,10884167,12668274],[8042183,219765,294819],[13997593,8666903,13391878],[0,7162675,16763904],[15453306,16750848,15522485]];
      
      private static const _dl230:Array = [0,2,2,2,2,0,0,4,1,1,2,2];
      
      public function ColorearModel(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function)
      {
         super(param1,param2,param3,param4,param5);
         _vm8323 = [];
         _vm8323[0] = param2[_ln13779[param3] + _bn5205 + _dl230[param3]].color;
      }
      
      override protected function _bf682() : void
      {
         _bx5761(ChoosepersonController._eb14960);
      }
      
      override public function updateColor(param1:ColorModel) : void
      {
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _dl230[_pl6821]].color = param1.color;
      }
      
      override protected function _hc15271(param1:MouseEvent) : void
      {
         var _loc2_:int = int(String(param1.currentTarget.name).charAt(3));
         switch(param1.target.name)
         {
            case _dx10807:
               _py15642[_ln13779[_pl6821] + _bn5205 + _dl230[_pl6821]].color = _on2621[_loc2_][_ee7058];
               var _loc3_:Boolean = true;
               break;
            case _ll9401:
               _py15642[_ln13779[_pl6821] + _bn5205 + _dl230[_pl6821]].color = _on2621[_loc2_][_yx459];
               _loc3_ = true;
               break;
            case _if10105:
               _py15642[_ln13779[_pl6821] + _bn5205 + _dl230[_pl6821]].color = _on2621[_loc2_][_es11361];
               _loc3_ = true;
         }
         if(_pl6821 == PersonModel._cs8341 && false)
         {
            if(_py15642[_ln13779[_pl6821] + _bn5205 + "2"].color == 16777215)
            {
               _py15642[_ln13779[_pl6821] + _bn5205 + "7"].color = 16777215;
            }
            else
            {
               _py15642[_ln13779[_pl6821] + _bn5205 + "7"].color = 0;
            }
         }
         if(_loc2_ == _te12275)
         {
            return;
         }
         _te12275 = _loc2_;
         MovieClip(param1.currentTarget).gotoAndPlay(_dh7542);
      }
      
      override protected function _br1975(param1:MouseEvent) : void
      {
         _py15642[_ln13779[_pl6821] + _bn5205 + _dl230[_pl6821]].color = _vm8323[0];
         var _loc2_:int = int(String(param1.currentTarget.name).charAt(3));
         MovieClip(param1.currentTarget).gotoAndPlay(_to5494);
         _te12275 = -1;
      }
      
      override protected function _cc10359(param1:MouseEvent) : void
      {
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _dl230[_pl6821]].color;
         _gi11319();
      }
      
      override protected function addListeners() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _wx12638)
         {
            MovieClip(_vw16159[_iw6046 + (_loc1_ + 1)]).addEventListener(MouseEvent.ROLL_OVER,this._hc15271,true);
            MovieClip(_vw16159[_iw6046 + (_loc1_ + 1)]).addEventListener(MouseEvent.ROLL_OUT,this._br1975);
            MovieClip(_vw16159[_iw6046 + (_loc1_ + 1)]).addEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,true);
            _loc1_++;
         }
      }
      
      override protected function _cp7902() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < _wx12638)
         {
            _loc1_ = MovieClip(_vw16159[_iw6046 + (_loc2_ + 1)]);
            if(_loc1_ != null)
            {
               _loc1_.removeEventListener(MouseEvent.ROLL_OVER,this._hc15271,true);
               _loc1_.removeEventListener(MouseEvent.ROLL_OUT,this._br1975);
               _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,true);
            }
            _loc2_++;
         }
      }
   }
}

