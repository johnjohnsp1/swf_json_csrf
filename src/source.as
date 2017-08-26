package 
{
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Sprite;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;

	public class re extends Sprite 
	{

		public function re() 
		{
			var member1: Object = null;
			var myJson: String = null;
			myJson = this.root.loaderInfo.parameters.jsonData;
			var url: String = this.root.loaderInfo.parameters.php_url;
			var endpoint: String = this.root.loaderInfo.parameters.endpoint;
			var request: URLRequest = new URLRequest(url + "?endpoint=" + endpoint);
			request.requestHeaders.push(new URLRequestHeader("Content-Type", "application/json"));
			request.data = myJson;
			request.method = URLRequestMethod.POST;
			var urlLoader: URLLoader = new URLLoader();
			try 
			{
				urlLoader.load(request);
				return;
			}
			catch(e: Error) 
			{
				trace(e);
				return;
			}
		}
	}
}
