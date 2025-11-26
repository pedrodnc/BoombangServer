package src.person
{
   import flash.display.*;
   import flash.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class PersonData
   {
      
      private static var _instance:PersonData;
      
      private var _op2478:Dictionary;
      
      public function PersonData(param1:_rw9443)
      {
         super();
         this._op2478 = new Dictionary();
      }
      
      public static function getInstance() : PersonData
      {
         if(_instance == null)
         {
            _instance = new PersonData(new _rw9443());
         }
         return _instance;
      }
      
      private function _yf9918(param1:String) : void
      {
         var count:Array = null;
         var count3:Array = null;
         var count1:String = null;
         var count2:String = null;
         var count7:Person = null;
         var items:int = 0;
         count3 = param1.split("|");
         while(items < count3.length)
         {
            count = count3[items].split(",");
            count1 = count[0] + count[1];
            count2 = count[2];
            count7 = new Person();
            count7.type = count[3];
            switch(count7.type)
            {
               case irrcrpt("eqnqt",2):
                  count7._qj12043 = this._oo15630;
                  count7._fb4001 = count[4];
                  count7._pq14173 = count[5];
                  break;
               case irrcrpt("xkukdng",2):
                  count7._qj12043 = this._ji14380;
                  count7._fb4001 = count[4];
                  count7.visible = Boolean(Number(count[5]));
                  break;
               case irrcrpt("jokfdu",1):
                  count7._qj12043 = this._qs11596;
                  count7._fb4001 = count[4];
                  count7.sourceName = count[5];
                  break;
               case irrcrpt("wxst",4):
                  count7._qj12043 = this._sp4517;
            }
            if(this._op2478[count1] == null)
            {
               this._op2478[count1] = new Dictionary();
            }
            if(this._op2478[count1][count2] == null)
            {
               this._op2478[count1][count2] = new Array();
            }
            this._op2478[count1][count2].push(count7);
            items++;
         }
      }
      
      public function init() : void
      {
         var count2:String = null;
         var count:String = null;
         var count3:int = 0;
         var count1:PersonModel = PersonModel.getInstance();
         var count2:Array = count1._bt3478();
         var count7:Array = count1._nt6211();
         count3 = 0;
         while(count3 < count2.length)
         {
            count2 = (ServiceLocator.get(ResourceManager) as ResourceManager).getString2(count2[count3],false,true);
            this._yf9918(count2);
            count3++;
         }
         count3 = 0;
         while(count3 < count7.length)
         {
            count = (ServiceLocator.get(ResourceManager) as ResourceManager).getString2(count7[count3],false,true);
            this._yf9918(count);
            count3++;
         }
      }
      
      private function _ji14380(param1:Person) : void
      {
         var count:MovieClip = param1.mc.getChildByName(param1._fb4001) as MovieClip;
         if(count)
         {
            count.visible = param1.visible;
         }
      }
      
      private function _qs11596(param1:Person) : void
      {
         var count:MovieClip = param1.mc.getChildByName(param1._fb4001) as MovieClip;
         if(count != null && param1.source != null)
         {
            StringUtils.cleanChildsMovieclip(count);
            count.addChild(param1.source);
            param1.source.gotoAndPlay(param1.mc.currentFrame);
         }
      }
      
      private function _oo15630(param1:Person) : void
      {
         var count1:int = 0;
         var count:Array = param1._fb4001.split(".");
         var count3:MovieClip = param1.mc;
         while(count1 < count.length)
         {
            if(count3)
            {
               count3 = count3[count[count1]];
            }
            count1++;
         }
         if(count3)
         {
            count3.transform.colorTransform = param1.color;
         }
      }
      
      private function _sp4517(param1:Person) : void
      {
         StringUtils.stop1(param1.mc);
      }
      
      private function _gb12560(param1:Array) : Function
      {
         var customizeDates:Array = param1;
         return function():void
         {
            var count2:* = undefined;
            for each(count2 in customizeDates)
            {
               count2._qj12043.call(undefined,count2);
            }
         };
      }
      
      private function _vl13892(param1:String, param2:String, param3:String) : Dictionary
      {
         var count2:String = null;
         var count7:Dictionary = new Dictionary();
         var items:String = param2 + param1;
         var count8:String = param2 + param3 + param1;
         if(this._op2478[items] != null)
         {
            for(count2 in this._op2478[items])
            {
               count7[count2] = this._op2478[items][count2];
            }
         }
         if(this._op2478[count8] != null)
         {
            for(count2 in this._op2478[count8])
            {
               if(count7[count2] != null)
               {
                  count7[count2] = count7[count2].concat(this._op2478[count8][count2]);
               }
               else
               {
                  count7[count2] = this._op2478[count8][count2];
               }
            }
         }
         return count7;
      }
      
      public function _jm6145(param1:MovieClip, param2:PersonAnimation, param3:String, param4:int = 1) : void
      {
         var count2:Dictionary = null;
         var items:int = 0;
         var count8:int = 0;
         var count6:int = 0;
         var count:Array = null;
         var count10:Array = null;
         var textString12:String = null;
         var count17:int = 0;
         var count18:int = 0;
         var count19:int = 0;
         var count22:* = undefined;
         var count23:Array = null;
         var count24:int = 0;
         var textString9:Person = null;
         var isEnabled:PersonModel = PersonModel.getInstance();
         var textString14:Array = new Array(param1.totalFrames);
         var count16:Array = new Array();
         param4--;
         count2 = this._vl13892(param3,isEnabled._ny11833(param2.count1),isEnabled._vh10309(param2._cj5718));
         var count21:String = PersonModel.getInstance()._bc10149(param2._cj5718);
         if((Boolean(count21)) && (count21.indexOf("pet0") == 0 && count21.length >= 5 && count21.charAt(4) >= "1" && count21.charAt(4) <= "9" || count21.indexOf("pet10") == 0 || count21.indexOf("flag01") == 0 || count21.indexOf("flag02") == 0))
         {
            for(count22 in count2)
            {
               count23 = count2[count22];
               count24 = int(count23.length - 1);
               while(count24 >= 0)
               {
                  textString9 = count23[count24];
                  if(textString9.type == "visible" && textString9._fb4001.indexOf("hide_hat") == 0)
                  {
                     count23.splice(count24,1);
                  }
                  count24--;
               }
            }
         }
         for(textString12 in count2)
         {
            count16.push(Number(textString12));
         }
         count16.sort(Array.NUMERIC);
         if(count2 != null)
         {
            count19 = int(count16.length);
            items = 0;
            while(items < count19)
            {
               if(items + 1 < count19)
               {
                  count18 = int(count16[items + 1]);
               }
               count17 = int(count16[items]);
               count = count2[count17];
               count6 = int(count.length);
               if(count6 > 0)
               {
                  count10 = new Array();
                  count8 = 0;
                  while(count8 < count6)
                  {
                     count10[count8] = count[count8]._hg7256();
                     count10[count8].mc = param1;
                     switch(count10[count8].type)
                     {
                        case irrcrpt("eqnqt",2):
                           count10[count8].color = param2._yt6727(count10[count8]._pq14173);
                           break;
                        case irrcrpt("jokfdu",1):
                           count10[count8].source = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(isEnabled._bc10149(param2._cj5718),count10[count8].sourceName,false);
                     }
                     count8++;
                  }
                  param1.addFrameScript(count17,this._gb12560(count10));
                  if(param4 > 0)
                  {
                     if(count17 <= param4 && count18 > param4)
                     {
                        param1.addFrameScript(param4,this._gb12560(count10));
                     }
                  }
                  if(count17 == 0)
                  {
                     count8 = 0;
                     while(count8 < count6)
                     {
                        count10[count8]._qj12043.call(undefined,count10[count8]);
                        count8++;
                     }
                  }
               }
               items++;
            }
         }
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
