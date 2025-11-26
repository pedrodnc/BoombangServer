package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class TrophiesWithRanking extends AssetsBaseObjects
   {
      
      private var _textInit:Boolean;
      
      private var _ranking:TextField;
      
      private var _year:TextField;
      
      public function TrophiesWithRanking(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function init() : void
      {
         this._textInit = false;
      }
      
      override public function loop() : void
      {
         var count2:Array = null;
         if(!this._textInit)
         {
            if(_asset.mcObject.mcObjectRef.mcColor0_ranking)
            {
               this._ranking = _asset.mcObject.mcObjectRef.mcColor0_ranking.texto;
            }
            if(_asset.mcObject.mcObjectRef.mcColor0_Font)
            {
               this._year = _asset.mcObject.mcObjectRef.mcColor0_Font.tfText;
            }
            if(_asset.mcObject.mcObjectRef.mcColor1_Font)
            {
               this._ranking = _asset.mcObject.mcObjectRef.mcColor1_Font.tfText;
            }
            this._textInit = true;
            count2 = descripcion.split(", ");
            if(this._year)
            {
               if(count2.length > 0 && Boolean(this._year))
               {
                  setTextInTextField(this._year,count2[0]);
               }
               if(count2.length > 1 && Boolean(this._ranking))
               {
                  setTextInTextField(this._ranking,count2[1]);
               }
            }
            else if(count2.length > 0 && Boolean(this._ranking))
            {
               setTextInTextField(this._ranking,count2[0]);
            }
         }
      }
   }
}

