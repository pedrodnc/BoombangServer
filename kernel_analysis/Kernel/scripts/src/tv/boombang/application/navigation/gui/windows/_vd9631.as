package src.tv.boombang.application.navigation.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.navigationMenu._cd9992;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _vd9631 extends _lx1779 implements _jk15536
   {
      
      public static const _my1491:String = "navigationMenu";
      
      private var _vk5423:_fq13166;
      
      private var _sl12580:_cd9992;
      
      public function _vd9631(param1:_cd9992)
      {
         this._sl12580 = param1;
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._vk5423)
         {
            this._vk5423.removeEventListener(_pw5334._dt4861,this._pa3291);
            this._vk5423.removeEventListener(_pw5334._eu6579,this._mh10905);
            this._vk5423.removeEventListener(_pw5334._vt105,this._vv12201);
            this._vk5423.removeEventListener(_pw5334._uk11953,this._hl11318);
            this._vk5423.removeEventListener(_pw5334._rr2751,this._yy993);
            this._vk5423.destroy();
         }
         this._vk5423 = null;
      }
      
      override protected function init() : void
      {
         this._vk5423 = new _fq13166(_cw8295("NavigationMenuWindow") as MovieClip,_vd9631._my1491,this._sl12580);
         this._vk5423.addEventListener(_pw5334._rr2751,this._yy993,false,0,true);
         this._vk5423.addEventListener(_pw5334._dt4861,this._pa3291,false,0,true);
         this._vk5423.addEventListener(_pw5334._eu6579,this._mh10905,false,0,true);
         this._vk5423.addEventListener(_pw5334._vt105,this._vv12201,false,0,true);
         this._vk5423.addEventListener(_pw5334._uk11953,this._hl11318,false,0,true);
         _wj9062._lt3848(this._vk5423);
      }
      
      private function _yy993(param1:_pw5334) : void
      {
         this._sl12580 = param1._ks12861;
         var _loc2_:int = int(this._sl12580._tv1901);
         var _loc3_:* = "TAB-";
         switch(_loc2_)
         {
            case 1:
               _loc3_ += "Areas";
               break;
            case 2:
               _loc3_ += "Islands";
               break;
            case 3:
               _loc3_ += "Games";
               break;
            case 4:
               _loc3_ += "Houses";
               break;
            case 5:
               _loc3_ += "Search";
         }
         _ia12312._fs11949(_loc3_);
         dispatchEvent(new _pw5334(_pw5334._rr2751));
      }
      
      public function get _rv12413() : _cd9992
      {
         return this._sl12580;
      }
      
      private function _pa3291(param1:_pw5334) : void
      {
         if(this._vk5423)
         {
            this._vk5423.removeEventListener(_pw5334._dt4861,this._pa3291);
         }
         _ia12312._fs11949("enterIsland");
         dispatchEvent(new _pw5334(_pw5334._dt4861,param1.data));
      }
      
      private function _mh10905(param1:_pw5334) : void
      {
         if(this._vk5423)
         {
            this._vk5423.removeEventListener(_pw5334._eu6579,this._mh10905);
         }
         _ia12312._fs11949("enterHouseMenu");
      }
      
      private function _vv12201(param1:_pw5334) : void
      {
         if(this._vk5423)
         {
            this._vk5423.removeEventListener(_pw5334._vt105,this._vv12201);
         }
      }
      
      private function _hl11318(param1:_pw5334) : void
      {
         if(this._vk5423)
         {
            this._vk5423.removeEventListener(_pw5334._uk11953,this._hl11318);
         }
         _ia12312._fs11949("createIsland");
         dispatchEvent(new _pw5334(_pw5334._uk11953,param1.data));
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
      }
   }
}

