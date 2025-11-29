package src.modules.login.choosePerson
{
   import src.allData.texts.*;
   
   public class ChoosepersonModel
   {
      
      private var textString:String;
      
      public var textString1:String;
      
      public var textString2:String;
      
      public var textString3:String;
      
      public var textString4:String;
      
      public var textString5:String;
      
      public var textString6:String;
      
      public var textString7:String;
      
      public var textString22:String;
      
      public var textString9:String;
      
      public var textString10:String;
      
      public var textString11:String;
      
      public var textString12:String;
      
      public var textString13:String;
      
      public var textString14:String;
      
      public var SHORT:String;
      
      public var textString15:String;
      
      public var textString16:String;
      
      public var textString17:String;
      
      public var textString18:String;
      
      public var textString19:String;
      
      public var textString20:String;
      
      public var textString21:String;
      
      public var textString22:String;
      
      public var textString23:String;
      
      public var TOP:String;
      
      public var textString24:String;
      
      public var textString25:String;
      
      public var textString26:String;
      
      public var textString27:String;
      
      public var textString28:String;
      
      public var textString29:String;
      
      public var textString30:String;
      
      public var textString1:String;
      
      public var textString2:String;
      
      public var textString33:String;
      
      public var textString34:String;
      
      public var textString35:String;
      
      public var textString36:String;
      
      public var textString37:String;
      
      public var textString11:String;
      
      public var textString39:String;
      
      public var textString40:String;
      
      public var textString41:String;
      
      public var textString1:String;
      
      public var VOLVER:String;
      
      public var textString43:String;
      
      public var textString44:String;
      
      public var textString4:String;
      
      public var textString46:String;
      
      public var textString47:String;
      
      public var textString48:String;
      
      public var textString49:String;
      
      public var textString50:String;
      
      public var textString51:String;
      
      public var textString52:String;
      
      public var textString53:String;
      
      public var count8:String;
      
      public var textString55:String;
      
      public var count9:String;
      
      public var count11:String;
      
      public var count12:String;
      
      public function ChoosepersonModel()
      {
         this.textString = "choosePerson";
         super();
         var count2:XML = new XML(TextManager._eo5308[this.textString].toXMLString());
         this.textString1 = count2.attribute("selectPerson");
         this.textString2 = count2.attribute("seguro");
         this.textString3 = count2.attribute("si");
         this.textString4 = count2.attribute("selColor");
         this.textString5 = count2.attribute("selColors");
         this.textString29 = count2.attribute("colores");
         this.textString6 = count2.attribute("rastas");
         this.textString7 = count2.attribute("cinta");
         this.textString22 = count2.attribute("ojos");
         this.textString9 = count2.attribute("piel");
         this.textString10 = count2.attribute("banador");
         this.textString11 = count2.attribute("pelo");
         this.textString12 = count2.attribute("cabello");
         this.textString13 = count2.attribute("camisa");
         this.textString14 = count2.attribute("cinturon");
         this.SHORT = count2.attribute("short");
         this.textString15 = count2.attribute("lupas");
         this.textString16 = count2.attribute("vestido");
         this.textString17 = count2.attribute("jacket");
         this.textString18 = count2.attribute("pantacas");
         this.textString19 = count2.attribute("poncho");
         this.textString20 = count2.attribute("gomas");
         this.textString21 = count2.attribute("talisman");
         this.textString22 = count2.attribute("gallumbos");
         this.textString23 = count2.attribute("gorro");
         this.TOP = count2.attribute("top");
         this.textString24 = count2.attribute("falda");
         this.textString25 = count2.attribute("kimono");
         this.textString26 = count2.attribute("camisola");
         this.textString27 = count2.attribute("campanilla");
         this.textString28 = count2.attribute("lupasboom");
         this.textString30 = count2.attribute("sombrero");
         this.textString33 = count2.attribute("leeTerminos");
         this.textString34 = count2.attribute("leeAntes");
         this.textString35 = count2.attribute("leePrivacidad");
         this.textString36 = count2.attribute("newsletter");
         this.textString37 = count2.attribute("agree");
         this.textString11 = count2.attribute("crear");
         this.textString39 = count2.attribute("leeElTexto");
         this.textString40 = count2.attribute("marcarCasilla");
         this.textString41 = count2.attribute("asi");
         this.textString1 = count2.attribute("siguiente");
         this.textString2 = count2.attribute("anterior");
         this.VOLVER = count2.attribute("volver");
         this.textString1 = count2.attribute("registrar");
         this.textString43 = count2.attribute("escribeNombre");
         this.textString44 = count2.attribute("nick");
         this.textString4 = count2.attribute("password");
         this.textString46 = count2.attribute("passwordConfirm");
         this.textString47 = count2.attribute("completaLosDatos");
         this.textString48 = count2.attribute("passwordMin");
         this.textString49 = count2.attribute("passwordDontMatch");
         this.textString50 = count2.attribute("nombreExistente");
         this.textString51 = count2.attribute("nombreExistente2");
         this.textString52 = count2.attribute("verificando");
         this.textString55 = count2.attribute("passFacil");
         this.textString53 = count2.attribute("nameDisponible");
         this.count8 = count2.attribute("menorEdad");
         this.count9 = count2.attribute("emailError");
         this.count11 = count2.attribute("emailInvalido");
         this.count12 = count2.attribute("edadIncorrecta");
      }
   }
}

