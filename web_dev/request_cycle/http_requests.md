1) What are some common HTTP status codes?

	a. 404 Not Found:
		This status code means the requested resource is not found.

	b. 403 Forbidden:
		This status code means that you do not have access to the resource you are requesting.

	c. 500 Internal Server Error:
		This status code is a server side error code. If no other 500 error codes make sense, this status code is returned. 

	d. 504 Gateway Timeout:
		This status means that there is no connection to a secondary web server. This could happen for various reasons such as a DNS (Domain Name Server) issue or a network might be down. 

2) What is the difference between a GET request and a POST request? When might each be used?

A GET request is a representation of the specified source, in other words, it is when a request is being made to retrive information. 

A POST request is a request made to submit data to be processed and bring about change to the resource that a POST request is made to. This brings changes like the creation of new resources or updates to existing resources.
