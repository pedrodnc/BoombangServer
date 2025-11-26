package src.modules.noticias
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.tv.boombang.core.*;
   import src.utils.commonComponents.*;
   
   public class NoticiasView
   {
      
      private static const count:int = 8;
      
      private static const textString:String = "mcBotonAnterior";
      
      private static const textString1:String = "mcBotonSiguiente";
      
      private static const textString2:String = "mcBotonNoticia_";
      
      private static const TF_TITULO:String = "tfTitulo";
      
      private var count:int;
      
      private var count4:uint;
      
      private var items:Array;
      
      private var _aq5903:Function;
      
      private var _yk5446:Function;
      
      private var _tf7952:Function;
      
      private var items1:Array;
      
      private var isEnabled:Boolean;
      
      private var _vh13301:CommoncomponentsView;
      
      private var _oe5060:CommoncomponentsView;
      
      public function NoticiasView(param1:int, param2:uint, param3:Array, param4:Function, param5:Function, param6:Function)
      {
         super();
         this.count = param1;
         this.count4 = param2;
         this.items = param3;
         this._aq5903 = param4;
         this._yk5446 = param5;
         this._tf7952 = param6;
         this.items1 = new Array();
      }
      
      public function _mn15453(param1:MovieClip) : void
      {
         var count:MovieClip = null;
         var count7:int = 0;
         if(this.items1 == null)
         {
            this.items1 = new Array();
         }
         while(count7 < count)
         {
            count = param1[textString2 + count7];
            if(count7 < this.count4)
            {
               var count3:int = int(this.items[count7][0]);
               var count1:String = this.items[count7][1];
               var count2:String = this.items[count7][2];
               this.items1.push(new NoticiasView(count,this.count,0,null,null,this._aq5903));
            }
            else
            {
               count.visible = false;
            }
            count7++;
         }
         this._vh13301 = new CommoncomponentsView(param1[textString1],this._yk5446,"");
         this._oe5060 = new CommoncomponentsView(param1[textString],this._tf7952,"");
         TextField(param1[TF_TITULO]).text = CoreModel._mn8930.getString1("news.Title");
         this.isEnabled = true;
         if(this.items1 != null && this.items1.length < count)
         {
            this._ue12701();
         }
      }
      
      public function _cj7282() : void
      {
         var count2:NoticiasView = null;
         if(!this.isEnabled)
         {
            return;
         }
         this._vh13301.destroy();
         this._oe5060.destroy();
         for each(count2 in this.items1)
         {
            if(count2 != null)
            {
               count2.destroy();
            }
         }
         this.isEnabled = false;
         this.items1 = null;
      }
      
      public function _ue12701() : void
      {
         if(this._vh13301 != null)
         {
            this._vh13301.authenticateUser2();
         }
      }
      
      public function _fv1756() : void
      {
         if(this._vh13301 != null)
         {
            this._vh13301.show();
         }
      }
      
      public function _bd12836() : void
      {
         if(this._oe5060 != null)
         {
            this._oe5060.authenticateUser2();
         }
      }
      
      public function _rl15950() : void
      {
         if(this._oe5060 != null)
         {
            this._oe5060.show();
         }
      }
      
      public function get _kg8871() : int
      {
         return this.count;
      }
   }
}

