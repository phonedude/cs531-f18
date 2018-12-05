## Assignment 5, CS 431/531, Fall 2018

Due: 2018-12-14

Points available: 20

### Additional methods 

* DELETE, PUT, POST (as per the week 11 slides)
* n.b. - update to the OPTIONS method

### Additional status codes 

* 201 Created (via PUT, POST)
* 405 Method Not Allowed
* 411 Length Required
* 413 Request Entity Too Large
* 414 Request-URI Too Long


### Additional request headers 

* Content-type:
* Content-Length:

### Additional response headers

* no new response headers

### Encodings

* "Content-Type: multipart/form-data" and "Content-type: application/x-form-www-urlencoded"

### Notes

* PUT, DELETE are allowed recursively, as per directives in the WeMustProtectThisHouse! file
* Limits: 
    * URI: 2k
    * Entity: 2MB
* You should check for entities longer than advertised as per the "Content-Length" header, but I will not test this
* Always issue an HTML description describing the results (success or failure) of PUT and DELETE (we will not produce 202 or 204)
* Invoke the URI as an executable program iff: POST, GET, HEAD methods are used
    * POST, GET, HEAD methods are used
    * the file is executable (and not a directory)
* Warning!!! -- ensure your URI is relative to your document root (e.g., "GET /bin/rm?-rf HTTP/1.1" would be very bad)
* Update the log format to include the "user-agent:" and "Referer:" request headers:
`"%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-agent}i\""`
* use "ALLOW-PUT" and "ALLOW-DELETE" in the WeMustProtectThisHouse! file, as per lecture 11:

```
#
ALLOW-PUT
ALLOW-DELETE
#
authorization-type=Basic
realm="Lane Stadium"
# always quote realm since it might have spaces
#
# user format = name:md5(password)
#
mln:d3b07384d113edec49eaa6238ad5ff00
bda:c157a79031e1c40f85931829bc5fc552
jbollen:66e0459d0abbc8cd8bd9a88cd226a9b2
```

* Required Environment Variables

```
SCRIPT_NAME     
SCRIPT_URI     
SCRIPT_FILENAME     
HTTP_REFERER     
HTTP_USER_AGENT     
REQUEST_METHOD     
REMOTE_ADDR     
QUERY_STRING     
REMOTE_USER     
AUTH_TYPE     
SERVER_NAME     
SERVER_SOFTWARE     
SERVER_PORT     
SERVER_ADDR     
SERVER_PROTOCOL     
```
