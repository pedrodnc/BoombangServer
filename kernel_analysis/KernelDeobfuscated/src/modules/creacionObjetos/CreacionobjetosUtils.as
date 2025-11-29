package src.modules.creacionObjetos
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.modules.creacionObjetos.fichas.FichasUtils;
   import src.modules.creacionObjetos.fichas.FichasModel;
   import src.modules.creacionObjetos.skin.Skin;
   import src.utils.*;
   import src.utils.buttonsFichas.*;
   
   public class CreacionobjetosUtils extends FichasUtils
   {
      
      protected var _cx10110:ButtonSkin;
      
      protected var _ej3635:ButtonSkin;
      
      protected var _sv2711:TextField;
      
      protected var count:int;
      
      protected var count1:int;
      
      protected var items:Array;
      
      public function CreacionobjetosUtils(param1:MovieClip, param2:FichasModel, param3:Skin, param4:String = "", param5:String = "", param6:String = "", param7:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         this._cx10110 = new ButtonSkin(param1["pagination"]["next"],this._by2486,param3._dn2337,param3._lm3936);
         this._ej3635 = new ButtonSkin(param1["pagination"]["back"],this._aj2155,param3._dn2337,param3._lm3936);
         StringUtils._ts14032(param1["pagination"]["background"],param3._kk3956);
         this.count1 = param7;
         this._sv2711 = TextField(param1["pagination"]["page"]);
      }
      
      public function get _qf8183() : int
      {
         return this.count1;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._cx10110 != null)
         {
            this._cx10110.destroy();
            this._cx10110 = null;
         }
         if(this._ej3635 != null)
         {
            this._ej3635.destroy();
            this._ej3635 = null;
         }
      }
      
      public function _by2486() : void
      {
         ++this.count1;
         if(this._qf8183 > this.count)
         {
            this.count1 = this.count;
         }
         else
         {
            this.connect1();
         }
      }
      
      public function _aj2155() : void
      {
         --this.count1;
         if(this._qf8183 < 1)
         {
            this.count1 = 1;
         }
         else
         {
            this.connect1();
         }
      }
      
      protected function connect1() : void
      {
         UtilsUtils._xl9503(this._sv2711,this._qf8183 + "/" + this.count);
         this._cx10110._dy867 = false;
         this._ej3635._dy867 = false;
         if(this.count - this._qf8183 > 0)
         {
            this._cx10110._dy867 = true;
         }
         if(this._qf8183 > 1)
         {
            this._ej3635._dy867 = true;
         }
      }
      
      protected function destroy() : void
      {
         var count2:ButtonsfichasModel = null;
         var count:int = 0;
         if(this.items == null)
         {
            return;
         }
         while(count < this.items.length)
         {
            count2 = ButtonsfichasModel(this.items[count]);
            if(count2 != null)
            {
               count2.destroy();
               count2 = null;
            }
            count++;
         }
         this.items.length = 0;
      }
   }
}

