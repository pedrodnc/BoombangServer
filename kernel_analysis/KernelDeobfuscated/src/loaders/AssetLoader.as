package src.loaders
{
   import flash.utils.*;
   import src.config.*;
   import src.logs.*;
   import src.modules.login.*;
   
   public class AssetLoader
   {
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const textString:String = "fpPromocionMascotas";
      
      public static const textString1:String = "fpPromocion";
      
      public static const textString2:String = "fpTelefonoCancelado";
      
      public static const textString3:String = "fpCambioTelEsp";
      
      public static const textString4:String = "fpCambioTelMex";
      
      public static const textString5:String = "fpBienvenido";
      
      public static const textString6:String = "fpBannerPrepago";
      
      public static const textString7:String = "fpMarketingViral";
      
      public static const textString8:String = "fpFichaTips";
      
      public static const textString9:String = "fpFichaBanneo";
      
      public static const textString10:String = "fpBannerCheetos";
      
      public static const textString11:String = "fpBannerYingo";
      
      public static const textString12:String = "fpPromocionPreciosEnero";
      
      public static const textString13:String = "fpRebajasEnero";
      
      public static const textString14:String = "fpFichaTipsNuevo";
      
      public static const textString15:String = "fpFichaSanValentin";
      
      public static const textString16:String = "fpBannerColaCao";
      
      public static const textString17:String = "fpBannerChilePsu";
      
      public static const textString18:String = "fpFichaCieCreditosPlata";
      
      public static const textString19:String = "fichaRegalosHalloween";
      
      public static const textString20:String = "fichaLlavesHalloween";
      
      public static const textString21:String = "fichaObjetosHalloween";
      
      public static const textString22:String = "fichaPocionesHalloween";
      
      public static const textString23:String = "fichaAloPass";
      
      public static const textString24:String = "fichaConcursoFacebook";
      
      public static const textString25:String = "fichaPromoNavidadArgentina";
      
      public static const textString26:String = "fichaPromoNavidadVenezuela";
      
      public static const textString27:String = "fichaPromoNavidadMexico";
      
      public static const textString28:String = "fpFichaCreacionUnderAge";
      
      public static const textString29:String = "fpRecuperarCuentaPersonaje";
      
      public static const textString30:String = "fichaGuest";
      
      public static const textString31:String = "fichaFinGuest";
      
      public static const textString32:String = "fpFichaMember";
      
      public static const textString33:String = "FichaNoticias";
      
      public static const textString34:String = "fpBackGroundNavidad";
      
      public static const textString35:String = "fpForeGroundNavidad";
      
      public static const textString36:String = "fpMarikitaNavidad";
      
      public static const textString37:String = "fpFlorNavidad";
      
      public static const textString38:String = "fpFichaDialogoBicho";
      
      public static const textString39:String = "fpBarraInferior";
      
      public static const textString40:String = "fpCajaRegaloNavidad";
      
      public static const textString41:String = "fpConcursos";
      
      public static const textString42:String = "fpCajaRegaloSanValentin";
      
      public static const textString43:String = "fpBackGroundSanValentin";
      
      public static const textString44:String = "fpForeGroundSanValentin";
      
      public static const textString45:String = "fpMarikitaSanValentin";
      
      public static const textString46:String = "fpFlorSanValentin";
      
      public static const textString47:String = "fpFlorPascuas";
      
      public static const textString48:String = "fpCajaRegaloPascuas";
      
      public static const textString49:String = "fpCajaRegaloHalloween";
      
      public static const textString50:String = "fpBackGroundHalloween";
      
      public static const textString51:String = "fpForeGroundHalloween";
      
      public static const textString52:String = "fpMarikitaHalloween";
      
      public static const textString53:String = "fpFlorHalloween";
      
      public static const textString54:String = "fpPromocionBiblioteca";
      
      public static const textString55:String = "fpBackgroundAliens2011";
      
      public static const textString56:String = "fpBackgroundMeteor2011";
      
      public static const textString57:String = "fpCajaRegalo";
      
      public static const textString58:String = "fpMarikita";
      
      public static const textString59:String = "fpForeGround";
      
      public static const textString60:String = "fpBackGround";
      
      public static const textString61:String = "fpFlor";
      
      public static const textString62:String = "fpForeGroundHielo";
      
      public static const textString63:String = "fpBackGroundHielo";
      
      public static const textString64:String = "fpFlorHielo";
      
      public static const textString65:String = "fpLogoBB";
      
      public static const textString66:String = "fichaBug";
      
      public static const textString67:String = "consolaMultiuser";
      
      public static const textString68:String = "loader";
      
      public static const textString69:String = "loaderKekos";
      
      public static const textString70:String = "fpCajaRegaloDragones";
      
      public static const textString71:String = "fpMarikitaDragones";
      
      public static const textString72:String = "fpForeGroundDragones";
      
      public static const textString73:String = "fpBackGroundDragones";
      
      public static const textString74:String = "fpFlorDragones";
      
      public static const textString75:String = "boombangSO";
      
      public static const textString76:String = "login";
      
      public static const textString77:String = "yingoKiteLogin";
      
      public static const textString78:String = "tomarFoto";
      
      public static const textString79:String = "hadaMagica";
      
      public static const textString80:String = "murcielago";
      
      public static const textString81:String = "chooseIsla";
      
      public static const textString82:String = "creaLocalization";
      
      public static const textString83:String = "isla";
      
      public static const textString84:String = textString83 + "1";
      
      public static const textString85:String = textString83 + "2";
      
      public static const textString86:String = textString83 + "3";
      
      public static const textString87:String = textString83 + "4";
      
      public static const textString88:String = textString83 + "5";
      
      public static const textString89:String = textString83 + "_cheetos";
      
      public static const textString90:String = textString83 + "_psu";
      
      public static const textString91:String = "islaPersons";
      
      public static const textString92:String = "ManagerPociones";
      
      public static const textString93:String = "previewObjects";
      
      public static const textString94:String = "brujulaExit";
      
      public static const textString95:String = "fichaKeko";
      
      public static const textString96:String = "baseChat";
      
      public static const textString97:String = "intercambios";
      
      public static const textString98:String = "compraObjetos";
      
      public static const textString99:String = "mochila";
      
      public static const textString100:String = "editObject";
      
      public static const textString101:String = "choosePerson";
      
      public static const textString102:String = "fichaSkinObject";
      
      public static const textString103:String = "bannerPerrosGatos";
      
      public static const textString104:String = "interfazLlaves";
      
      public static const textString105:String = "interfazSonido";
      
      public static const textString106:String = "npcCreateCard";
      
      public static const textString107:String = "fichaDatosDePlantas";
      
      public static const textString108:String = "regaderaPlantas";
      
      public static const textString109:String = "cuadroTextoPlantas";
      
      public static const textString110:String = "concursos";
      
      public static const textString111:String = "bannerLoading";
      
      public static const textString112:String = "banner";
      
      public static const textString113:String = "escenario";
      
      public static const textString114:String = "xml";
      
      public static const count2:int = 400;
      
      public static const textString115:String = "privado";
      
      public static const textString116:String = "xml";
      
      public static const count3:int = 46;
      
      public static const textString117:String = "mGame";
      
      public static const textString118:String = "xml";
      
      public static const textString119:String = "npc";
      
      public static const textString120:String = textString117 + "1";
      
      public static const textString121:String = textString117 + "1" + textString118;
      
      public static const textString122:String = textString117 + "2";
      
      public static const textString123:String = textString117 + "2" + textString118;
      
      public static const textString124:String = textString117 + "3";
      
      public static const textString125:String = textString117 + "3" + textString118;
      
      public static const textString126:String = textString117 + "5";
      
      public static const textString127:String = textString117 + "5" + textString118;
      
      public static const textString128:String = textString117 + "6";
      
      public static const textString129:String = textString117 + "6" + textString118;
      
      public static const textString130:String = textString117 + "7";
      
      public static const textString131:String = textString117 + "7" + textString118;
      
      public static const textString132:String = textString117 + "8";
      
      public static const textString133:String = textString117 + "8" + textString118;
      
      public static const textString134:String = textString117 + "9";
      
      public static const textString135:String = textString117 + "9" + textString118;
      
      public static const textString136:String = textString117 + "10";
      
      public static const textString137:String = textString117 + "10" + textString118;
      
      public static const textString138:String = textString117 + "11";
      
      public static const textString139:String = textString117 + "11" + textString118;
      
      public static const textString140:String = textString117 + "12";
      
      public static const textString141:String = textString117 + "12" + textString118;
      
      public static const textString142:String = textString117 + "13";
      
      public static const textString143:String = textString117 + "13" + textString118;
      
      public static const textString144:String = textString117 + "14";
      
      public static const textString145:String = textString117 + "14" + textString118;
      
      public static const textString146:String = textString117 + "15";
      
      public static const textString147:String = textString117 + "15" + textString118;
      
      public static const textString148:String = textString117 + "16";
      
      public static const textString149:String = textString117 + "16" + textString118;
      
      public static const textString150:String = "spGame";
      
      public static const textString151:String = textString150 + "1";
      
      public static const textString152:String = "newsAliensSencondPart";
      
      public static const textString153:String = "gameTutorial";
      
      public static const textString154:String = "ringTutorial";
      
      public static const textString155:String = "coconutTutorial";
      
      public static const textString156:String = "shurikenTutorial";
      
      public static const textString157:String = "lianasTutorial";
      
      private static const textString158:String = "dswmedia/Sound/Music/";
      
      private static const textString159:String = "dswmedia/Sound/Effect/";
      
      public static const textString160:String = "sound01";
      
      public static const textString161:String = "sound02";
      
      private var _items:Dictionary;
      
      private var _lr7474:Dictionary;
      
      public function AssetLoader()
      {
         var count2:String = null;
         this._items = new Dictionary();
         this._lr7474 = new Dictionary();
         super();
         this.addItem(textString,"dswmedia/chooseScene/fichas/","fichaPromocionMascotas.swf",count,true);
         this.addItem(textString1,"dswmedia/chooseScene/fichas/","fichaPromocion.swf",count,true);
         this.addItem(textString2,"dswmedia/chooseScene/fichas/","fichaTelefonoCancelado.swf",count,true);
         this.addItem(textString3,"dswmedia/chooseScene/fichas/","fichaCambioTelEspFijo.swf",count,true);
         this.addItem(textString4,"dswmedia/chooseScene/fichas/","fichaCambioTelMexico.swf",count,true);
         this.addItem(textString5,"dswmedia/chooseScene/fichas/","fichaBienvenido.swf",count,true);
         this.addItem(textString6,"dswmedia/chooseScene/fichas/","fichaPrepagos.swf",count,true);
         this.addItem(textString7,"dswmedia/chooseScene/fichas/","fichaMarketingViral.swf",count,true);
         this.addItem(textString8,"dswmedia/chooseScene/fichas/","fichaTips.swf",count,true);
         this.addItem(textString9,"dswmedia/chooseScene/fichas/","fichaBaneo.swf",count,true);
         this.addItem(textString10,"dswmedia/banners/","bannerCheetos2.swf",count,false);
         this.addItem(textString11,"dswmedia/banners/","videochat.swf",count,false);
         this.addItem(textString12,"dswmedia/chooseScene/fichas/","fichaBajaPreciosEnero.swf",count,true);
         this.addItem(textString13,"dswmedia/chooseScene/fichas/","fichaRebajasEnero.swf",count,true);
         this.addItem(textString14,"dswmedia/chooseScene/fichas/","fichaNuevaTips.swf",count,true);
         this.addItem(textString15,"dswmedia/chooseScene/fichas/","fichaCajitaSanValentin.swf",count,true);
         this.addItem(textString16,"dswmedia/banners/","colacao_300x250.swf",count,true);
         this.addItem(textString17,"dswmedia/banners/","400x400_PSU.swf",count,true);
         this.addItem(textString18,"dswmedia/chooseScene/fichas/","fichaRegistroRegaloCienCreditos.swf",count,true);
         this.addItem(textString29,"dswmedia/chooseScene/fichas/","fichaRecuperarCuenta.swf",count,true);
         this.addItem(textString19,"dswmedia/chooseScene/fichas/","fichaRegalosHalloween.swf",count,true);
         this.addItem(textString20,"dswmedia/chooseScene/fichas/","fichaLlavesHalloween.swf",count,true);
         this.addItem(textString21,"dswmedia/chooseScene/fichas/","fichaObjetosHalloween.swf",count,true);
         this.addItem(textString22,"dswmedia/chooseScene/fichas/","fichaPocionesHalloween.swf",count,true);
         this.addItem(textString23,"dswmedia/chooseScene/fichas/","fichaAloPass.swf",count,true);
         this.addItem(textString24,"dswmedia/chooseScene/fichas/","fichaConcursoFacebook.swf",count,true);
         this.addItem(textString25,"dswmedia/chooseScene/fichas/","fichaPromoNavidadArgentina.swf",count,true);
         this.addItem(textString26,"dswmedia/chooseScene/fichas/","fichaPromoNavidadVenezuela.swf",count,true);
         this.addItem(textString27,"dswmedia/chooseScene/fichas/","fichaPromoNavidadMexico.swf",count,true);
         this.addItem(textString28,"dswmedia/chooseScene/fichas/","fichaUnderAgeCreation.swf",count,true);
         this.addItem(textString32,"dswmedia/member/","FichaMember.swf",count,true);
         this.addItem(textString30,"dswmedia/interfaz/","fichaGuest.swf",count,true);
         this.addItem(textString31,"dswmedia/interfaz/","fichaFinGuest.swf",count,true);
         this.addItem(textString33,"dswmedia/noticias/","FichaNoticias.swf",count,true);
         this.addItem(textString34,"dswmedia/chooseScene/skinNavidad/","backGroundNavidad.swf",count,true);
         this.addItem(textString35,"dswmedia/chooseScene/skinNavidad/","foreGroundNavidad.swf",count,true);
         this.addItem(textString36,"dswmedia/chooseScene/skinNavidad/","marikitaNavidad.swf",count,true);
         this.addItem(textString37,"dswmedia/chooseScene/skinNavidad/","florNavidad.swf",count,true);
         this.addItem(textString38,"dswmedia/chooseScene/fichas/","fichaDialogoBicho.swf",count,true);
         this.addItem(textString39,"dswmedia/chooseScene/","barraInferior.swf",count,true);
         this.addItem(textString40,"dswmedia/chooseScene/skinNavidad/","cajaRegaloNavidad.swf",count,true);
         this.addItem(textString41,"dswmedia/chooseScene/","concursosFP.swf",count,true);
         this.addItem(textString42,"dswmedia/chooseScene/skinSanValentin2010/","cajaRegaloSV.swf",count,true);
         this.addItem(textString43,"dswmedia/chooseScene/skinSanValentin2010/","backGroundSV.swf",count,true);
         this.addItem(textString44,"dswmedia/chooseScene/skinSanValentin2010/","foreGroundSV.swf",count,true);
         this.addItem(textString45,"dswmedia/chooseScene/skinSanValentin2010/","marikitaSV.swf",count,true);
         this.addItem(textString46,"dswmedia/chooseScene/skinSanValentin2010/","florSV.swf",count,true);
         this.addItem(textString47,"dswmedia/chooseScene/skinPascuas2010/","florPascuas.swf",count,true);
         this.addItem(textString48,"dswmedia/chooseScene/skinPascuas2010/","cajaRegaloPascuas.swf",count,true);
         this.addItem(textString49,"dswmedia/chooseScene/skinHalloween/","cajaRegaloHalloween.swf",count,true);
         this.addItem(textString50,"dswmedia/chooseScene/skinHalloween/","backGroundHalloween.swf",count,true);
         this.addItem(textString51,"dswmedia/chooseScene/skinHalloween/","foreGroundHalloween.swf",count,true);
         this.addItem(textString52,"dswmedia/chooseScene/skinHalloween/","marikitaHalloween.swf",count,true);
         this.addItem(textString53,"dswmedia/chooseScene/skinHalloween/","florHalloween.swf",count,true);
         this.addItem(textString54,"dswmedia/chooseScene/fichas/","fichaRegaloNavidadPrepago.swf",count,true);
         this.addItem(textString57,"dswmedia/chooseScene/skinNormal/","cajaRegalo.swf",count,true);
         this.addItem(textString58,"dswmedia/chooseScene/skinNormal/","marikita.swf",count,true);
         this.addItem(textString59,"dswmedia/chooseScene/skinNormal/","foreGround.swf",count,true);
         this.addItem(textString60,"dswmedia/chooseScene/skinNormal/","backGround.swf",count,true);
         this.addItem(textString61,"dswmedia/chooseScene/skinNormal/","flor.swf",count,true);
         this.addItem(textString70,"dswmedia/chooseScene/skinDragones/","cajaRegalo.swf",count,true);
         this.addItem(textString71,"dswmedia/chooseScene/skinDragones/","marikita.swf",count,true);
         this.addItem(textString72,"dswmedia/chooseScene/skinDragones/","foreGround.swf",count,true);
         this.addItem(textString73,"dswmedia/chooseScene/skinDragones/","backGround.swf",count,true);
         this.addItem(textString74,"dswmedia/chooseScene/skinDragones/","flor.swf",count,true);
         this.addItem(textString62,"dswmedia/chooseScene/skinHielo/","foreGroundHielo.swf",count,true);
         this.addItem(textString63,"dswmedia/chooseScene/skinHielo/","backGroundHielo.swf",count,true);
         this.addItem(textString64,"dswmedia/chooseScene/skinHielo/","florHielo.swf",count,true);
         this.addItem(textString55,"dswmedia/chooseScene/skinAliens2011/","background_aliens.swf",count,true);
         this.addItem(textString56,"dswmedia/chooseScene/skinMeteor2011/","background_meteor.swf",count,true);
         switch(Configuration.urlString9)
         {
            case Configuration.urlString4:
               this.addItem(textString65,"dswmedia/logos/","logoBB.swf",count,false);
               break;
            case Configuration.urlString5:
               this.addItem(textString65,"dswmedia/logos/","logoBBCl.swf",count,false);
               break;
            case Configuration.urlString7:
               this.addItem(textString65,"dswmedia/logos/","logoBBTv.swf",count,false);
               break;
            case Configuration.urlString6:
               this.addItem(textString65,"dswmedia/logos/","logoBBTv.swf",count,false);
         }
         this.addItem(textString75,"dswmedia/validacion/","BoomBangSO.swf",count,false);
         this.addItem(textString66,"dswmedia/debug/","fichaBug.swf",count,false);
         this.addItem(textString67,"dswmedia/debug/","consolaMultiuser.swf",count,false);
         this.addItem(textString69,"dswmedia/font/","LoaderKekos.swf",count,false);
         this.addItem(textString79,"dswmedia/login/hada/","hada.swf",count,false);
         this.addItem(textString80,"dswmedia/objetos/",LoginEvents._cy6676,count,false);
         this.addItem(textString77,"dswmedia/login/yingoKite/","yingoKiteLogin.swf",count,false);
         this.addItem(textString78,"dswmedia/interfaz/","tomarFoto.swf",count,false);
         this.addItem(textString101,"dswmedia/choosePerson/","choosePerson.swf",count,false);
         this.addItem(textString81,"dswmedia/isla/","islaSelect.swf",count,false);
         this.addItem(textString82,"dswmedia/isla/","creaLocalization.swf",count,false);
         this.addItem(textString84,"dswmedia/isla/","isla1.swf",count,true);
         this.addItem(textString85,"dswmedia/isla/","isla2.swf",count,true);
         this.addItem(textString86,"dswmedia/isla/","isla3.swf",count,true);
         this.addItem(textString87,"dswmedia/isla/","isla4.swf",count,true);
         this.addItem(textString88,"dswmedia/isla/","isla5.swf",count,true);
         this.addItem(textString89,"dswmedia/isla/","islaCheetos.swf",count,true);
         this.addItem(textString90,"dswmedia/isla/","islaPsu.swf",count,true);
         this.addItem(textString91,"dswmedia/isla/","personisla.swf",count,true);
         this.addItem(textString92,"dswmedia/pociones/","ManagerPociones.swf",count,true);
         this.addItem(textString93,"dswmedia/interfaz/","previewObjects.swf",count,true);
         this.addItem(textString95,"dswmedia/interfaz/","fichaAvatar.swf",count,true);
         this.addItem(textString96,"dswmedia/interfaz/baseChat/","baseChat.swf",count,true);
         this.addItem(textString94,"dswmedia/interfaz/brujula/","brujula.swf",count,true);
         this.addItem(textString97,"dswmedia/interfaz/","intercambios_001.swf",count,true);
         this.addItem(textString98,"dswmedia/interfaz/","compraObjetos_001.swf",count,true);
         this.addItem(textString100,"dswmedia/interfaz/","editObject.swf",count,true);
         this.addItem(textString99,"dswmedia/interfaz/","mochila_001.swf",count,true);
         this.addItem(textString102,"dswmedia/interfaz/","editSkin.swf",count,true);
         this.addItem(textString106,"dswmedia/cards/","cardNPC.swf",count,true);
         this.addItem(textString107,"dswmedia/plantas/","FichaDatosPlanta.swf",count,true);
         this.addItem(textString108,"dswmedia/plantas/","Regadera.swf",count,true);
         this.addItem(textString109,"dswmedia/plantas/","CuadroTexto.swf",count,true);
         this.addItem(textString110,"dswmedia/concursos/","concursos.swf",count,true);
         this.addItem(textString112,"dswmedia/banners/","",count,false);
         this.addItem(textString111,"dswmedia/banners/","bannersLoading.swf",count,true);
         this.addItem(textString103,"dswmedia/banners/","bannerPerrosGatos.swf",count,true);
         this.addItem(textString104,"dswmedia/interfaz/","interfazLlaves.swf",count,true);
         this.addItem(textString105,"dswmedia/interfaz/","SoundInterfaz.swf",count,true);
         var count:int = 1;
         while(count <= count2)
         {
            this.addItem(textString113 + count,"dswmedia/escenarios/publicos/","escenario" + count + ".swf",count,false);
            this.addItem(textString113 + count + textString114,"dswmedia/escenarios/publicos/","escenario" + count + ".xml",count1,false);
            count++;
         }
         var count3:int = 1;
         while(count3 <= count3)
         {
            if(count3 < 10)
            {
               count2 = "privado0";
            }
            else
            {
               count2 = "privado";
            }
            this.addItem(textString115 + count3,"dswmedia/escenarios/privados/",count2 + count3 + ".swf",count,false);
            this.addItem(textString115 + count3 + textString116,"dswmedia/escenarios/privados/",count2 + count3 + ".xml",count1,false);
            count3++;
         }
         this.addItem(textString120,"dswmedia/mGames/","mGame1.swf",count,false);
         this.addItem(textString121,"dswmedia/mGames/","mGame1.xml",count1,false);
         this.addItem(textString122,"dswmedia/mGames/","mGame2.swf",count,false);
         this.addItem(textString123,"dswmedia/mGames/","mGame2.xml",count1,false);
         this.addItem(textString124,"dswmedia/mGames/","mGame3.swf",count,false);
         this.addItem(textString125,"dswmedia/mGames/","mGame3.xml",count1,false);
         this.addItem(textString126,"dswmedia/mGames/","mGame5.swf",count,false);
         this.addItem(textString127,"dswmedia/mGames/","mGame5.xml",count1,false);
         this.addItem(textString128,"dswmedia/mGames/","mGame6.swf",count,false);
         this.addItem(textString129,"dswmedia/mGames/","mGame6.xml",count1,false);
         this.addItem(textString130,"dswmedia/mGames/","mGame7.swf",count,false);
         this.addItem(textString131,"dswmedia/mGames/","mGame7.xml",count1,false);
         this.addItem(textString132,"dswmedia/mGames/","mGame8.swf",count,false);
         this.addItem(textString133,"dswmedia/mGames/","mGame8.xml",count1,false);
         this.addItem(textString134,"dswmedia/mGames/","mGame9.swf",count,false);
         this.addItem(textString135,"dswmedia/mGames/","mGame9.xml",count1,false);
         this.addItem(textString136,"dswmedia/mGames/","mGame10.swf",count,false);
         this.addItem(textString137,"dswmedia/mGames/","mGame10.xml",count1,false);
         this.addItem(textString138,"dswmedia/mGames/","mGame11.swf",count,false);
         this.addItem(textString139,"dswmedia/mGames/","mGame11.xml",count1,false);
         this.addItem(textString140,"dswmedia/mGames/","mGame12.swf",count,false);
         this.addItem(textString141,"dswmedia/mGames/","mGame12.xml",count1,false);
         this.addItem(textString142,"dswmedia/mGames/","mGame13.swf",count,false);
         this.addItem(textString143,"dswmedia/mGames/","mGame13.xml",count1,false);
         this.addItem(textString144,"dswmedia/mGames/","mGame14.swf",count,false);
         this.addItem(textString145,"dswmedia/mGames/","mGame14.xml",count1,false);
         this.addItem(textString146,"dswmedia/mGames/","mGame15.swf",count,false);
         this.addItem(textString147,"dswmedia/mGames/","mGame15.xml",count1,false);
         this.addItem(textString148,"dswmedia/mGames/","mGame16.swf",count,false);
         this.addItem(textString149,"dswmedia/mGames/","mGame16.xml",count1,false);
         this.addItem(textString151,"dswmedia/sGames/","sGame1.swf",count,false);
         this.addItem(textString153,"dswmedia/popup/tutorials/","gameTutorial.swf",count,false);
         this.addItem(textString154,"dswmedia/popup/tutorials/","ringTutorial.swf",count,false);
         this.addItem(textString155,"dswmedia/popup/tutorials/","coconutTutorial.swf",count,false);
         this.addItem(textString156,"dswmedia/popup/tutorials/","shurikenTutorial.swf",count,false);
         this.addItem(textString157,"dswmedia/popup/tutorials/","lianasTutorial.swf",count,false);
      }
      
      protected function addItem(param1:String, param2:String, param3:String, param4:int, param5:Boolean) : void
      {
         if(this._items[param1] != null)
         {
            Logger.getInstance()._kp3815(new Logs(Logger.count,"LoaderPackage.addItem","duplicate name in items list: " + param1));
         }
         this._items[param1] = new LoadersManager(param1,param2,param3,param4,param5);
      }
      
      public function getItem(param1:String) : LoadersManager
      {
         return this._items[param1];
      }
      
      public function loadResource(param1:String, param2:String) : void
      {
         var count3:LoadersManager = this._items[param1];
         count3.textString17 = param2;
      }
      
      public function loadResource1(param1:String, param2:String) : void
      {
         var count3:LoadersManager = this._items[param1];
         count3._en11768 = param2;
      }
      
      public function getString(param1:String) : String
      {
         var count:String = this._lr7474[param1.toUpperCase()];
         if(count == null)
         {
            return "";
         }
         return count;
      }
      
      public function loadResource2(param1:String) : void
      {
         var count:String = null;
         var count3:LoadersManager = null;
         var count1:Array = null;
         var count2:String = null;
         var count7:int = 0;
         var items:String = null;
         var count8:LoadersManager = null;
         var count6:Array = param1.split(";");
         for each(count in count6)
         {
            count1 = count.split(",");
            if(count1.length >= 2)
            {
               count2 = count1[0];
               count2 = count2.replace("\n","");
               count2 = count2.replace("\r","");
               count7 = int(count1[1]);
               items = "";
               if(count1.length >= 3)
               {
                  items = count1[2];
               }
               this._lr7474[count2.toUpperCase()] = items;
               for each(count8 in this._items)
               {
                  if(count8.textString17.toUpperCase() == count2.toUpperCase())
                  {
                     count8._qk3096 = count7;
                     count8._ef8064 = items;
                     break;
                  }
                  count8._qk3096 = 0;
                  count8._ef8064 = 0;
               }
            }
         }
         for each(count3 in this._items)
         {
            if(count3._qk3096 == 0)
            {
               Logger.getInstance()._kp3815(new Logs(Logger.count,"LoaderPackage.initFileSizesAndHash","missing size and hash for file = " + count3.textString17));
            }
         }
      }
   }
}

