package src.modules.interfaz.fichaKeko.florTiempo
{
   import flash.display.*;
   import src.person.PersonAnimation;
   import src.utils.*;
   
   public class FlortiempoUtils
   {
      
      private static const textString:String = "mcPetal_";
      
      private static const textString1:String = "mcPetalsShadow_";
      
      private static const count:int = 12;
      
      private static const textString2:String = "tfText";
      
      private static const count1:int = 12;
      
      private var _jf8323:MovieClip;
      
      public function FlortiempoUtils(param1:MovieClip)
      {
         super();
         this._jf8323 = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function update(param1:PersonAnimation) : void
      {
         var count1:int = 0;
         var count:Number = param1.count5 / count1;
         var count3:int = (count - int(count)) * count1;
         while(count1 < count)
         {
            if(count1 <= count3)
            {
               MovieClip(this._jf8323[textString + count1]).visible = true;
               MovieClip(this._jf8323[textString1 + count1]).visible = true;
            }
            else
            {
               MovieClip(this._jf8323[textString + count1]).visible = false;
               MovieClip(this._jf8323[textString1 + count1]).visible = false;
            }
            count1++;
         }
         if(int(count) > 0)
         {
            UtilsUtils._xl9503(this._jf8323[textString2],int(count).toString());
         }
         else
         {
            UtilsUtils._xl9503(this._jf8323[textString2]," ");
         }
      }
   }
}

