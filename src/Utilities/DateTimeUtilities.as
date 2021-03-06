package Utilities
{
	public class DateTimeUtilities
	{
		public function DateTimeUtilities()
		{
		}
		
		public static function createNSFormattedDateAndTime(dateAndTime:Date):String {
			var month:String = (dateAndTime.monthUTC + 1).toString().length < 2 ? "0" + (dateAndTime.monthUTC + 1).toString() : (dateAndTime.monthUTC + 1).toString();
			var hours:String = (dateAndTime.hoursUTC).toString().length < 2 ? "0" + (dateAndTime.hoursUTC).toString() : dateAndTime.hoursUTC.toString();
			var minutes:String = (dateAndTime.minutesUTC).toString().length < 2 ? "0" + (dateAndTime.minutesUTC).toString() : dateAndTime.minutesUTC.toString();
			var seconds:String = (dateAndTime.secondsUTC).toString().length < 2 ? "0" + (dateAndTime.secondsUTC).toString() : dateAndTime.secondsUTC.toString();
			var milliseconds:String = (dateAndTime.millisecondsUTC).toString().length < 3 ? ((dateAndTime.secondsUTC).toString().length < 2 ? "00" + (dateAndTime.millisecondsUTC).toString() : "0" + (dateAndTime.millisecondsUTC).toString()) : (dateAndTime.millisecondsUTC).toString() ;
			var day:String = (dateAndTime.dateUTC).toString().length < 2 ? "0" + (dateAndTime.dateUTC).toString() : dateAndTime.dateUTC.toString();
			var returnValue:String =  dateAndTime.fullYearUTC + "-" + month + "-" + day + "T" + hours + ":" + minutes + ":" + seconds + "."  + milliseconds + "Z";
			return returnValue;
		}

	}
}