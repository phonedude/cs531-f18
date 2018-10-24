## Assignment 3, CS 431/531, Fall 2018

Due: 2018-11-14

Points available: 20

### Additional methods 

* no new methods

### Additional status codes 

* 206 Partial Content
* 300 Multiple Choice
   * use if there are > 1 possible representations and 1) UA sends `Negotiate: 1.0` or 2) qvalues result in a tie
* 406 Not Acceptable
   * use if there are no possible representations that match the requested q values
* 416 Requested Range Not Satisfiable


### Additional request headers 

* Accept
* Accept-Charset
* Accept-Encoding
* Accept-Language
* Negotiate
* Range
   * We will defer multiple Range specifications that would result in a "multipart/byteranges" response (sections 4.1, 4.3)
* If-Range
* User-Agent
* Referer


### Additional response headers

* Vary
* Content-Language
* Content-Location
* Content-Encoding
* "Transfer-Encoding: chunked"
   * Revisit [Section 7.1, RFC 7230](https://tools.ietf.org/html/rfc7230#section-4.1) for the correct syntax
* Alternates
* TCN
* Accept-Range
* Content-Range
* Content-type
   * add charset after type if not ISO-8859-1 (ASCII); see week 9 slides for examples

### Encodings

* supports "gzip" and "compress"
* Use "chunked” transfer encoding for any dynamically generated server response
   * i.e., directory listings and 3xx, 4xx, 5xx html snippets
   * use 2 lines as the "chunk"

### Notes

* Support/advertise partial GET capability (i.e., Accept-Range) for all resources for all resources/responses for which you don't use Transfer-Encoding: chunked
* Use these language encodings (in a config file):
   * en, es, de, ja, ko, ru
* Use these non-ASCII charset encodings (in a config file):
   * ".jis" -> "iso-2022-jp"
   * "koi8-r" -> "koi8-r"
   * "euc-kr" -> "euc-kr"
* Build "Vary" response header as:
   * Vary: negotiate, header1, header2, ..., headerN
   * only send Vary if CN is possible for this URI
* Generate structured ETags on selected representation as per RFC 2295 (section 9.2)


