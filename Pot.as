package  {
	
	import flash.display.MovieClip;
	
	public class Pot extends MovieClip {
		
		public function Pot(xVal:Number, yVal:Number) {
			
			x = xVal;
			y = yVal;
		}
		
		// update x value according to value of parameter amount

		public function movePot(amount:Number):void{
			
			x = x + amount;
				
		}
	}
	
}
