package src.modules.login.choosePerson.colorear
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.allData.color._pn12847;
   import src.modules.login.choosePerson.*;
   
   public class _lw10200 extends _re8882
   {
      
      private static const _tl1545:Array = [0,16777194,10582096,6047022,7558713,13408614,16768741,16771023,16766871,16103546,14134416,13421772,39219,16777215,15662997,16751103];
      
      private static const _ct12424:Array = [0,1,1,1,1,1,1,1,2,2,1,1];
      
      private static const _dh7559:String = "huevo";
      
      public function _lw10200(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function)
      {
         super(param1,param2,param3,param4,param5);
         _vm8323 = [];
         _vm8323[0] = param2[_ln13779[param3] + _bn5205 + _ct12424[param3]].color;
      }
      
      override protected function _bf682() : void
      {
         _bx5761(_iw11828._jl12729);
         _id11649 = true;
         _hb7320 = false;
         _qg1527 = false;
      }
      
      override public function updateColor(param1:_pn12847) : void
      {
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _ct12424[_pl6821]].color = param1.color;
      }
      
      override protected function _br1975(param1:MouseEvent) : void
      {
         _py15642[_ln13779[_pl6821] + _bn5205 + _ct12424[_pl6821]].color = _vm8323[0];
      }
      
      override protected function _hc15271(param1:MouseEvent) : void
      {
         var _loc3_:String = String(param1.target.name).substr(0,5);
         if(_loc3_ == _dh7559)
         {
            var _loc2_:int = int(String(param1.target.name).substr(5,2));
            _py15642[_ln13779[_pl6821] + _bn5205 + _ct12424[_pl6821]].color = _tl1545[0];
         }
      }
      
      override protected function _cc10359(param1:MouseEvent) : void
      {
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _ct12424[_pl6821]].color;
         _gi11319();
      }
   }
}

