package src.modules.interfaz.fichaKeko
{
   import flash.external.*;
   import src.person.*;
   
   public class FichakekoView
   {
      
      private static const _jg8652:Array = ["Mod","Hombre","Mujer","Otro","Member","Owner","Publicista","VipSupremo","Helper","Catalogue","Designer","PublicistaNew","Guia","DJ","Inferno","CreadorContenido"];
      
      public static const _nu11701:Array = new Array([16763904,16093696,16626434,16763904],[26549,15724,3717630,39167],[16711782,12255489,16740259,14975144],[3446784,26112,6736896,11138450],[6684774,4325699,5636182,6684774]);
      
      public static const _in228:int = 0;
      
      public static const _gi7145:int = 1;
      
      public static const _si459:int = 2;
      
      public static const _pa4885:int = 3;
      
      public static const _ow4754:int = 4;
      
      public var _sf7808:uint;
      
      public var _mx10235:uint;
      
      public var _rf5817:uint;
      
      public var _gi2816:uint;
      
      public var _vb6962:String;
      
      public var user:PersonAnimation;
      
      public function FichakekoView(param1:Boolean, param2:PersonAnimation)
      {
         super();
         this.user = param2;
         if(param1)
         {
            this._et6071(param2);
         }
         else if(param2 != null)
         {
            this._si14427(param2);
         }
      }
      
      public function _et6071(param1:PersonAnimation) : void
      {
         if(param1.name == "")
         {
            this._sf7808 = 16768953;
            this._mx10235 = 14007195;
            this._rf5817 = 14007195;
            this._gi2816 = 14007195;
            this._vb6962 = _jg8652[14];
            ExternalInterface.call("showRank","Inferno");
            return;
         }
         if(param1._lk2235.indexOf("[1]") >= 0)
         {
            this._sf7808 = 15000804;
            this._mx10235 = 13290186;
            this._rf5817 = 13290186;
            this._gi2816 = 13290186;
            this._vb6962 = _jg8652[8];
            return;
         }
         if(param1._lk2235.indexOf("[2]") >= 0)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this._vb6962 = _jg8652[6];
            return;
         }
         if(param1._lk2235.indexOf("[3]") >= 0)
         {
            this._sf7808 = _nu11701[_ow4754][0];
            this._mx10235 = _nu11701[_ow4754][1];
            this._rf5817 = _nu11701[_ow4754][2];
            this._gi2816 = _nu11701[_ow4754][3];
            this._vb6962 = _jg8652[_ow4754];
            return;
         }
         if(param1._lk2235.indexOf("[4]") >= 0)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this._vb6962 = _jg8652[7];
            return;
         }
         if(param1._vm2039 == 13)
         {
            this._sf7808 = _nu11701[_in228][0];
            this._mx10235 = _nu11701[_in228][1];
            this._rf5817 = _nu11701[_in228][2];
            this._gi2816 = _nu11701[_in228][3];
            this._vb6962 = _jg8652[_in228];
            ExternalInterface.call("showRank","administrador");
         }
         else if(param1._vm2039 == 12)
         {
            this._sf7808 = _nu11701[_in228][0];
            this._mx10235 = _nu11701[_in228][1];
            this._rf5817 = _nu11701[_in228][2];
            this._gi2816 = _nu11701[_in228][3];
            this._vb6962 = _jg8652[_in228];
            ExternalInterface.call("showRank","mod");
         }
         else if(param1._vm2039 == 11)
         {
            this._sf7808 = 11513775;
            this._mx10235 = 9737364;
            this._rf5817 = 11513775;
            this._gi2816 = 11513775;
            this._vb6962 = _jg8652[8];
            ExternalInterface.call("showRank","helper");
         }
         else if(param1._vm2039 == 10)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this._vb6962 = _jg8652[6];
            ExternalInterface.call("showRank","organizador");
         }
         else if(param1._vm2039 == 9)
         {
            this._sf7808 = 1474628;
            this._mx10235 = 1138996;
            this._rf5817 = 1474628;
            this._gi2816 = 1474628;
            this._vb6962 = _jg8652[12];
            ExternalInterface.call("showRank","inter");
         }
         else if(param1._vm2039 == 8)
         {
            this._sf7808 = 2929130;
            this._mx10235 = 1677512;
            this._rf5817 = 1677512;
            this._gi2816 = 1677512;
            this._vb6962 = _jg8652[11];
            ExternalInterface.call("showRank","publicista");
         }
         else if(param1._vm2039 == 7)
         {
            this._sf7808 = 15173137;
            this._mx10235 = 12804608;
            this._rf5817 = 12804608;
            this._gi2816 = 12804608;
            this._vb6962 = _jg8652[9];
            ExternalInterface.call("showRank","catalogue");
         }
         else if(param1._vm2039 == 6)
         {
            this._sf7808 = 13050777;
            this._mx10235 = 11280004;
            this._rf5817 = 11280004;
            this._gi2816 = 11280004;
            this._vb6962 = _jg8652[10];
            ExternalInterface.call("showRank","designer");
         }
         else if(param1._vm2039 >= 14)
         {
            this._sf7808 = _nu11701[_in228][0];
            this._mx10235 = _nu11701[_in228][1];
            this._rf5817 = _nu11701[_in228][2];
            this._gi2816 = _nu11701[_in228][3];
            this._vb6962 = _jg8652[_in228];
            if(param1._vm2039 >= 15)
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
            this._sf7808 = _nu11701[_ow4754][0];
            this._mx10235 = _nu11701[_ow4754][1];
            this._rf5817 = _nu11701[_ow4754][2];
            this._gi2816 = _nu11701[_ow4754][3];
            this._vb6962 = _jg8652[_ow4754];
            ExternalInterface.call("showRank","vip");
         }
         else if(param1.member == 2)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this._vb6962 = _jg8652[7];
            ExternalInterface.call("showRank","supremo");
         }
         else if(PersonModel._nj5820[param1._jn11596] == PersonModel._gi7145)
         {
            this._sf7808 = _nu11701[_gi7145][0];
            this._mx10235 = _nu11701[_gi7145][1];
            this._rf5817 = _nu11701[_gi7145][2];
            this._gi2816 = _nu11701[_gi7145][3];
            this._vb6962 = _jg8652[_gi7145];
            ExternalInterface.call("showRank","none");
         }
         else
         {
            this._sf7808 = _nu11701[_si459][0];
            this._mx10235 = _nu11701[_si459][1];
            this._rf5817 = _nu11701[_si459][2];
            this._gi2816 = _nu11701[_si459][3];
            this._vb6962 = _jg8652[_si459];
            ExternalInterface.call("showRank","none");
         }
      }
      
      private function _si14427(param1:PersonAnimation) : void
      {
         if(param1.name == "")
         {
            this._sf7808 = 16768953;
            this._mx10235 = 14007195;
            this._rf5817 = 14007195;
            this._gi2816 = 14007195;
            this._vb6962 = _jg8652[14];
            ExternalInterface.call("showRank","Inferno");
            return;
         }
         if(param1._lk2235.indexOf("[1]") >= 0)
         {
            this._sf7808 = 15000804;
            this._mx10235 = 13290186;
            this._rf5817 = 13290186;
            this._gi2816 = 13290186;
            this._vb6962 = _jg8652[8];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1._lk2235.indexOf("[2]") >= 0)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this._vb6962 = _jg8652[6];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1._lk2235.indexOf("[3]") >= 0)
         {
            this._sf7808 = _nu11701[_ow4754][0];
            this._mx10235 = _nu11701[_ow4754][1];
            this._rf5817 = _nu11701[_ow4754][2];
            this._gi2816 = _nu11701[_ow4754][3];
            this._vb6962 = _jg8652[_ow4754];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1._lk2235.indexOf("[4]") >= 0)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this._vb6962 = _jg8652[7];
            ExternalInterface.call("showRank","none");
            return;
         }
         if(param1._vm2039 == 13)
         {
            this._sf7808 = _nu11701[_in228][0];
            this._mx10235 = _nu11701[_in228][1];
            this._rf5817 = _nu11701[_in228][2];
            this._gi2816 = _nu11701[_in228][3];
            this._vb6962 = _jg8652[_in228];
            ExternalInterface.call("showRank","administrador");
         }
         else if(param1._vm2039 == 12)
         {
            this._sf7808 = _nu11701[_in228][0];
            this._mx10235 = _nu11701[_in228][1];
            this._rf5817 = _nu11701[_in228][2];
            this._gi2816 = _nu11701[_in228][3];
            this._vb6962 = _jg8652[_in228];
            ExternalInterface.call("showRank","mod");
         }
         else if(param1._vm2039 == 11)
         {
            this._sf7808 = 11513775;
            this._mx10235 = 9737364;
            this._rf5817 = 11513775;
            this._gi2816 = 11513775;
            this._vb6962 = _jg8652[8];
            ExternalInterface.call("showRank","helper");
         }
         else if(param1._vm2039 == 10)
         {
            this._sf7808 = 16711680;
            this._mx10235 = 10354688;
            this._rf5817 = 10354688;
            this._gi2816 = 10354688;
            this._vb6962 = _jg8652[6];
            ExternalInterface.call("showRank","organizador");
         }
         else if(param1._vm2039 == 9)
         {
            this._sf7808 = 1474628;
            this._mx10235 = 1138996;
            this._rf5817 = 1474628;
            this._gi2816 = 1474628;
            this._vb6962 = _jg8652[12];
            ExternalInterface.call("showRank","inter");
         }
         else if(param1._vm2039 == 8)
         {
            this._sf7808 = 2929130;
            this._mx10235 = 1677512;
            this._rf5817 = 1677512;
            this._gi2816 = 1677512;
            this._vb6962 = _jg8652[11];
            ExternalInterface.call("showRank","publicista");
         }
         else if(param1._vm2039 == 7)
         {
            this._sf7808 = 15173137;
            this._mx10235 = 12804608;
            this._rf5817 = 12804608;
            this._gi2816 = 12804608;
            this._vb6962 = _jg8652[9];
            ExternalInterface.call("showRank","catalogue");
         }
         else if(param1._vm2039 == 6)
         {
            this._sf7808 = 13050777;
            this._mx10235 = 11280004;
            this._rf5817 = 11280004;
            this._gi2816 = 11280004;
            this._vb6962 = _jg8652[10];
            ExternalInterface.call("showRank","designer");
         }
         else if(param1._vm2039 >= 14)
         {
            this._sf7808 = _nu11701[_in228][0];
            this._mx10235 = _nu11701[_in228][1];
            this._rf5817 = _nu11701[_in228][2];
            this._gi2816 = _nu11701[_in228][3];
            this._vb6962 = _jg8652[_in228];
            if(param1._vm2039 >= 15)
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
            this._sf7808 = _nu11701[_ow4754][0];
            this._mx10235 = _nu11701[_ow4754][1];
            this._rf5817 = _nu11701[_ow4754][2];
            this._gi2816 = _nu11701[_ow4754][3];
            this._vb6962 = _jg8652[_ow4754];
            ExternalInterface.call("showRank","vip");
         }
         else if(param1.member == 2)
         {
            this._sf7808 = 3947580;
            this._mx10235 = 2105376;
            this._rf5817 = 2105376;
            this._gi2816 = 2105376;
            this._vb6962 = _jg8652[7];
            ExternalInterface.call("showRank","supremo");
         }
         else if(PersonModel._nj5820[param1._jn11596] == PersonModel._gi7145)
         {
            this._sf7808 = _nu11701[_gi7145][0];
            this._mx10235 = _nu11701[_gi7145][1];
            this._rf5817 = _nu11701[_gi7145][2];
            this._gi2816 = _nu11701[_gi7145][3];
            this._vb6962 = _jg8652[_gi7145];
            ExternalInterface.call("showRank","none");
         }
         else
         {
            this._sf7808 = _nu11701[_si459][0];
            this._mx10235 = _nu11701[_si459][1];
            this._rf5817 = _nu11701[_si459][2];
            this._gi2816 = _nu11701[_si459][3];
            this._vb6962 = _jg8652[_si459];
            ExternalInterface.call("showRank","none");
         }
      }
   }
}

