package src.person.animations
{
   import flash.display.MovieClip;
   import src.person.*;
   
   public class Animations
   {
      
      protected var _me14044:PersonAnimation;
      
      protected var _tv3848:MovieClip;
      
      protected var _gb9590:MovieClip;
      
      protected var _db11641:int;
      
      protected var _xf12113:int;
      
      protected var _ul4608:int;
      
      protected var _fq11131:Function;
      
      protected var _xc9254:String;
      
      protected var _ln3932:String;
      
      protected var _lx2354:int;
      
      protected var _df9992:Boolean;
      
      public function Animations(param1:PersonAnimation, param2:MovieClip, param3:int, param4:int, param5:Function)
      {
         super();
         this._me14044 = param1;
         this._tv3848 = param2;
         this._db11641 = PersonModel._qc8808[param1._jn11596][param4][param3];
         this._xf12113 = this._db11641;
         this._ul4608 = param4;
         this._fq11131 = param5;
         this.init();
      }
      
      public function init(param1:Boolean = false) : void
      {
         this._ux14509();
         if(param1)
         {
            this._xc9254 = PersonModel._hd10333[this._db11641] + "_" + PersonModel._ku2994[PersonModel._sp1959];
            this._ln3932 = PersonModel._hd10333[this._lx2354] + "_" + PersonModel._ku2994[PersonModel._sp1959];
         }
         else
         {
            this._xc9254 = PersonModel._hd10333[this._db11641] + "_" + PersonModel._ku2994[this._ul4608];
            this._ln3932 = PersonModel._hd10333[this._lx2354] + "_" + PersonModel._ku2994[this._ul4608];
         }
         this._gb9590 = PersonController._ku11706(this._me14044,this._ln3932);
         this._gb9590.scaleX = 1;
         if(this._df9992)
         {
            this._gb9590.scaleX = -1;
         }
         this._tv3848.addChild(this._gb9590);
      }
      
      public function _mf2390() : MovieClip
      {
         var _loc1_:MovieClip = PersonController._ku11706(this._me14044,this._ln3932,this._gb9590.currentFrame);
         _loc1_.scaleX = this._gb9590.scaleX;
         return _loc1_;
      }
      
      protected function _ux14509() : void
      {
         this._df9992 = false;
         this._lx2354 = this._db11641;
         if(this._db11641 == PersonModel._md2772)
         {
            this._lx2354 = PersonModel._xk5541;
            this._df9992 = true;
         }
         else if(this._db11641 == PersonModel._wk7520)
         {
            this._lx2354 = PersonModel._in12705;
            this._df9992 = true;
         }
         else if(this._db11641 == PersonModel._hf5023)
         {
            this._lx2354 = PersonModel._xw4775;
            this._df9992 = true;
         }
      }
      
      protected function _xb9909() : Boolean
      {
         if(this._gb9590.currentFrame == this._gb9590.totalFrames)
         {
            return true;
         }
         return false;
      }
      
      protected function _dx13345() : Boolean
      {
         if(this._gb9590.currentFrame == this._gb9590.totalFrames)
         {
            if(this._fq11131 != null)
            {
               this._fq11131(this._xf12113);
            }
            return true;
         }
         return false;
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this._gb9590.stop();
         this._tv3848.removeChild(this._gb9590);
      }
      
      public function _go9677() : int
      {
         return this._xf12113;
      }
   }
}

