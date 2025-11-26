package src.modules.noticias.templates
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.modules.noticias._kv1552;
   import src.tv.boombang.core.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _eu10600
   {
      
      protected static const _pr12749:String = "taText";
      
      protected static const _el2728:String = "tfText";
      
      protected static const _au8047:String = "mcTexto";
      
      protected static const _ri2165:String = "mcImagen";
      
      protected static const _so7372:String = "mcImagen_1";
      
      protected static const _oc2294:String = "mcImagen_2";
      
      protected static const _od5485:String = "mcImagen_3";
      
      protected static const _wg4297:String = "mcFondoNoticia";
      
      protected static const TF_TITULO:String = "tfTexto_Titulo";
      
      protected static const _al6527:String = "tfTexto_Fecha";
      
      protected static const _yo2029:String = "tfTitulo";
      
      protected static const _nq5680:String = "mcBotonVolver";
      
      private static const FIRST:int = 0;
      
      private static const LAST:int = 7;
      
      protected static const _bt577:String = "http://www.boombang.tv/images/screenshots/1.jpg";
      
      protected var _mc:MovieClip;
      
      protected var _xx14985:int;
      
      protected var _sj8505:int;
      
      protected var _tf556:String;
      
      protected var _vw13338:String;
      
      protected var _lx6249:String;
      
      protected var _gr6537:int;
      
      protected var _ng2446:Array;
      
      protected var _cj5550:TextField;
      
      protected var _af730:Boolean;
      
      protected var _oa3024:Boolean;
      
      protected var _gu5334:Function;
      
      protected var _ie15596:_kv1552;
      
      protected var _ei895:_kv1552;
      
      protected var _re2075:_kv1552;
      
      protected var _xl6127:_kv1552;
      
      protected var _cy8969:_qo7568;
      
      public function _eu10600(param1:_dh6227)
      {
         super();
         this._xx14985 = param1._kg8871;
         this._sj8505 = param1._tq12374;
         this._tf556 = param1._sj3261;
         this._vw13338 = param1.texto;
         this._lx6249 = param1._ak10786;
         this._gr6537 = param1._qy4653;
         this._ng2446 = param1._xt2092;
         if(this._ng2446 != null && this._ng2446.length <= 0)
         {
            this._ng2446.push(_bt577);
            this._ng2446.push(_bt577);
            this._ng2446.push(_bt577);
            this._ng2446.push(_bt577);
         }
         this._gu5334 = param1._vw8300;
         var _loc2_:String = this._lx6249.slice(0,10);
         var _loc3_:Array = _loc2_.split("-");
         if(_loc3_.length > 0)
         {
            this._lx6249 = _loc3_[2] + "-" + _loc3_[1] + "-" + _loc3_[0];
         }
      }
      
      public function _hu12389() : void
      {
      }
      
      public function _xo7981(param1:MovieClip) : Boolean
      {
         this._mc = param1;
         if(param1 == null)
         {
            return false;
         }
         this._cj5550 = this._mc[_yo2029];
         this._cj5550.text = _fg1060._mn8930._ad13455("news.Title");
         this._cj5550 = this._mc[_wg4297][TF_TITULO];
         _yq8362._xl9503(this._cj5550,this._tf556);
         this._cj5550 = this._mc[_wg4297][_al6527];
         _yq8362._xl9503(this._cj5550,this._lx6249);
         if(this._gu5334 != null)
         {
            this._cy8969 = new _qo7568(this._mc[_nq5680],this._gu5334,"button.back");
         }
         return true;
      }
      
      public function get _qy4653() : int
      {
         return this._gr6537;
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

