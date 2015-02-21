package  {
	
	import flash.display.MovieClip;
	
	public class CoinList extends MovieClip {
		
		private var list = new Array();
		private var counter:Number = 0;
		private var index;

		public function CoinList() {
			list[0] = new _5cents(Math.floor(Math.random() * 700) + 10, Math.floor(Math.random() * 100 + 20));
			list[1] = new _10cents(Math.floor(Math.random() * 700) + 10, Math.floor(Math.random() * 100 + 20));
			list[2] = new _25cents(Math.floor(Math.random() * 700) + 10, Math.floor(Math.random() * 100 + 20));
			list[3] = new _50cents(Math.floor(Math.random() * 700) + 10, Math.floor(Math.random() * 100 + 20));
			list[4] = new GoldCoin(Math.floor(Math.random() * 700) + 10, Math.floor(Math.random() * 100 + 20));
		}
		
		public function fall():Boolean
		{
			
			counter++;
			if(counter <= 5)
			{
				index = Math.floor(Math.random() * (list.length));
				while(list[index] == null)
				{
					index = Math.floor(Math.random() * (list.length))
				}
				
				if(list[index] != null)
				{
					addChild(list[index]);
				}
				return true;
			}
			else
				return false;
			
		}
		
		public function removeCurrent():void
		{
			removeChild(list[index]);
			list[index] = null;
		}
		
		public function getCurrent()
		{
			return (list[index]);
		}
	}
	
}
