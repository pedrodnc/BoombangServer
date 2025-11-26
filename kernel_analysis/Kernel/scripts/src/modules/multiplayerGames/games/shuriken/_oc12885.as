package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.MovieClip;
   import flash.media.*;
   import src.modules.multiplayerGames._xl8523;
   
   public class _oc12885 extends MovieClip
   {
      
      private static const _iq9859:String = "Ninja";
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _qw9228:String = "getClassSound";
      
      private static const _jl15877:String = "HighMoan";
      
      private static const _ts5660:String = "HighPunch";
      
      private static const _ng15351:String = "HighYelp";
      
      private static const _di9615:String = "Yelp";
      
      private static const _vk662:int = 4;
      
      private static const _fr4232:int = 8;
      
      private var _gp1484:Array;
      
      private var _eg750:Array;
      
      private var _lg13977:MovieClip;
      
      public function _oc12885(param1:MovieClip)
      {
         this._eg750 = new Array();
         super();
         this._lg13977 = param1;
         this._ip4522();
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._eg750.length)
         {
            if(this._eg750[_loc1_] != null)
            {
               (this._eg750[_loc1_] as _uh13501).destroy();
               this._eg750[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      public function _lp5886(param1:int, param2:int, param3:int, param4:MovieClip, param5:_xl8523) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:int = 0;
         if(this._eg750.length > 0)
         {
            _loc7_ = 0;
            while(_loc7_ < this._eg750.length)
            {
               if(_uh13501(this._eg750[_loc7_])._ey9519 == param3)
               {
                  _uh13501(this._eg750[_loc7_]).destroy();
                  this._eg750.splice(_loc7_,1);
                  break;
               }
               _loc7_++;
            }
         }
         _loc6_ = this._lg13977[_pd9423](_iq9859 + param2);
         this._eg750.push(new _uh13501(param1,param2,param3,_loc6_,param4,param5));
         this._at8048();
      }
      
      public function _ia7399(param1:int) : void
      {
         var _loc2_:_uh13501 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._eg750.length)
         {
            _loc2_ = this._eg750[_loc3_];
            if(_loc2_ != null && _loc2_._je2588 == param1)
            {
               _loc2_.destroy();
               this._eg750.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function _eh1429(param1:int) : _uh13501
      {
         var _loc2_:_uh13501 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._eg750.length)
         {
            _loc2_ = this._eg750[_loc3_];
            if(_loc2_._je2588 == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function _at8048() : void
      {
         var _loc1_:int = Math.random() * (_vk662 + _fr4232);
         if(_loc1_ < _vk662)
         {
            (this._gp1484[_loc1_] as Sound).play(0,1);
         }
      }
      
      private function _ip4522() : void
      {
         this._gp1484 = new Array();
         this._gp1484.push(this._lg13977[_qw9228](_jl15877));
         this._gp1484.push(this._lg13977[_qw9228](_ts5660));
         this._gp1484.push(this._lg13977[_qw9228](_ng15351));
         this._gp1484.push(this._lg13977[_qw9228](_di9615));
      }
   }
}

