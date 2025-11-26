package src.modules.login.choosePerson.Registro
{
   import src.allData.texts.*;
   
   public class RegistroModel
   {
      
      private var textString:String;
      
      public var textString1:String;
      
      public var textString2:String;
      
      public var textString4:String;
      
      public var textString4:String;
      
      public var textString5:String;
      
      public var textString6:String;
      
      public var textString7:String;
      
      public var textString8:String;
      
      public var textString9:String;
      
      public var textString10:String;
      
      public var textString11:String;
      
      public function RegistroModel()
      {
         this.textString = "fichaRegistro";
         super();
         var count2:XML = new XML(TextManager._eo5308[this.textString].toXMLString());
         this.textString1 = count2.attribute("registrate");
         this.textString2 = count2.attribute("nombre");
         this.textString4 = count2.attribute("password");
         this.textString4 = count2.attribute("edad");
         this.textString5 = count2.attribute("emailNormal");
         this.textString6 = count2.attribute("repEmailNormal");
         this.textString7 = count2.attribute("emailPadre");
         this.textString8 = count2.attribute("repEmailPadre");
         this.textString9 = count2.attribute("condiciones");
         this.textString10 = count2.attribute("advertencia");
         this.textString11 = count2.attribute("crear");
      }
   }
}

