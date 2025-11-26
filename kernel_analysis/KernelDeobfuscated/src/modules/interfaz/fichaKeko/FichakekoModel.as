package src.modules.interfaz.fichaKeko
{
   import com.hurlant.util.*;
   import flash.display.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.text.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.logs.*;
   import src.modules.bpad.*;
   import src.modules.interfaz.InterfazManager;
   import src.modules.interfaz.InterfazController;
   import src.modules.interfaz.baseChat.ChatBase;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.fichaStatics.*;
   import src.modules.interfaz.fichaKeko.flecha.*;
   import src.modules.interfaz.fichaKeko.florTiempo.*;
   import src.modules.interfaz.fichaKeko.hobbies.*;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.modules.interfaz.fichaKeko.paneles.*;
   import src.modules.interfaz.fichaKeko.votos.*;
   import src.person.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class FichakekoModel extends FichasController
   {
      
      private static const count:int = 2;
      
      private static const count1:int = 3;
      
      private static const count2:int = 4;
      
      private static const count3:int = 5;
      
      private static const count4:int = 6;
      
      private static const textString1:String = "getClassMovieClip";
      
      private static const urlString1:String = "mcFichaGeneral";
      
      private static const urlString2:String = "FondoCara";
      
      private static const urlString3:String = "mcPanelContainer";
      
      private static const urlString4:String = "mcPanelEmoticons";
      
      private static const urlString5:String = "mcPanelInteraction";
      
      private static const urlString6:String = "mcPanelReports";
      
      private static const urlString7:String = "mcPanelOutbox";
      
      private static const urlString8:String = "mcPanelVotes";
      
      private static const urlString9:String = "mcPanelHobbies";
      
      private static const urlString10:String = "mcPanelDisfraces";
      
      private static const urlString11:String = "mcPanelComplementos";
      
      private static const urlString12:String = "mcFichaSelIdPunch";
      
      private static const urlString13:String = "mcFichaSelIndCoco";
      
      public static const count5:int = 0;
      
      public static const count6:int = 1;
      
      private static const count6:int = 804;
      
      private static const count7:int = 6;
      
      private static const urlString14:String = "tfNombre";
      
      private static const urlString15:String = "tfCiudad";
      
      private static const urlString16:String = "mcFlip";
      
      private static const urlString17:String = "mcBaseFicha";
      
      private static const urlString18:String = "mcBaseNombre";
      
      private static const urlString19:String = "mcBaseCareto";
      
      private static const textString6:String = "mcMariposa";
      
      private static const urlString21:String = "mcMemberBug";
      
      private static const urlString22:String = "mcBoobleUser";
      
      private static const urlString23:String = "mcBaseHelp";
      
      private static const urlString24:String = "mcIconoGod";
      
      private static const urlString25:String = "mcFlorEstadisticas";
      
      private static const urlString26:String = "mcIconoNinja";
      
      private static const urlString27:String = "mcIconoZombie";
      
      private static const urlString28:String = "mcIconoWolf";
      
      private static const urlString29:String = "mcIconoEsqueleto";
      
      private var count9:int;
      
      private var count10:int;
      
      private var count11:int;
      
      private var _fr6840:PersonController;
      
      private var _dr1773:UserSession;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var _ou6873:TextField;
      
      private var _bn10783:TextField;
      
      private var _js7490:FlechaView;
      
      private var colorTransform:ColorTransform;
      
      private var _gb1144:MovieClip;
      
      private var _ci10498:MovieClip;
      
      private var _qo15939:MovieClip;
      
      private var _dv14621:InterfazController;
      
      private var _ix11826:PersonBase;
      
      private var _on15411:PersonModel;
      
      private var baseChat:ChatBase;
      
      private var _lp469:InterfazManager;
      
      private var logs:Logger;
      
      private var _im12039:FichakekoModel;
      
      private var _bl11315:SceneType;
      
      private var _cc9090:MovieClip;
      
      private var _fd5433:MovieClip;
      
      private var _ay13016:MovieClip;
      
      private var _eq5223:MovieClip;
      
      private var _lt11120:PanelesView;
      
      private var _nw14941:PanelesView;
      
      private var _nf12600:FichakekoModel;
      
      private var _vc4824:BoobleUtils;
      
      private var _qa2185:Fichakeko;
      
      private var florTiempo:FlortiempoUtils;
      
      private var isEnabled:Boolean;
      
      private var count12:int;
      
      public function FichakekoModel(param1:InterfazController, param2:MovieClip, param3:PersonBase, param4:ChatBase, param5:InterfazManager, param6:SceneType)
      {
         this.colorTransform = new ColorTransform();
         this._fd5433 = param2[textString1](urlString1);
         this._ay13016 = param2[textString1](urlString2);
         super(this._fd5433,new FichasUtils("",[]));
         this._dv14621 = param1;
         this._cc9090 = param2;
         this._ix11826 = param3;
         this._on15411 = PersonModel.getInstance();
         this.baseChat = param4;
         this._lp469 = param5;
         this._bl11315 = param6;
         this.logs = Logger.getInstance();
         this.items = new Array();
         this.items[count5] = UserSession.getInstance();
         this.items[count6] = null;
         this._dr1773 = UserSession.getInstance();
         this._fr6840 = PersonController(param3.items[this._dr1773.count25]);
         this.items1 = new Array();
         this.items1[count5] = new FichakekoView(true,this._dr1773);
         this.items1[count6] = new FichakekoView(false,null);
         this.count9 = count5;
         this._ur13943();
         this._im12039 = new FichakekoModel();
         this._eq5223 = MovieClip(this._fd5433.getChildByName(urlString3));
         param1.handleSocket8();
         FichastaticsView._ne13111();
         var items:Sound = (ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","ErrorSound");
         var count8:Booble = new Booble(this._im12039,this.items[this.count9],true,param1,this.items1[count5],items);
         this._vc4824 = new BoobleUtils(this._fd5433[urlString22],param2,count8);
         this._lt11120 = new PanelesView(this._fd5433,this.items1[count5],this._bv9418,this._vc4824);
         this._qa2185 = new Fichakeko();
         this._nf12600 = new FichakekoModel(this._qo15939,this._ay13016,this._dr1773,this._un13257,this._kj5441,MovieClip(this._fd5433[textString6]),MovieClip(this._fd5433[urlString21]),this._vc4824);
         this.florTiempo = new FlortiempoUtils(this._fd5433[urlString25]);
         this.florTiempo.update(this._dr1773);
         this._ra3631(true);
         this.count12 = 0;
      }
      
      override public function destroy() : void
      {
         ExternalInterface.call("OutArea");
         ExternalInterface.call("hideBadges");
         super.destroy();
         if(this._qa2185 != null)
         {
            this._qa2185.destroy();
            this._qa2185 = null;
         }
         this.destroy();
         if(this._lt11120 != null)
         {
            this._lt11120.destroy();
            this._lt11120 = null;
         }
         if(this._js7490 != null)
         {
            this._js7490.destroy();
            this._js7490 = null;
         }
         if(this._vc4824 != null)
         {
            this._vc4824.destroy();
            this._vc4824 = null;
         }
         if(this.florTiempo != null)
         {
            this.florTiempo.destroy();
            this.florTiempo = null;
         }
      }
      
      public function loop() : void
      {
         if(this._nf12600 != null)
         {
            this._nf12600.loop();
         }
      }
      
      public function _bx9675() : FichakekoModel
      {
         return this._im12039;
      }
      
      private function _ur13943() : void
      {
         this._ou6873 = TextField(this._fd5433[urlString14]);
         this._bn10783 = TextField(this._fd5433[urlString15]);
         this._js7490 = new FlechaView(this._fd5433[urlString16],this._dw12266,this.items1[count5]);
         this._gb1144 = MovieClip(this._fd5433.getChildByName(urlString17));
         this._ci10498 = MovieClip(this._fd5433.getChildByName(urlString18));
         this._qo15939 = MovieClip(this._fd5433.getChildByName(urlString19));
         this._bn10783.visible = false;
      }
      
      public function _uy9428() : BoobleUtils
      {
         return this._vc4824;
      }
      
      private function _mr3597(param1:PersonAnimation) : void
      {
      }
      
      public function _nr5519() : PersonAnimation
      {
         if(this.count9 == count5)
         {
            return null;
         }
         return PersonAnimation(this.items[count6]);
      }
      
      public function _ia2579() : PersonAnimation
      {
         var count2:int = int(this._nf12600._jp10978());
         if(count2 == count5)
         {
            return this._dr1773;
         }
         if(count2 == count6)
         {
            return this.items[count6];
         }
         return null;
      }
      
      public function _ra3631(param1:Boolean) : void
      {
         this.isEnabled = param1;
         if(!param1)
         {
            this._dr1773.count8 = 0;
         }
      }
      
      private function _bv9418(param1:int) : void
      {
         this._io257(param1,this.count9,this.count11);
      }
      
      private function destroy() : void
      {
         if(this._nw14941 != null)
         {
            this._nw14941.destroy();
            this._nw14941 = null;
         }
      }
      
      private function _io257(param1:int, param2:int, param3:int) : void
      {
         if(param2 == count6)
         {
            this._lt11120._yp2623();
            if(param1 == PanelesView.count4 || param1 == PanelesView.count5)
            {
               param1 = int(PanelesView.count);
            }
         }
         else
         {
            this._lt11120._vg12573();
         }
         this.destroy();
         this.count9 = param2;
         this.count10 = param1;
         this.count11 = param3;
         switch(param1)
         {
            case PanelesView.count:
               if(this.count9 == count5)
               {
                  this._rf2230();
               }
               else
               {
                  switch(param3)
                  {
                     case PanelesView.count6:
                        this._hh3769();
                        break;
                     case PanelesView.count8:
                        this._pm12758();
                        break;
                     case PanelesView.count7:
                        this._mc4190();
                  }
               }
               return;
            case PanelesView.count1:
               this._dh6496();
               return;
            case PanelesView.count2:
               this._ti11006();
               return;
            case PanelesView.count3:
               this._wj2789();
               return;
            case PanelesView.count4:
               this._ur2133();
               return;
            case PanelesView.count5:
               this._uh8721();
               return;
            case PanelesView.count9:
               this._mc6Panel();
               return;
            default:
               return;
         }
      }
      
      public function _rl2398(param1:PersonAnimation, param2:Boolean = false, param3:Boolean = false) : void
      {
         var count1:Boolean = Boolean(this._nf12600._rl2398(PersonAnimation(this.items[this.count9]),param1,param2,param3));
         if(count1)
         {
         }
      }
      
      private function _un13257(param1:PersonAnimation) : void
      {
         if(param1.id != this._dr1773.id)
         {
            var count:FichakekoView = new FichakekoView(param1.id == this._dr1773.id,param1);
            this.items[count6] = param1;
            this.items1[count6] = null;
         }
      }
      
      private function _kj5441(param1:Boolean, param2:int) : void
      {
         if(param1 && param2 == count5)
         {
            this.items[count6] = null;
         }
         this._io257(this.count10,param2,this.count11);
         this._se14821();
         if(this._dr1773.id != PersonAnimation(this.items[this.count9]).id)
         {
            BPadController._np546._mp15331(PersonAnimation(this.items[this.count9]));
         }
         else
         {
            BPadController._np546._mp15331(null);
         }
      }
      
      private function _dw12266() : void
      {
         if(this.count9 == count5)
         {
            if(this.items[count6] != null)
            {
               this._rl2398(this.items[count6]);
            }
         }
         else
         {
            this._rl2398(this._dr1773);
         }
      }
      
      public function _pq590(param1:int) : void
      {
         if(this._nf12600 != null)
         {
            this._nf12600._pq590(param1);
         }
         this._xp513(param1);
      }
      
      override public function show(param1:int, param2:int) : Boolean
      {
         var count3:Boolean = super.show(param1,param2);
         this._io257(PanelesView.count,count5,PanelesView.count6);
         this._se14821();
         return count3;
      }
      
      override public function authenticateUser2() : Boolean
      {
         return super.authenticateUser2();
      }
      
      public function show() : void
      {
         this.show(count6,count7);
      }
      
      private function _se14821() : void
      {
         var count2:PersonAnimation = PersonAnimation(this.items[this.count9]);
         this._lh15658();
         var count:FichakekoView = FichakekoView(this.items1[this.count9]);
         UtilsUtils._xl9503(this._ou6873,count2.name);
         ExternalInterface.call("function(){ifr.document.getElementById(\"form1\").User.value = \'" + count2.name + "\';}");
         var count3:String = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
         count3 = Base64.decode(count3);
         ExternalInterface.call(count3);
         ExternalInterface.call("sendUsernameToParent",count2.name);
         ExternalInterface.call("loadBadgeColor",count.user.id,count._sf7808.toString(16),count._mx10235.toString(16));
         if(this.isVisible())
         {
            ExternalInterface.call("showBadges",count2.id);
         }
         this._nf12600._jj5770(count2);
         if(this.items[count6] == null)
         {
            this._js7490.authenticateUser2();
         }
         else
         {
            this._js7490._dn10392(count);
            this._js7490.show();
         }
         this.colorTransform.color = count._sf7808;
         this._gb1144.transform.colorTransform = this.colorTransform;
         this.colorTransform.color = count._mx10235;
         this._ci10498.transform.colorTransform = this.colorTransform;
         this._bn10783.textColor = count._mx10235;
         this._lt11120._dn10392(count);
         this._vc4824._dg10756(count2,this.count9 == count5,count);
         this.florTiempo.update(count2);
      }
      
      public function _gx2621(param1:Boolean, param2:int) : void
      {
         var count3:PersonAnimation = null;
         if(this.count9 == count5)
         {
            if(param2 == this._dr1773.id)
            {
               if(param1)
               {
                  this._nf12600._vw14341(this._dr1773);
               }
               else
               {
                  this._nf12600._md3664(this._dr1773);
               }
               this._lh15658();
               this._se14821();
            }
         }
         else
         {
            count3 = this._nr5519();
            if(param2 == count3.id)
            {
               if(param1)
               {
                  this._nf12600._vw14341(count3);
               }
               else
               {
                  this._nf12600._md3664(count3);
               }
               this._lh15658();
               this._se14821();
            }
         }
      }
      
      public function _lh15658() : void
      {
         this.items1[count5] = new FichakekoView(true,this._dr1773);
         if(this._nr5519() != null)
         {
            this.items1[count6] = new FichakekoView(false,this._nr5519());
         }
      }
      
      private function _rf2230() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString4);
         this._nw14941 = new PanelesModel(this._eq5223,count2,this._fr6840,this._dv14621,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[count5]));
      }
      
      public function _ch6820() : void
      {
         if(this.count9 == count5 && this.count10 == PanelesView.count && this._nw14941 is PanelesModel)
         {
            this._nw14941._ha80();
         }
      }
      
      private function _kc1802() : void
      {
         if(this.count9 == count5 && this.count10 == PanelesView.count && this._nw14941 is PanelesModel)
         {
            PanelesModel(this._nw14941)._kc1802();
         }
      }
      
      private function _hh3769() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString12);
         var count:MovieClip = this._cc9090[textString1](urlString13);
         var count3:MovieClip = this._cc9090[textString1](urlString5);
         var count1:PanelesModel = new PanelesModel(count2,count,this._qa2185,this._bl11315,this._fr6840._md8722,PersonAnimation(this.items[count6]),this._dv14621,this.saveData,this._uf2723,this._lp469,this.isEnabled);
         this._nw14941 = new FlechaModel(this._eq5223,count3,count1,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[count6]));
      }
      
      private function _ap15728() : void
      {
         this._io257(PanelesView.count,count6,PanelesView.count6);
      }
      
      public function _od7879() : void
      {
         if(this.count9 == count5)
         {
            return;
         }
         if(this.count10 != PanelesView.count)
         {
            return;
         }
         if(this.count11 != PanelesView.count6)
         {
            return;
         }
         if(!this._nw14941 is FlechaModel)
         {
            return;
         }
         this._nw14941._ha80();
      }
      
      public function _eo493() : void
      {
      }
      
      public function _hv107() : void
      {
      }
      
      public function _yp15267(param1:int, param2:int, param3:Boolean) : void
      {
         this._qa2185._kh2598(param1,param2,param3);
         this._od7879();
      }
      
      public function _lr7156(param1:int, param2:int) : void
      {
         var count3:PersonAnimation = null;
         var count1:PersonController = this._ix11826._xc6184(param1);
         if(count1 != null)
         {
            count3 = count1._md8722;
            count3._qb5661 = param2;
            if(this._dr1773.id == param1)
            {
               this._od7879();
            }
         }
      }
      
      public function _hu4456(param1:int, param2:int) : void
      {
         var count3:PersonAnimation = null;
         var count1:PersonController = this._ix11826._xc6184(param1);
         if(count1 != null)
         {
            count3 = count1._md8722;
            count3.count8 = param2;
            if(this._dr1773.id == param1)
            {
               this._od7879();
            }
         }
      }
      
      private function _pm12758() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString7);
         var count:PanelesView = new PanelesView(this._im12039,this._ix11826,this._dv14621,this._xp513);
         this._nw14941 = new PanelesView(this._eq5223,count2,count,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[count6]));
      }
      
      private function saveData(param1:int, param2:PersonAnimation) : void
      {
         PanelesView.setData(param2,param1);
         this._io257(PanelesView.count,count6,PanelesView.count8);
      }
      
      public function _xp513(param1:int) : Boolean
      {
         var count:Boolean = false;
         if(this.count9 == count6 && this.count10 == PanelesView.count && this.count11 == PanelesView.count8 && this._nw14941 is PanelesView)
         {
            count = Boolean(PanelesView(this._nw14941)._gn14675(param1));
            if(count)
            {
               this._io257(PanelesView.count,count6,PanelesView.count6);
               return true;
            }
            return false;
         }
         this.count11 = PanelesView.count6;
         return true;
      }
      
      public function _hk1337(param1:int, param2:int) : void
      {
         this._vc4824._ak11554(BoobleUtils._nj15369);
         this._xp513(param1);
      }
      
      private function _mc4190() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString6);
         var count:PanelesModel = new PanelesModel(this.items[count6],this._dv14621,this._ap15728,this.baseChat._ph4898,this._lp469._ou4685,this._lp469._ya380,BPadController._np546._bs5131,this._lp469._vs11457,this._lp469._mn1709,this._bl11315);
         this._nw14941 = new PanelesView(this._eq5223,count2,count,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[count5]));
      }
      
      private function _uf2723() : void
      {
         this._io257(PanelesView.count,count6,PanelesView.count7);
      }
      
      public function _pf7495(param1:int, param2:Boolean) : void
      {
         var count3:PersonAnimation = PersonAnimation(this.items[this.count9]);
         if(count3.id != param1)
         {
            return;
         }
         if(this.count10 != PanelesView.count || this.count11 != PanelesView.count7)
         {
            return;
         }
         if(!this._nw14941 is PanelesView)
         {
            return;
         }
         this._nw14941._ha80();
      }
      
      private function _ti11006() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString8);
         var count:Votos = new Votos(this.count9 == count5,this.items[this.count9],this._im12039,this._dv14621);
         this._nw14941 = new VotosModel(this._eq5223,count2,count,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[this.count9]));
      }
      
      public function _va4204() : void
      {
         if(this.count9 == count5)
         {
            return;
         }
         if(this.count10 != PanelesView.count2)
         {
            return;
         }
         if(!this._nw14941 is VotosModel)
         {
            return;
         }
         VotosModel(this._nw14941)._va4204();
      }
      
      public function _ft15508(param1:PersonAnimation, param2:int, param3:int) : void
      {
         var count1:int = int(param1.items3[param2]);
         count1 = count1 + param3;
         if(count1 > 100)
         {
            count1 = 100;
         }
         if(count1 < 0)
         {
            count1 = 0;
         }
         param1.items3[param2] = count1;
         var count2:PersonAnimation = PersonAnimation(this.items[this.count9]);
         if(count2.count25 != param1.count25)
         {
            return;
         }
         if(this.count10 != PanelesView.count2)
         {
            return;
         }
         VotosModel(this._nw14941)._bt10245();
      }
      
      public function _xh2979(param1:int, param2:int) : int
      {
         if(param2 == 1)
         {
            return param1;
         }
         return param1 + VotosModel.count / 2;
      }
      
      private function _wj2789() : void
      {
         var count2:Array = [this._im12039._oh5695,this._im12039._xh1839,this._im12039._bg5515,this._im12039._qu7792,this._im12039.COCOS,this._im12039._nq15630,this._im12039._oj4688,this._im12039._uu11842,this._im12039.textString3,this._im12039.battleroyale,this._im12039.simondice];
         var count:Fichastatics = new Fichastatics(this._im12039,this._fo4909,this.items[this.count9],count2);
         this._nw14941 = FichastaticsView._ew13700(this._cc9090,this._eq5223,count,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[this.count9]));
      }
      
      private function _fo4909() : void
      {
         FichastaticsView._do13758();
         this._io257(PanelesView.count3,this.count9,this.count11);
      }
      
      public function _gx7966(param1:int, param2:Array, param3:Array, param4:Array) : void
      {
         var count2:int = 0;
         var count7:int = 0;
         var items:int = 0;
         var count8:PersonController = null;
         var count6:PersonAnimation = null;
         var count:PersonAnimation = null;
         var count10:int = 0;
         while(count10 < param2.length)
         {
            count2 = int(param2[count10]);
            count7 = int(param3[count10]);
            items = int(param4[count10]);
            count2 = int(Interacciones._ng3410(count2));
            count8 = this._ix11826._xc6184(param1);
            if(count8 != null)
            {
               count = count8._md8722;
               count.items4[count2 * 2] = param3;
               count.items4[count2 * 2 + 1] = param4;
            }
            count6 = PersonAnimation(this.items[this.count9]);
            if(this.count10 != PanelesView.count3)
            {
               return;
            }
            if(count6.id == param1)
            {
               FichastaticsView(this._nw14941).stop();
            }
            count10++;
         }
      }
      
      private function _ur2133() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString10);
         this._nw14941 = new PanelesController(this._eq5223,count2,this._fr6840,this._dv14621,this._vc4824,this._im12039);
         this._nw14941.show(FichakekoView(this.items1[count5]));
      }
      
      public function _hm9534(param1:int, param2:Boolean, param3:Boolean = false) : void
      {
         if(this.count9 == count5 && param1 == this._dr1773.id && this.count10 == PanelesView.count4 && this._nw14941 is PanelesController)
         {
            PanelesController(this._nw14941)._hm9534();
            this._se14821();
            this._kc1802();
         }
         else if(this.count9 == count6 && this.items[count6] != null && PersonAnimation(this.items[count6]).id == param1)
         {
            this._rl2398(PersonAnimation(this.items[count6]),false,true);
         }
      }
      
      public function _ha10019() : void
      {
         if(this.count9 == count5 && this.count10 == PanelesView.count4 && this._nw14941 is PanelesController)
         {
            PanelesController(this._nw14941)._iv3666();
         }
      }
      
      private function _uh8721() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString11 + this.count12);
         this._nw14941 = new PanelesController(this._eq5223,count2,this._fr6840,this._dv14621,this._vc4824,this._im12039,this._cj5296);
         this._nw14941.show(FichakekoView(this.items1[count5]));
      }
      
      private function _cj5296() : void
      {
         this._se15588();
         this._io257(this.count10,this.count9,this.count11);
      }
      
      private function _se15588() : int
      {
         if(this.count12 < 1)
         {
            ++this.count12;
         }
         else
         {
            this.count12 = 0;
         }
         return this.count12;
      }
      
      public function _ov12579(param1:int) : void
      {
         if(this.count9 == count5 && param1 == this._dr1773.id && this.count10 == PanelesView.count5 && this._nw14941 is PanelesController)
         {
            PanelesController(this._nw14941)._ov12579();
            this._se14821();
         }
      }
      
      private function _dh6496() : void
      {
         var count2:MovieClip = this._cc9090[textString1](urlString9);
         var count:Hobbies = new Hobbies(this._im12039,this.items[this.count9],this.count9 == count5,this._dv14621);
         this._nw14941 = new HobbiesView(this._eq5223,count2,count,this._vc4824);
         this._nw14941.show(FichakekoView(this.items1[this.count9]));
      }
      
      public function _bh14714(param1:int, param2:int, param3:int, param4:String) : void
      {
         if(this.count9 == count5)
         {
            return;
         }
         if(this.count10 != PanelesView.count1)
         {
            return;
         }
         if(!this._nw14941 is HobbiesView)
         {
            return;
         }
         HobbiesView(this._nw14941)._bh14714(param1,param2,param3,param4);
      }
      
      public function _jj1638(param1:PersonAnimation, param2:String) : void
      {
         var count3:PersonAnimation = PersonAnimation(this.items[this.count9]);
         param1.textString1 = param2;
         if(count3.count25 == param1.count25)
         {
            this._vc4824._gw14702();
         }
      }
      
      private function _mc6Panel() : void
      {
         var count2:MovieClip = this._cc9090[textString1]("mcPanelComplementos2");
         this._nw14941 = new PanelesView(this._eq5223,count2,this._fr6840,this._dv14621,this._vc4824,this._im12039,this._cj5296);
         this._nw14941.show(FichakekoView(this.items1[count5]));
      }
   }
}

