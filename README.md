## Purpose
This repository was created to simplify the SWF-based JSON CSRF exploitation

## Instructions
The .swf file take 3 parameters:
1) **jsonData** - 
2) **php_url** - URL of the 307 redirector.
3) **endpoint** - target endpoint, which is vulnerable to CSRF.

Example call:
https://yourhost.com/test.swf?jsonData={"test":1}&php_url=https://yourhost.com/test.php&endpoint=https://targethost.com/endpoint


## Thanks
Special thanks to the https://twitter.com/emgeekboy, who inspired me to make this repository
