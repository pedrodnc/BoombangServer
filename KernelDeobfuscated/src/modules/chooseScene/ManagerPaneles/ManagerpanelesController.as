package src.modules.chooseScene.ManagerPaneles
{
   import flash.display.*;
   import src.loaders.*;
   import src.modules.antitimos.LoginEvents;
   import src.modules.chooseScene.*;
   import src.modules.chooseScene.panelMariquita.PanelmariquitaView;
   import src.modules.creditos.CreditosController;
   import src.modules.member.MemberController;
   import src.utils.fichas.*;
   
   public class ManagerpanelesController
   {
      
      private static const textString:String = "mcPanel";
      
      private var items:Array;
      
      private var items1:Array;
      
      private var _qh1795:Function;
      
      private var _pg10414:PanelmariquitaView;
      
      private var _hd13280:LoginEvents;
      
      private var _xe10392:MemberController;
      
      private var _bg10415:CreditosController;
      
      private var _uo14455:Function;
      
      public function ManagerpanelesController(param1:Array, param2:Function, param3:ChoosesceneModel, param4:ChoosesceneController, param5:PanelmariquitaView, param6:LoginEvents, param7:MemberController, param8:CreditosController, param9:Function)
      {
         var count:ManagerpanelesController = null;
         var textString12:int = 0;
         super();
         this.items1 = param1;
         this._qh1795 = param2;
         this._pg10414 = param5;
         this._hd13280 = param6;
         this._xe10392 = param7;
         this._bg10415 = param8;
         this._uo14455 = param9;
         this.items = new Array();
         var count10:Array = ManagerpanelesController.loadResource();
         while(textString12 < count10.length)
         {
            count = ManagerpanelesController(count10[textString12]);
            this.items.push(new ManagerpanelesController(count._hi12034,count._xo14236,count._tr10766,param3,param4,param5,param6,param7,param8,param9));
            switch(count._hi12034)
            {
               case AssetLoader.textString29:
               case AssetLoader.textString32:
               case AssetLoader.textString33:
                  ManagerpanelesController(this.items[textString12])._wi6038 = MovieClip(param1[textString12]);
                  break;
               default:
                  ManagerpanelesController(this.items[textString12])._wi6038 = MovieClip(MovieClip(param1[textString12]).getChildByName(textString));
            }
            ManagerpanelesController(this.items[textString12])._fo13835(this._vp11082);
            textString12++;
         }
      }
      
      public static function loadResource() : Array
      {
         var count2:ChoosesceneModel = new ChoosesceneModel();
         var count:Array = new Array();
         count.push(new ManagerpanelesController(AssetLoader.textString5,ManagerpanelesController._qn1953,new FichasUtils(count2._ue7613,[count2._qg4067,count2._da2324,count2._mj14716,count2._rr1345,count2._ca13744,count2._cj3876,count2._as10195])));
         count.push(new ManagerpanelesController(AssetLoader.textString6,ManagerpanelesController._fm14100,new FichasUtils("",[""])));
         count.push(new ManagerpanelesController(AssetLoader.textString7,ManagerpanelesController._ty8083,new FichasUtils("",[""])));
         count.push(new ManagerpanelesController(AssetLoader.textString9,ManagerpanelesController._dq14459,new FichasUtils("",[""])));
         count.push(new ManagerpanelesController(AssetLoader.textString29,ManagerpanelesController._qv5840,new FichasUtils("",[""])));
         count.push(new ManagerpanelesController(AssetLoader.textString32,ManagerpanelesController._qn12637,new FichasUtils("",[""])));
         count.push(new ManagerpanelesController(AssetLoader.textString33,ManagerpanelesController._ar3880,new FichasUtils("",[""])));
         count.push(new ManagerpanelesController(AssetLoader.textString28,ManagerpanelesController._ex15554,new FichasUtils("",[""])));
         return count;
      }
      
      public function destroy() : void
      {
         var count2:ManagerpanelesController = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = ManagerpanelesController(this.items[count]);
            count2.destroy();
            switch(count2._hi12034)
            {
               default:
                  MovieClip(this.items1[count]).addChild(ManagerpanelesController(this.items[count])._wi6038);
            }
            count++;
         }
         this.items.length = 0;
      }
      
      public function show(param1:String, param2:int, param3:int, param4:Object = null) : Boolean
      {
         var count2:ManagerpanelesController = null;
         var count7:int = 0;
         while(count7 < this.items.length)
         {
            count2 = ManagerpanelesController(this.items[count7]);
            if(count2._hi12034 == param1)
            {
               return count2.show(param2,param3,param4);
            }
            count7++;
         }
         return false;
      }
      
      public function _ar9865(param1:String, param2:MovieClip) : void
      {
         var count3:ManagerpanelesController = null;
         var count1:int = 0;
         while(count1 < this.items1.length)
         {
            count3 = ManagerpanelesController(this.items[count1]);
            if(count3._hi12034 == param1)
            {
               count3._sq6775(param2);
            }
            count1++;
         }
      }
      
      public function authenticateUser2(param1:String) : Boolean
      {
         var count:ManagerpanelesController = null;
         var count3:int = 0;
         while(count3 < this.items.length)
         {
            count = ManagerpanelesController(this.items[count3]);
            if(count._hi12034 == param1)
            {
               return count.authenticateUser2();
            }
            count3++;
         }
         return false;
      }
      
      public function _ip1589() : void
      {
         var count2:ManagerpanelesController = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = ManagerpanelesController(this.items[count]);
            count2.authenticateUser2();
            count++;
         }
      }
      
      public function _vp11082() : void
      {
         this._qh1795();
      }
   }
}

