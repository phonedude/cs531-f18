## Assignment 4, CS 431/531, Fall 2018

Due: 2018-12-07

Points available: 20

### Additional methods 

* no new methods

### Additional status codes 

* 401 Unauthorized

### Additional request headers 

* Authorization

### Additional response headers

* WWW-Authenticate
* Authorization-Info

### Encodings

* no new encodings

### Notes

* Implement Basic and Digest Authentication as per Week 10 slides (and RFCs 7617 and 7616). 
* In your server configuration file: provide private key (any word or phrase) to use in generating nonce & opaque values
(yes, this is not the safest way to do this).
* provide a configurable value for how to protect directories 
    * default name is = "WeMustProtectThisHouse!"
    * all functions combined in a single file for simplicity (you would normally separate them)
    * this file protects the directory it is in, and recursively protects all of its sub-directories
* sample file:

```
#    
# Hashed lines are comments    
# order is not important, but here are     
# two special lines:    
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
