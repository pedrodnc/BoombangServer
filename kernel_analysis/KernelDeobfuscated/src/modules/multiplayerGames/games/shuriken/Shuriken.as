package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.MovieClip;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class Shuriken extends MovieClip
   {
      
      private static const textString1:String = "getClassMovieClip";
      
      private static const textString2:String = "getClassSound";
      
      private static const textString2:String = "StarSound";
      
      private var items1:Array;
      
      private var _lg13977:MovieClip;
      
      private var sound:Sound;
      
      private var _fu1196:SoundChannel;
      
      public function Shuriken(param1:MovieClip)
      {
         this.items1 = new Array();
         super();
         this._lg13977 = param1;
         this.sound = param1[textString2](textString2);
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         var count2:int = 0;
         while(count2 < this.items1.length)
         {
            if(this.items1[count2] != null)
            {
               ShurikenUtils(this.items1[count2]).destroy();
               this.items1[count2] = null;
            }
            count2++;
         }
         if(this._fu1196 != null)
         {
            this._fu1196.stop();
            this.sound = null;
            this._fu1196 = null;
         }
      }
      
      public function _oq2135(param1:MovieClip, param2:ShurikenEvents, param3:Function) : void
      {
         this.items1.push(new ShurikenUtils(param1,param2,this._lg13977[textString1]("Estrella"),param3));
         if(this.sound != null)
         {
            this._fu1196 = this.sound.play(0,0);
         }
      }
      
      public function destroy(param1:int) : void
      {
         var count:int = 0;
         while(count < this.items1.length)
         {
            if(this.items1[count] != null)
            {
               if(ShurikenUtils(this.items1[count])._uy3050() == param1)
               {
                  ShurikenUtils(this.items1[count]).destroy();
                  this.items1.splice(count,1);
                  return;
               }
            }
            count++;
         }
      }
   }
}

