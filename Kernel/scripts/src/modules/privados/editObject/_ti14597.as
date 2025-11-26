package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import src.allData.color.*;
   import src.allData.sceneObjects.dataObjects._hl15578;
   import src.modules.privados._bx10683;
   import src.modules.privados.editObject.editableElements._tc4557;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _ti14597 extends _tu14278
   {
      
      private var _kg11770:_hl15578;
      
      public function _ti14597(param1:MovieClip, param2:_ox15379, param3:Function, param4:_tc4557, param5:_hl15578, param6:Function, param7:Function, param8:Function, param9:Function, param10:Function, param11:_kg13542, param12:_bx10683)
      {
         this._kg11770 = param5;
         super(param1,param2,param3,param4,param6,param7,param8,param9,param10,param11,param12);
      }
      
      override protected function _ej3288() : void
      {
         var _loc1_:int = 0;
         buttons = new Array();
         while(_loc1_ < _on1025)
         {
            if(_loc1_ + 1 <= this._kg11770.color.length)
            {
               buttons.push(new _dr2789(_cw11838[_mq7915 + _loc1_],this._dv14444,this._kg11770._sl11700._mj5951[_loc1_],false,null,null,null));
            }
            else
            {
               buttons.push(new _dr2789(_cw11838[_mq7915 + _loc1_],this._dv14444,"",false,null,null,null));
               _dr2789(buttons[_loc1_])._hu12389();
            }
            _loc1_++;
         }
      }
      
      override protected function _ts4259() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _on1025)
         {
            if(buttons[_loc1_] != null && buttons[_loc1_] is _dr2789)
            {
               _dr2789(buttons[_loc1_]).destroy();
               buttons[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function _dv14444(param1:_dr2789, param2:Object) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < _on1025)
         {
            if(_dr2789(buttons[_loc4_]) == param1)
            {
               _vk3473(_pn12847(this._kg11770.color[_loc4_]));
            }
            _loc4_++;
         }
      }
      
      override protected function _ds3991() : void
      {
         var _loc1_:Array = _pn12847._gl15701(this._kg11770._sl11700.colors);
         _vp454._bv13571(this._kg11770._hw14129,_loc1_[0],_loc1_[1],this._kg11770._rm6352);
         this._kg11770._uc14101();
         _fb15680._rx12234(_qm2195());
      }
   }
}

