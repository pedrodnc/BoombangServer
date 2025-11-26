package src.modules.login.choosePerson.colorear
{
   import flash.display.*;
   import flash.events.MouseEvent;
   import src.allData.color._pn12847;
   import src.modules.login.choosePerson.*;
   
   public class _is1972 extends _re8882
   {
      
      private static const _gt2709:String = "flor";
      
      private static const _kd976:Array = [0,9199926,14965,15405111,16750848,3381555,16777215,4861985,11868,10753345,16737792,26112,0,6736896,16767232,15406688,1399722,7012352,26214,16777011,16728712,39372,3381657,10027110,8107718,5313649];
      
      private static const _se5615:Array = [[0],[4],[5,6,7],[7],[5],[4],[3],[3],[3],[4],[6],[5]];
      
      public function _is1972(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function)
      {
         var _loc6_:int = 0;
         super(param1,param2,param3,param4,param5);
         _vm8323 = [];
         while(_loc6_ < _se5615[param3].length)
         {
            _vm8323[_loc6_] = param2[_ln13779[param3] + _bn5205 + _se5615[param3][_loc6_]].color;
            _loc6_++;
         }
      }
      
      override protected function _bf682() : void
      {
         _bx5761(_iw11828._dj4129);
         _id11649 = true;
         _hb7320 = true;
         _qg1527 = false;
      }
      
      override public function updateColor(param1:_pn12847) : void
      {
         while(0 < (_se5615[_pl6821] as Array).length)
         {
            _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _se5615[_pl6821][0]].color = param1.color;
            _loc2_++;
         }
      }
      
      override protected function _hc15271(param1:MouseEvent) : void
      {
         var _loc4_:String = String(param1.target.name).substr(0,4);
         if(_loc4_ == _gt2709)
         {
            var _loc2_:int = int(String(param1.target.name).substr(4,2));
            var _loc3_:int = 0;
            while(0 < _se5615[_pl6821].length)
            {
               _py15642[_ln13779[_pl6821] + _bn5205 + _se5615[_pl6821][0]].color = _kd976[0];
               _loc3_++;
            }
            if(0 != _te12275)
            {
               _te12275 = 0;
               MovieClip(param1.target).gotoAndPlay(_dh7542);
            }
         }
      }
      
      override protected function _br1975(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _se5615[_pl6821].length)
         {
            _py15642[_ln13779[_pl6821] + _bn5205 + _se5615[_pl6821][_loc2_]].color = _vm8323[_loc2_];
            _loc2_++;
         }
         var _loc3_:String = String(param1.target.name).substr(0,4);
         if(_loc3_ == _gt2709)
         {
            _te12275 = -1;
            MovieClip(param1.target).gotoAndPlay(_to5494);
         }
      }
      
      override protected function _cc10359(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _se5615[_pl6821].length)
         {
            _vm8323[_loc2_] = _py15642[_ln13779[_pl6821] + _bn5205 + _se5615[_pl6821][_loc2_]].color;
            _loc2_++;
         }
         _gi11319();
      }
   }
}

