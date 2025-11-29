package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.MovieClip;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class _oj4072 extends MovieClip
   {
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _qw9228:String = "getClassSound";
      
      private static const _rv3291:String = "StarSound";
      
      private var _xc11606:Array;
      
      private var _lg13977:MovieClip;
      
      private var sound:Sound;
      
      private var _fu1196:SoundChannel;
      
      public function _oj4072(param1:MovieClip)
      {
         this._xc11606 = new Array();
         super();
         this._lg13977 = param1;
         this.sound = param1[_qw9228](_rv3291);
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._xc11606.length)
         {
            if(this._xc11606[_loc1_] != null)
            {
               _yi8671(this._xc11606[_loc1_]).destroy();
               this._xc11606[_loc1_] = null;
            }
            _loc1_++;
         }
         if(this._fu1196 != null)
         {
            this._fu1196.stop();
            this.sound = null;
            this._fu1196 = null;
         }
      }
      
      public function _oq2135(param1:MovieClip, param2:_uh13501, param3:Function) : void
      {
         this._xc11606.push(new _yi8671(param1,param2,this._lg13977[_pd9423]("Estrella"),param3));
         if(this.sound != null)
         {
            this._fu1196 = this.sound.play(0,0);
         }
      }
      
      public function _lv14663(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._xc11606.length)
         {
            if(this._xc11606[_loc2_] != null)
            {
               if(_yi8671(this._xc11606[_loc2_])._uy3050() == param1)
               {
                  _yi8671(this._xc11606[_loc2_]).destroy();
                  this._xc11606.splice(_loc2_,1);
                  return;
               }
            }
            _loc2_++;
         }
      }
   }
}

