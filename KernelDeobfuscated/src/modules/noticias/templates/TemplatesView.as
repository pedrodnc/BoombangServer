package src.modules.noticias.templates
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.modules.noticias.NoticiasController;
   import src.tv.boombang.core.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class TemplatesView
   {
      
      protected static const textString:String = "taText";
      
      protected static const textString2:String = "tfText";
      
      protected static const textString2:String = "mcTexto";
      
      protected static const textString3:String = "mcImagen";
      
      protected static const textString4:String = "mcImagen_1";
      
      protected static const textString5:String = "mcImagen_2";
      
      protected static const textString6:String = "mcImagen_3";
      
      protected static const textString7:String = "mcFondoNoticia";
      
      protected static const TF_TITULO:String = "tfTexto_Titulo";
      
      protected static const textString8:String = "tfTexto_Fecha";
      
      protected static const textString9:String = "tfTitulo";
      
      protected static const textString10:String = "mcBotonVolver";
      
      private static const FIRST:int = 0;
      
      private static const LAST:int = 7;
      
      protected static const textString11:String = "http://www.boombang.tv/images/screenshots/1.jpg";
      
      protected var _mc:MovieClip;
      
      protected var count:int;
      
      protected var count1:int;
      
      protected var textString12:String;
      
      protected var textString13:String;
      
      protected var textString14:String;
      
      protected var count2:int;
      
      protected var items:Array;
      
      protected var _cj5550:TextField;
      
      protected var isEnabled:Boolean;
      
      protected var isEnabled1:Boolean;
      
      protected var _gu5334:Function;
      
      protected var _ie15596:NoticiasController;
      
      protected var _ei895:NoticiasController;
      
      protected var _re2075:NoticiasController;
      
      protected var _xl6127:NoticiasController;
      
      protected var _cy8969:CommoncomponentsView;
      
      public function TemplatesView(param1:Templates)
      {
         super();
         this.count = param1._kg8871;
         this.count1 = param1._tq12374;
         this.textString12 = param1.textString;
         this.textString13 = param1.texto;
         this.textString14 = param1._ak10786;
         this.count2 = param1.count1;
         this.items = param1._xt2092;
         if(this.items != null && this.items.length <= 0)
         {
            this.items.push(textString11);
            this.items.push(textString11);
            this.items.push(textString11);
            this.items.push(textString11);
         }
         this._gu5334 = param1._vw8300;
         var count:String = this.textString14.slice(0,10);
         var count3:Array = count.split("-");
         if(count3.length > 0)
         {
            this.textString14 = count3[2] + "-" + count3[1] + "-" + count3[0];
         }
      }
      
      public function authenticateUser2() : void
      {
      }
      
      public function _xo7981(param1:MovieClip) : Boolean
      {
         this._mc = param1;
         if(param1 == null)
         {
            return false;
         }
         this._cj5550 = this._mc[textString9];
         this._cj5550.text = CoreModel._mn8930.getString1("news.Title");
         this._cj5550 = this._mc[textString7][TF_TITULO];
         UtilsUtils._xl9503(this._cj5550,this.textString12);
         this._cj5550 = this._mc[textString7][textString8];
         UtilsUtils._xl9503(this._cj5550,this.textString14);
         if(this._gu5334 != null)
         {
            this._cy8969 = new CommoncomponentsView(this._mc[textString10],this._gu5334,"button.back");
         }
         return true;
      }
      
      public function get count1() : int
      {
         return this.count2;
      }
      
      public function destroy() : void
      {
         if(this._cy8969 != null)
         {
            this._cy8969.destroy();
            this._cy8969 = null;
         }
         if(this._ie15596 != null)
         {
            this._ie15596.destroy();
            this._ie15596 = null;
         }
         if(this._ei895 != null)
         {
            this._ei895.destroy();
            this._ei895 = null;
         }
         if(this._re2075 != null)
         {
            this._re2075.destroy();
            this._re2075 = null;
         }
         if(this._xl6127 != null)
         {
            this._xl6127.destroy();
            this._xl6127 = null;
         }
      }
   }
}

