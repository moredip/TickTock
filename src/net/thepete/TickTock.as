package net.thepete
{
	import flash.utils.getTimer;

	public class TickTock {
		private var _startTime:int;
		private var _stopTime:int;

		public function start():void {
			_startTime = getTimer();
		}

		public function stop():void {
			_stopTime = getTimer();
		}

		public function get elapsedTimeInMilliseconds():int {
			return _stopTime - _startTime;
		}

		public static function measure( operation:Function ):TickTock {
			var tt:TickTock = new TickTock();
			tt.start();
			operation();
			tt.stop();
			return tt;
		}
	}
}
