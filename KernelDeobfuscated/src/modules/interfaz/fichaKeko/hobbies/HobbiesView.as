package src.modules.interfaz.fichaKeko.hobbies
{
   import flash.display.*;
   import flash.geom.*;
   import flash.text.*;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.modules.interfaz.fichaKeko.fichaStatics.*;
   import src.modules.interfaz.fichaKeko.paneles.PanelesView;
   import src.utils.*;
   
   public class HobbiesView extends PanelesView
   {
      
      private static const count:int = 3;
      
      private static const textString:String = "mcSwapPage";
      
      private static const textString1:String = "mcMiniBaseHobbie";
      
      private static const textString2:String = "mcBaseHobbies";
      
      private static const textString3:String = "mcCaretoHobbie";
      
      private static const textString4:String = "mcFondoCaretoHobbie";
      
      private static const textString5:String = "tfHobbies";
      
      private static var count1:int = 0;
      
      protected var _qe3110:Hobbies;
      
      protected var _js7490:FichastaticsView;
      
      protected var items:Array;
      
      protected var colorTransform:ColorTransform;
      
      protected var _ut9257:MovieClip;
      
      protected var _kn15197:MovieClip;
      
      protected var _xg13846:MovieClip;
      
      protected var _pc3151:TextField;
      
      public function HobbiesView(param1:MovieClip, param2:MovieClip, param3:Hobbies, param4:BoobleUtils)
      {
         this.items = new Array();
         this.colorTransform = new ColorTransform();
         super(param1,param2,param4);
         this._qe3110 = param3;
         this._ut9257 = MovieClip(param2.getChildByName(textString2));
         this._kn15197 = MovieClip(param2.getChildByName(textString3));
         this._xg13846 = MovieClip(this._kn15197.getChildByName(textString4));
         this._pc3151 = TextField(param2.getChildByName(textString5));
         this._js7490 = new FichastaticsView(param2[textString],this._dl13456);
      }
      
      override public function destroy() : void
      {
         var count2:HobbiesModel = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = HobbiesModel(this.items[count]);
            count2.destroy();
            count2 = null;
            count++;
         }
         if(this._js7490 != null)
         {
            this._js7490.destroy();
            this._js7490 = null;
         }
         this._kj12276();
         super.destroy();
      }
      
      override public function show(param1:FichakekoView) : void
      {
         super.show(param1);
         this._th185(param1);
      }
      
      private function _th185(param1:FichakekoView) : void
      {
         var count:HobbiesModel = null;
         var count1:int = 0;
         var count3:Array = this.getList();
         this.items = new Array();
         while(count1 < count)
         {
            count = new HobbiesModel(count1,param1,this._qe3110.isEnabled,count3[count1],this._qe3110._im12039._ue3031,_hg11010[textString1 + count1],this._pu2953);
            this.items.push(count);
            count1++;
         }
         this._tr5141();
      }
      
      private function _dl13456() : void
      {
         this._kj12276();
         ++count1;
         if(count1 >= 2)
         {
            count1 = 0;
         }
         this._tr5141();
      }
      
      private function _pu2953(param1:int) : void
      {
         this._kj12276();
      }
      
      override public function _ck5714(param1:FichakekoView) : void
      {
         this._js7490._dn10392(param1);
         this.colorTransform.color = param1._mx10235;
         this._ut9257.transform.colorTransform = this.colorTransform;
         this._xg13846.transform.colorTransform = this.colorTransform;
      }
      
      public function _tr5141() : void
      {
         var count2:HobbiesModel = null;
         var count3:int = 0;
         var count:Array = this.getList();
         if(count1 == 0)
         {
            UtilsUtils._xl9503(this._pc3151,this._qe3110._im12039.count1);
         }
         else
         {
            UtilsUtils._xl9503(this._pc3151,this._qe3110._im12039._ja5842);
         }
         while(count3 < this.items.length)
         {
            count2 = HobbiesModel(this.items[count3]);
            count2._no3546(count[count3]);
            count3++;
         }
         this._kn15197.gotoAndStop(count1 + 1);
      }
      
      public function _bh14714(param1:int, param2:int, param3:int, param4:String) : void
      {
         if(this._qe3110._lp13903.id != param1)
         {
            return;
         }
         if(count1 != param2)
         {
            return;
         }
         var count2:Array = this.getList();
         count2[param3] = param4;
         this._tr5141();
      }
      
      public function _kj12276() : void
      {
         var count2:HobbiesModel = null;
         var count:Boolean = false;
         var count1:int = 0;
         var count3:Array = this.getList();
         while(count1 < this.items.length)
         {
            count2 = HobbiesModel(this.items[count1]);
            count = count2._vp10797();
            if(count)
            {
               count3[count1] = count2.getString();
               this._qe3110._dv14621.handleSocket7(count1,count1,count3[count1]);
            }
            count1++;
         }
      }
      
      private function getList() : Array
      {
         if(count1 == 0)
         {
            return this._qe3110._lp13903.hobbies;
         }
         return this._qe3110._lp13903.items2;
      }
   }
}

