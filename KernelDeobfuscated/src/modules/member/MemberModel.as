package src.modules.member
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.logs.*;
   import src.modules.antitimos.LoginEvents;
   import src.modules.antitimos.fichas.*;
   import src.org.osflash.thunderbolt.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class MemberModel
   {
      
      public static const textString:String = "getMovieClip";
      
      public static const textString1:String = "mcFichaInicio_";
      
      public static const textString2:String = "mcFichaHazteSocio_";
      
      public static const textString3:String = "mcFichaEnhorabuena_";
      
      public static const textString4:String = "mcFichaNoCreditos_";
      
      public static const textString5:String = "mcFichaRenovar_";
      
      public static const textString6:String = "mcFichaRenovadoOk_";
      
      public static const textString7:String = "mcFichaErrorLimiteSobrepasado_";
      
      public static const count:int = -1;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 3;
      
      public static const count4:int = 4;
      
      public static const count5:int = 5;
      
      public static const count6:int = 6;
      
      public static const count7:int = 7;
      
      public static const count8:int = 8;
      
      private static const count9:int = 680;
      
      private static const count10:int = 8;
      
      private static const count11:int = 360;
      
      private static const count12:int = 8;
      
      private static const count13:int = 677;
      
      private static const count14:int = 8;
      
      private static const count15:int = 680;
      
      private static const count16:int = 8;
      
      private static const count17:int = 360;
      
      private static const count18:int = 8;
      
      private static const count19:int = 680;
      
      private static const count20:int = 8;
      
      private static const count21:int = 75;
      
      private static const count22:int = 8;
      
      private static const count23:int = 75;
      
      private static const count24:int = 8;
      
      private static const count25:int = 75;
      
      private static const count26:int = 8;
      
      private static const count27:int = 75;
      
      private static const count28:int = 8;
      
      private static const count29:int = 75;
      
      private static const count30:int = 8;
      
      private static const count31:int = 75;
      
      private static const count32:int = 8;
      
      private static const count33:int = 1;
      
      private static const count34:int = 2;
      
      private static const count35:int = 3;
      
      private static const count36:int = 1;
      
      private static const count37:int = 0;
      
      private static const count38:int = -1;
      
      private static const textString8:String = "tfMember";
      
      private static const textString9:String = "tfCreditos";
      
      private var _jr8898:MovieClip;
      
      private var textString3:int = -1;
      
      private var logs:Logger;
      
      private var textString10:String;
      
      private var count40:int;
      
      private var _qh1795:Function;
      
      private var _mb398:FichasController;
      
      private var count18:int;
      
      private var count19:int;
      
      private var _im12039:MemberModel;
      
      private var _hd13280:LoginEvents;
      
      private var isEnabled:Boolean;
      
      private var _xh7232:MemberController;
      
      private var _xe10392:MemberController;
      
      private var _ho10593:Function;
      
      private var textString11:String;
      
      private var textString12:String;
      
      public function MemberModel(param1:MovieClip, param2:Function, param3:Boolean, param4:MemberController, param5:Function)
      {
         super();
         this._jr8898 = param1;
         this._qh1795 = param2;
         this.isEnabled = param3;
         this.logs = Logger.getInstance();
         this._im12039 = new MemberModel();
         this._xh7232 = param4._hj11812();
         this._ho10593 = param5;
         this._xh7232.addEventListener(MemberEvents.textString3,this._ax10206);
      }
      
      public function get status() : int
      {
         return this.textString3;
      }
      
      public function destroy() : void
      {
         this.destroy();
         if(this._xh7232 != null)
         {
            this._xh7232.removeEventListener(MemberEvents.textString3,this._ax10206);
            this._xh7232 = null;
         }
      }
      
      public function destroy() : Boolean
      {
         if(this._mb398 != null)
         {
            this._mb398.destroy();
            this._mb398 = null;
            return true;
         }
         return false;
      }
      
      public function show(param1:int, param2:int) : Boolean
      {
         this.count18 = param1;
         this.count19 = param2;
         this.destroy();
         if(UserSession.getInstance().member)
         {
            this._xh7232._kx8423();
         }
         else
         {
            this._xo11249(count1);
         }
         return true;
      }
      
      public function authenticateUser2() : Boolean
      {
         if(this.destroy())
         {
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
      
      private function _ns6583() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString1);
         var count:FichasUtils = new FichasUtils(this._im12039._ou574,[this._im12039._sm7920]);
         this._mb398 = new FichasView(count2,count,null,null,this._ys5259,this._im12039._ym898,null,"");
         if(this.isEnabled)
         {
            this._mb398.show(count21,count22);
         }
         else
         {
            this._mb398.show(count9,count10);
         }
      }
      
      private function _os13661() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString2);
         var count:FichasUtils = new FichasUtils(this._im12039._pk8802,[this._im12039._bx15552,this._im12039._ru545,this._im12039._th6865,this._im12039._rc14828,this._im12039._sr3429,this._im12039._hd11426,this._im12039._ns11891,this._im12039._da13537,this._im12039._bk5495,this._im12039._gk15965,this._im12039._ye2654,this._im12039._cj11625,this._im12039._dr4184]);
         this._mb398 = new FichasView(count2,count,null,null,[this._tq14033,this._mn1341,this._io942],[this._im12039._oy7380,this._im12039._oy7380,this._im12039._oy7380]);
         if(this.isEnabled)
         {
            this._mb398.show(count23,count24);
         }
         else
         {
            this._mb398.show(count11,count12);
         }
      }
      
      private function _jx4475() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString3);
         var count:FichasUtils = new FichasUtils(this._im12039._rf7674,[this.textString11,this.textString12,this._im12039._ds4767,this._im12039._jp3101,this._im12039._fi15661,this._im12039._xs1862,""]);
         if(this.textString10.length > 0)
         {
            UtilsUtils._xl9503(count2[textString8],this.textString10);
         }
         this._mb398 = new FichasView(count2,count,null,null,this._qh1795);
         if(this.isEnabled)
         {
            this._mb398.show(count25,count26);
         }
         else
         {
            this._mb398.show(count13,count14);
         }
      }
      
      private function _sj1752() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString4);
         var count:FichasUtils = new FichasUtils(this._im12039._rq1928,[this._im12039._yn12134]);
         if(UserSession.getInstance()._dx11054 > 0)
         {
            UtilsUtils._xl9503(count2[textString9],String(UserSession.getInstance()._dx11054));
         }
         this._mb398 = new FichasView(count2,count,null,null,this._iy7379,this._im12039._ts14611,null,"");
         if(this.isEnabled)
         {
            this._mb398.show(count27,count28);
         }
         else
         {
            this._mb398.show(count15,count16);
         }
      }
      
      private function _hi8710() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString5);
         var count:FichasUtils = new FichasUtils(this._im12039._yx3006,[this._im12039._bx15552,this._im12039._ru545,this._im12039._th6865,this._im12039._rc14828,this._im12039._sr3429,this._im12039._hd11426,this._im12039._xs1862,this._im12039._da13537,this._im12039._bk5495,this._im12039._gk15965,this._im12039._ye2654,"",this._im12039._cj11625,this._im12039._dr4184]);
         this._mb398 = new FichasView(count2,count,null,null,[this._cc1515,this._pt5092,this._py9982],[this._im12039._oy7380,this._im12039._oy7380,this._im12039._oy7380]);
         if(UserSession.getInstance().textString1.length > 0)
         {
            UtilsUtils._xl9503(count2[textString8],UserSession.getInstance().textString1);
         }
         if(this.isEnabled)
         {
            this._mb398.show(count29,count30);
         }
         else
         {
            this._mb398.show(count17,count18);
         }
      }
      
      private function _rt9463() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString6);
         var count:FichasUtils = new FichasUtils(this._im12039._pq2052,[this.textString11,this.textString12,this._im12039._od12606,this._im12039._kp6172,this._im12039._xs1862,""]);
         if(this.textString10.length > 0)
         {
            UtilsUtils._xl9503(count2[textString8],this.textString10);
         }
         this._mb398 = new FichasView(count2,count,null,null,this._qh1795);
         if(this.isEnabled)
         {
            this._mb398.show(count31,count32);
         }
         else
         {
            this._mb398.show(count19,count20);
         }
      }
      
      private function _ry2794() : void
      {
         var count2:MovieClip = this._jr8898[textString](textString7);
         var count:FichasUtils = new FichasUtils(this._im12039._pq2052,[this._im12039._od12606,this._im12039._kp6172,this._im12039._xs1862,""]);
         if(UserSession.getInstance().textString1.length > 0)
         {
            UtilsUtils._xl9503(count2[textString8],UserSession.getInstance().textString1);
         }
         this._mb398 = new FichasView(count2,count,null,null,this._qh1795);
         if(this.isEnabled)
         {
            this._mb398.show(count31,count32);
         }
         else
         {
            this._mb398.show(count19,count20);
         }
      }
      
      private function _ys5259() : void
      {
         ThunderboltModel.info("Hacer Socio");
         this._xo11249(count2);
      }
      
      private function _tq14033() : void
      {
         ThunderboltModel.info("Mes Uno");
         this.textString11 = this._im12039._bx15552;
         this.textString12 = this._im12039._ru545;
         this._mb398.authenticateUser2();
         this._xh7232._aa3338(count33);
      }
      
      private function _mn1341() : void
      {
         ThunderboltModel.info("Mes Dos");
         this.textString11 = this._im12039._th6865;
         this.textString12 = this._im12039._rc14828;
         this._mb398.authenticateUser2();
         this._xh7232._aa3338(count34);
      }
      
      private function _io942() : void
      {
         ThunderboltModel.info("Mes Tres");
         this.textString11 = this._im12039._sr3429;
         this.textString12 = this._im12039._hd11426;
         this._mb398.authenticateUser2();
         this._xh7232._aa3338(count35);
      }
      
      private function _cc1515() : void
      {
         ThunderboltModel.info("Renovar Mes Uno");
         this.textString11 = this._im12039._bx15552;
         this.textString12 = this._im12039._ru545;
         this._xh7232._aa3338(count33);
      }
      
      private function _pt5092() : void
      {
         ThunderboltModel.info("Renovar Mes Dos");
         this.textString11 = this._im12039._th6865;
         this.textString12 = this._im12039._rc14828;
         this._xh7232._aa3338(count34);
      }
      
      private function _py9982() : void
      {
         ThunderboltModel.info("Renovar Mes Tres");
         this.textString11 = this._im12039._sr3429;
         this.textString12 = this._im12039._hd11426;
         this._xh7232._aa3338(count35);
      }
      
      private function _iy7379() : void
      {
         if(this._ho10593 != null)
         {
            this._ho10593();
            ThunderboltModel.info("Comprar Creditos");
         }
      }
      
      private function _ax10206(param1:MemberEvents) : void
      {
         var count:Array = null;
         var count3:uint = 0;
         var count2:int = 0;
         count = param1.items;
         count3 = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case MemberController._mx15219:
               count.shift();
               this.count40 = int(count.shift());
               this.textString10 = String(count.shift());
               switch(this.count40)
               {
                  case count36:
                     if(UserSession.getInstance().member)
                     {
                        this._xo11249(count6);
                     }
                     else
                     {
                        this._xo11249(count3);
                     }
                     UserSession.getInstance().textString1 = this.textString10;
                     break;
                  case count37:
                     this._xo11249(count4);
                     break;
                  case count38:
                     this._xo11249(count7);
               }
               return;
            case MemberController._sa1658:
               var count1:Boolean = Boolean(int(count[1]));
               if(!UserSession.getInstance().member)
               {
                  UserSession.getInstance().member = false;
               }
               else
               {
                  UserSession.getInstance().member = false;
               }
               ThunderboltModel.info("member_estado");
               return;
            case MemberController._im2881:
               count.shift();
               count2 = int(count.shift());
               switch(count2)
               {
                  case count36:
                     ThunderboltModel.info("puede comprar");
                     this._xo11249(count5);
                     break;
                  case count37:
                  case count38:
                     this._xo11249(count8);
                     ThunderboltModel.info("no puede comprar");
               }
               return;
            default:
               return;
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         this.destroy();
         this.textString3 = param1;
         switch(param1)
         {
            case count:
               return;
            case count1:
               this._ns6583();
               return;
            case count2:
               this._os13661();
               return;
            case count3:
               this._jx4475();
               return;
            case count4:
               this._sj1752();
               return;
            case count5:
               this._hi8710();
               return;
            case count6:
               this._rt9463();
               return;
            case count7:
               this._ry2794();
               return;
            case count8:
               this._ry2794();
               return;
            default:
               return;
         }
      }
   }
}

