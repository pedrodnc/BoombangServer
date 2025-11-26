package src.modules.login.choosePerson.colorear
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.color._pn12847;
   import src.allData.color._rl11159;
   import src.modules.login.choosePerson.*;
   
   public class _ml143 extends _re8882
   {
      
      private static const _uw13521:Array = [[0,39372,6736896,6710937,16750899,13421619,16763904,6697830,16711782,16737945,13382400,9199926,3381657,3355443,16777215,6684723,3394764],[0,10079232,3368448,16750848,13369395,3355494,16711833,6737100,26214,13056,3342336,10079436,10053273,13421772,16711680,16777062,12386398]];
      
      private static const _hn1846:int = 16;
      
      private static const _fs15019:Array = [[0,5,3,5,4,5,2,6,5,5,5,3],[0,0,0,4,0,6,0,5,6,6,4,4]];
      
      private static const _as2637:String = "pap";
      
      private var _te8717:_rl11159;
      
      public function _ml143(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function, param6:_rl11159)
      {
         super(param1,param2,param3,param4,param5);
         this._te8717 = param6;
         var _loc7_:int = param6._iv7667();
         _vm8323 = [];
         _vm8323[0] = param2[_ln13779[param3] + _bn5205 + _fs15019[_loc7_][param3]].color;
      }
      
      override protected function _bf682() : void
      {
         _bx5761(_iw11828._ik1199);
         _id11649 = true;
         _hb7320 = true;
         _qg1527 = false;
      }
      
      override public function updateColor(param1:_pn12847) : void
      {
         var _loc2_:int = int(this._te8717._iv7667());
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _fs15019[_loc2_][_pl6821]].color = param1.color;
      }
      
      override protected function _hc15271(param1:MouseEvent) : void
      {
         var _loc3_:String = String(param1.currentTarget.name).substr(0,3);
         if(_loc3_ == _as2637)
         {
            var _loc2_:int = int(String(param1.currentTarget.name).substr(3,2));
            _py15642[_ln13779[_pl6821] + _bn5205 + _fs15019[0][_pl6821]].color = _uw13521[0][0];
            if(_fs15019[1][_pl6821] != 0)
            {
               _py15642[_ln13779[_pl6821] + _bn5205 + _fs15019[1][_pl6821]].color = _uw13521[1][0];
            }
            if(0 != _te12275)
            {
               _te12275 = 0;
               MovieClip(param1.currentTarget).gotoAndPlay(_dh7542);
            }
         }
      }
      
      override protected function _br1975(param1:MouseEvent) : void
      {
         var _loc2_:String = String(param1.currentTarget.name).substr(0,3);
         if(_loc2_ == _as2637)
         {
            _te12275 = -1;
            MovieClip(param1.currentTarget).gotoAndPlay(_to5494);
         }
         var _loc3_:int = int(this._te8717._iv7667());
         _py15642[_ln13779[_pl6821] + _bn5205 + _fs15019[_loc3_][_pl6821]].color = _vm8323[0];
      }
      
      override protected function _cc10359(param1:MouseEvent) : void
      {
         var _loc2_:int = int(this._te8717._iv7667());
         _vm8323[0] = _py15642[_ln13779[_pl6821] + _bn5205 + _fs15019[_loc2_][_pl6821]].color;
         _gi11319();
      }
      
      override protected function addListeners() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _hn1846)
         {
            MovieClip(_vw16159[_as2637 + (_loc1_ + 1)]).addEventListener(MouseEvent.ROLL_OVER,this._hc15271,true);
            MovieClip(_vw16159[_as2637 + (_loc1_ + 1)]).addEventListener(MouseEvent.ROLL_OUT,this._br1975);
            MovieClip(_vw16159[_as2637 + (_loc1_ + 1)]).addEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,true);
            _loc1_++;
         }
      }
      
      override protected function _cp7902() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < _hn1846)
         {
            _loc1_ = MovieClip(_vw16159[_as2637 + (_loc2_ + 1)]);
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

