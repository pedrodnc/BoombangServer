package src.modules.login.choosePerson.colorear
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.allData.color._pn12847;
   import src.modules.login.choosePerson.*;
   
   public class _rp1057 extends _re8882
   {
      
      private static const _cr11284:String = "col";
      
      private static const _kr759:Array = [0,16737792,16750848,16764057,16763955,16776960,16777185,10027110,13369497,16737996,7556429,10053120,10040064,3230212,1137742,39321,6736896,3381504,6737049,0,13209,26316,39372,3439535,6750207,13369395,16724736,16724838,16737945,16724889,16756425];
      
      private static const _nu4439:Array = [0,3,4,3,3,2,4,2,4,3,3,6];
      
      public function _rp1057(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function)
      {
         super(param1,param2,param3,param4,param5);
         _vm8323 = [];
         _vm8323[0] = param2[_ln13779[param3] + _bn5205 + _nu4439[param3]].color;
      }
      
      override protected function _bf682() : void
      {
         _bx5761(_iw11828._tr12362);
         _id11649 = true;
         _hb7320 = false;
         _qg1527 = false;
      }
      
      override public function updateColor(param1:_pn12847) : void
      {
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _nu4439[_pl6821]].color = param1.color;
      }
      
      override protected function _br1975(param1:MouseEvent) : void
      {
         _py15642[_ln13779[_pl6821] + _bn5205 + _nu4439[_pl6821]].color = _vm8323[0];
      }
      
      override protected function _hc15271(param1:MouseEvent) : void
      {
         var _loc3_:String = String(param1.target.name).substr(0,3);
         if(_loc3_ == _cr11284)
         {
            var _loc2_:int = int(String(param1.target.name).substr(3,2));
            _py15642[_ln13779[_pl6821] + _bn5205 + _nu4439[_pl6821]].color = _kr759[0];
         }
      }
      
      override protected function _cc10359(param1:MouseEvent) : void
      {
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _nu4439[_pl6821]].color;
         var _loc2_:String = String(param1.target.name).substr(0,3);
         if(_loc2_ == _cr11284)
         {
            _gi11319();
         }
      }
   }
}

