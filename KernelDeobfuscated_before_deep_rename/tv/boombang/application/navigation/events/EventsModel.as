package src.tv.boombang.application.navigation.events
{
   import flash.events.Event;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   
   public class EventsModel extends Event
   {
      
      public static const _om1434:String = "onLoadingStatus";
      
      public static const _rr2751:String = "tabSelected";
      
      public static const _wd4807:String = "tabAreaRequestFirstChannel";
      
      public static const _ql15838:String = "tabAreaRequestSecondChannel";
      
      public static const _qk12217:String = "tabAreaRemoveSecondChannel";
      
      public static const _ha16012:String = "tabAreaEnterFirstLevelChannel";
      
      public static const _eh6046:String = "tabAreaEnterSecondLevelChannel";
      
      public static const _vt105:String = "tabAreaEnter";
      
      public static const _ri12186:String = "tabGamesRequestChannel";
      
      public static const _um10565:String = "tabIslandsRequestChannels";
      
      public static const _uk11953:String = "tabIslandsCreateIsland";
      
      public static const _ej9542:String = "tabIslandsGetMyIslands";
      
      public static const _si11378:String = "tabIslandsRequestFavourites";
      
      public static const _ga9624:String = "tabIslandsSetFavourites";
      
      public static const _fq13518:String = "tabIslandRemoveFavourite";
      
      public static const _dt4861:String = "tabIslandEnterIsland";
      
      public static const _vc9081:String = "tabHousesRequestChannels";
      
      public static const _le11645:String = "tabHousesRequestFavourites";
      
      public static const _yp5143:String = "tabHousesSetFavourites";
      
      public static const _le63:String = "tabHousesRemoveFavourite";
      
      public static const _eu6579:String = "tabHousesEnterHouse";
      
      private var _data:NavigationmenuModel;
      
      private var _jt10688:NavigationmenuModel;
      
      public function EventsModel(param1:String, param2:NavigationmenuModel = null, param3:NavigationmenuModel = null)
      {
         super(param1,false,false);
         this._data = param2;
         this._jt10688 = param3;
      }
      
      public function get data() : NavigationmenuModel
      {
         return this._data;
      }
      
      public function get _ks12861() : NavigationmenuModel
      {
         return this._jt10688;
      }
   }
}

