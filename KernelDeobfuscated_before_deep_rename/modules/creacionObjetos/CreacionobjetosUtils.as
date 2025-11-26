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
      
      protected var _pn12868:int;
      
      protected var _rt10674:int;
      
      protected var _dm16168:Array;
      
      public function CreacionobjetosUtils(param1:MovieClip, param2:FichasModel, param3:Skin, param4:String = "", param5:String = "", param6:String = "", param7:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         this._cx10110 = new ButtonSkin(param1["pagination"]["next"],this._by2486,param3._dn2337,param3._lm3936);
         this._ej3635 = new ButtonSkin(param1["pagination"]["back"],this._aj2155,param3._dn2337,param3._lm3936);
         StringUtils._ts14032(param1["pagination"]["background"],param3._kk3956);
         this._rt10674 = param7;
         this._sv2711 = TextField(param1["pagination"]["page"]);
      }
      
      public function get _qf8183() : int
      {
         return this._rt10674;
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
         ++this._rt10674;
         if(this._qf8183 > this._pn12868)
         {
            this._rt10674 = this._pn12868;
         }
         else
         {
            this._ka12681();
         }
      }
      
      public function _aj2155() : void
      {
         --this._rt10674;
         if(this._qf8183 < 1)
         {
            this._rt10674 = 1;
         }
         else
         {
            this._ka12681();
         }
      }
      
      protected function _ka12681() : void
      {
         UtilsUtils._xl9503(this._sv2711,this._qf8183 + "/" + this._pn12868);
         this._cx10110._dy867 = false;
         this._ej3635._dy867 = false;
         if(this._pn12868 - this._qf8183 > 0)
         {
            this._cx10110._dy867 = true;
         }
         if(this._qf8183 > 1)
         {
            this._ej3635._dy867 = true;
         }
      }
      
      protected function _rd497() : void
      {
         var _loc1_:ButtonsfichasModel = null;
         var _loc2_:int = 0;
         if(this._dm16168 == null)
         {
            return;
         }
         while(_loc2_ < this._dm16168.length)
         {
            _loc1_ = ButtonsfichasModel(this._dm16168[_loc2_]);
            if(_loc1_ != null)
            {
               _loc1_.destroy();
               _loc1_ = null;
            }
            _loc2_++;
         }
         this._dm16168.length = 0;
      }
   }
}

