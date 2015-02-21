package  {
	
	import flash.display.MovieClip;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class GoldCoin extends MovieClip {
		
		public function GoldCoin(xVal:Number,yVal:Number) {
			this.x = xVal;
			this.y = yVal;
		}
		
		public function fall():void
		{
			//this.y += 10;
		}
		
	}
	
}
