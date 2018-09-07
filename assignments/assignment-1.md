## Assignment 1, CS 431/531, Fall 2018

Due: 2018-09-26

Points available: 20

### Methods 

* GET 
* HEAD
* OPTIONS
* TRACE


### Status codes 

* 200 - OK
* 400 - Bad Request
* 403 - Forbidden
* 404 - Not Found
* 500 - Internal Server Error
* 501 - Not Implemented
* 505 - HTTP Version Not Supported


### Request headers 

* Connection: close
* Host: 

### Response headers

* Date
* Server
* Last-Modified
* Content-Length
* Content-Type
* Connection: close
* Allow

### MIME types

* text/plain 
* text/html
* text/xml
* image/png
* image/jpeg
* image/gif
* application/pdf
* application/vnd.ms-powerpoint
* application/vnd.ms-word
* message/http
* application/octet-stream (default mime type)

### Your access log

* GET /.well-known/access.log HTTP/1.1
* cf. [RFC 5785](https://tools.ietf.org/html/rfc5785)
* (typically not a good idea to expose your log via the web server, but ok for this project)
* implement as a virtual URI
* Content-type will be “text/plain”

### Notes

* Limited functionality -- points will be deducted for headers, response codes, etc. that are not explicitly defined in this assignment!
* Build and deployment instructions TBA.  
* Test files TBA.

