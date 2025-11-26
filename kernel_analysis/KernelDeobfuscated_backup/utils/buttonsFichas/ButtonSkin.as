package src.utils.buttonsFichas
{
   import flash.display.*;
   import src.utils.*;
   import src.utils.commonComponents._kg183;
   
   public class ButtonSkin extends _kg183
   {
      
      protected static const _ud6549:String = "mcCapsula";
      
      public var _nf12735:uint;
      
      public var _sa14592:uint;
      
      private var _ts9847:MovieClip;
      
      public function ButtonSkin(param1:MovieClip, param2:Function, param3:uint, param4:uint)
      {
         this._ts9847 = MovieClip(param1.getChildByName(_ud6549));
         this._nf12735 = param3;
         this._sa14592 = param4;
         super(param1,param2);
      }
      
      override public function _ch1514() : void
      {
         _xv14798._ts14032(this._ts9847,this._nf12735);
      }
      
      override public function _iv1460() : void
      {
         _xv14798._ts14032(this._ts9847,this._sa14592);
      }
   }
}

