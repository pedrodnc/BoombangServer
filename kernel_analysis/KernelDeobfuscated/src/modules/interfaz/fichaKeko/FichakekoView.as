package src.modules.interfaz.fichaKeko
{
   import flash.external.*;
   import src.person.*;
   
   public class FichakekoView
   {
      
      private static const items:Array = ["Mod","Hombre","Mujer","Otro","Member","Owner","Publicista","VipSupremo","Helper","Catalogue","Designer","PublicistaNew","Guia","DJ","Inferno","CreadorContenido"];
      
      public static const items1:Array = new Array([16763904,16093696,16626434,16763904],[26549,15724,3717630,39167],[16711782,12255489,16740259,14975144],[3446784,26112,6736896,11138450],[6684774,4325699,5636182,6684774]);
      
      public static const count:int = 0;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 3;
      
      public static const count4:int = 4;
      
      public var _sf7808:uint;
      
      public var _mx10235:uint;
      
      public var _rf5817:uint;
      
      public var _gi2816:uint;
      
      public var textString:String;
      
      public var user:PersonAnimation;
      
      public function FichakekoView(param1:Boolean, param2:PersonAnimation)
      {
         super();
         this.user = param2;
         if(param1)
         {
            this.show(param2);
         }
         else if(param2 != null)
         {
            this.show1(param2);
         }
      }
      
      public function show(param1:PersonAnimation) : void
      {
         if(param1.name == "")
         {
            this._sf7808 = 16768953;
            this._mx10235 = 14007195;
            this._rf5817 = 14007195;
            this._gi2816 = 14007195;
            this.textString = items[14];
            ExternalInterface.call("showRank","Inferno");
            return;
         }
         if(param1.textString1.indexOf("[1]") >= 0)
         {
            this._sf7808 = 15000804;
            this._mx10235 = 13290186;
            this._rf5817 = 13290186;
            this._gi2816 = 13290186;
            this.textString = items[8];
            return;
         }
         if(param1.textString1.indexOf("[2]") >= 0)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this.textString = items[6];
            return;
         }
         if(param1.textString1.indexOf("[3]") >= 0)
         {
            this._sf7808 = items1[count4][0];
            this._mx10235 = items1[count4][1];
            this._rf5817 = items1[count4][2];
            this._gi2816 = items1[count4][3];
            this.textString = items[count4];
            return;
         }
         if(param1.textString1.indexOf("[4]") >= 0)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this.textString = items[7];
            return;
         }
         if(param1.count10 == 13)
         {
            this._sf7808 = items1[count][0];
            this._mx10235 = items1[count][1];
            this._rf5817 = items1[count][2];
            this._gi2816 = items1[count][3];
            this.textString = items[count];
            ExternalInterface.call("showRank","administrador");
         }
         else if(param1.count10 == 12)
         {
            this._sf7808 = items1[count][0];
            this._mx10235 = items1[count][1];
            this._rf5817 = items1[count][2];
            this._gi2816 = items1[count][3];
            this.textString = items[count];
            ExternalInterface.call("showRank","mod");
         }
         else if(param1.count10 == 11)
         {
            this._sf7808 = 11513775;
            this._mx10235 = 9737364;
            this._rf5817 = 11513775;
            this._gi2816 = 11513775;
            this.textString = items[8];
            ExternalInterface.call("showRank","helper");
         }
         else if(param1.count10 == 10)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this.textString = items[6];
            ExternalInterface.call("showRank","organizador");
         }
         else if(param1.count10 == 9)
         {
            this._sf7808 = 1474628;
            this._mx10235 = 1138996;
            this._rf5817 = 1474628;
            this._gi2816 = 1474628;
            this.textString = items[12];
            ExternalInterface.call("showRank","inter");
         }
         else if(param1.count10 == 8)
         {
            this._sf7808 = 2929130;
            this._mx10235 = 1677512;
            this._rf5817 = 1677512;
            this._gi2816 = 1677512;
            this.textString = items[11];
            ExternalInterface.call("showRank","publicista");
         }
         else if(param1.count10 == 7)
         {
            this._sf7808 = 15173137;
            this._mx10235 = 12804608;
            this._rf5817 = 12804608;
            this._gi2816 = 12804608;
            this.textString = items[9];
            ExternalInterface.call("showRank","catalogue");
         }
         else if(param1.count10 == 6)
         {
            this._sf7808 = 13050777;
            this._mx10235 = 11280004;
            this._rf5817 = 11280004;
            this._gi2816 = 11280004;
            this.textString = items[10];
            ExternalInterface.call("showRank","designer");
         }
         else if(param1.count10 >= 14)
         {
            this._sf7808 = items1[count][0];
            this._mx10235 = items1[count][1];
            this._rf5817 = items1[count][2];
            this._gi2816 = items1[count][3];
            this.textString = items[count];
            if(param1.count10 >= 15)
            {
               ExternalInterface.call("showRank","developer");
            }
            else
            {
               ExternalInterface.call("showRank","manager");
            }
         }
         else if(param1.member == 1)
         {
            this._sf7808 = items1[count4][0];
            this._mx10235 = items1[count4][1];
            this._rf5817 = items1[count4][2];
            this._gi2816 = items1[count4][3];
            this.textString = items[count4];
            ExternalInterface.call("showRank","vip");
         }
         else if(param1.member == 2)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this.textString = items[7];
            ExternalInterface.call("showRank","supremo");
         }
         else if(PersonModel._nj5820[param1.count1] == PersonModel.count1)
         {
            this._sf7808 = items1[count1][0];
            this._mx10235 = items1[count1][1];
            this._rf5817 = items1[count1][2];
            this._gi2816 = items1[count1][3];
            this.textString = items[count1];
            ExternalInterface.call("showRank","none");
         }
         else
         {
            this._sf7808 = items1[count2][0];
            this._mx10235 = items1[count2][1];
            this._rf5817 = items1[count2][2];
            this._gi2816 = items1[count2][3];
            this.textString = items[count2];
            ExternalInterface.call("showRank","none");
         }
      }
      
      private function show1(param1:PersonAnimation) : void
      {
         if(param1.name == "")
         {
            this._sf7808 = 16768953;
            this._mx10235 = 14007195;
            this._rf5817 = 14007195;
            this._gi2816 = 14007195;
            this.textString = items[14];
            ExternalInterface.call("showRank","Inferno");
            return;
         }
         if(param1.textString1.indexOf("[1]") >= 0)
         {
            this._sf7808 = 15000804;
            this._mx10235 = 13290186;
            this._rf5817 = 13290186;
            this._gi2816 = 13290186;
            this.textString = items[8];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1.textString1.indexOf("[2]") >= 0)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this.textString = items[6];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1.textString1.indexOf("[3]") >= 0)
         {
            this._sf7808 = items1[count4][0];
            this._mx10235 = items1[count4][1];
            this._rf5817 = items1[count4][2];
            this._gi2816 = items1[count4][3];
            this.textString = items[count4];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1.textString1.indexOf("[4]") >= 0)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this.textString = items[7];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1.count10 == 13)
         {
            this._sf7808 = items1[count][0];
            this._mx10235 = items1[count][1];
            this._rf5817 = items1[count][2];
            this._gi2816 = items1[count][3];
            this.textString = items[count];
            ExternalInterface.call("showRank","administrador");
         }
         else if(param1.count10 == 12)
         {
            this._sf7808 = items1[count][0];
            this._mx10235 = items1[count][1];
            this._rf5817 = items1[count][2];
            this._gi2816 = items1[count][3];
            this.textString = items[count];
            ExternalInterface.call("showRank","mod");
         }
         else if(param1.count10 == 11)
         {
            this._sf7808 = 11513775;
            this._mx10235 = 9737364;
            this._rf5817 = 11513775;
            this._gi2816 = 11513775;
            this.textString = items[8];
            ExternalInterface.call("showRank","helper");
         }
         else if(param1.count10 == 10)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this.textString = items[6];
            ExternalInterface.call("showRank","organizador");
         }
         else if(param1.count10 == 9)
         {
            this._sf7808 = 1474628;
            this._mx10235 = 1138996;
            this._rf5817 = 1474628;
            this._gi2816 = 1474628;
            this.textString = items[12];
            ExternalInterface.call("showRank","inter");
         }
         else if(param1.count10 == 8)
         {
            this._sf7808 = 2929130;
            this._mx10235 = 1677512;
            this._rf5817 = 1677512;
            this._gi2816 = 1677512;
            this.textString = items[11];
            ExternalInterface.call("showRank","publicista");
         }
         else if(param1.count10 == 7)
         {
            this._sf7808 = 15173137;
            this._mx10235 = 12804608;
            this._rf5817 = 12804608;
            this._gi2816 = 12804608;
            this.textString = items[9];
            ExternalInterface.call("showRank","catalogue");
         }
         else if(param1.count10 == 6)
         {
            this._sf7808 = 13050777;
            this._mx10235 = 11280004;
            this._rf5817 = 11280004;
            this._gi2816 = 11280004;
            this.textString = items[10];
            ExternalInterface.call("showRank","designer");
         }
         else if(param1.count10 >= 14)
         {
            this._sf7808 = items1[count][0];
            this._mx10235 = items1[count][1];
            this._rf5817 = items1[count][2];
            this._gi2816 = items1[count][3];
            this.textString = items[count];
            if(param1.count10 >= 15)
            {
               ExternalInterface.call("showRank","developer");
            }
            else
            {
               ExternalInterface.call("showRank","manager");
            }
         }
         else if(param1.member == 1)
         {
            this._sf7808 = items1[count4][0];
            this._mx10235 = items1[count4][1];
            this._rf5817 = items1[count4][2];
            this._gi2816 = items1[count4][3];
            this.textString = items[count4];
            ExternalInterface.call("showRank","vip");
         }
         else if(param1.member == 2)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this.textString = items[7];
            ExternalInterface.call("showRank","supremo");
         }
         else if(PersonModel._nj5820[param1.count1] == PersonModel.count1)
         {
            this._sf7808 = items1[count1][0];
            this._mx10235 = items1[count1][1];
            this._rf5817 = items1[count1][2];
            this._gi2816 = items1[count1][3];
            this.textString = items[count1];
            ExternalInterface.call("showRank","none");
         }
         else
         {
            this._sf7808 = items1[count2][0];
            this._mx10235 = items1[count2][1];
            this._rf5817 = items1[count2][2];
            this._gi2816 = items1[count2][3];
            this.textString = items[count2];
            ExternalInterface.call("showRank","none");
         }
      }
   }
}

