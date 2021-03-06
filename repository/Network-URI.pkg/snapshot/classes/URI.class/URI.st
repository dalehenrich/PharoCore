
Object subclass: #URI
	instanceVariableNames: 'fragment scheme schemeSpecificPart'
	classVariableNames: 'ClientClasses'
	poolDictionaries: ''
	category: 'Network-URI'!

!URI commentStamp: 'StephaneDucasse 4/4/2010 09:50' prior: 0!
A Uniform Resource Identifier (URI) is a compact string of characters for identifying an abstract or physical resource. This implementation is based on http://www.ietf.org/rfc/rfc2396.txt.
It should be probably updated to http://labs.apache.org/webarch/uri/rfc/rfc3986.html

URI syntax
=======
The string based representation of a URI  has the following syntax [scheme:]scheme-specific-part[#fragment]
where square brackets [...] represents optional parts and the characters : and # stand for themselves.


Another definition given in the specification is 

  URI         = scheme ":" hier-part [ "?" query ] [ "#" fragment ]

   hier-part   = "//" authority path-abempty
               / path-absolute
               / path-rootless
               / path-empty

    foo://example.com:8042/over/there?name=ferret#nose
      \_/   \______________/\_________/ \_________/ \__/
       |           |            |            |        |
    scheme     authority       path        query   fragment
       |   _____________________|__
      / \ /                        \
      urn:example:animal:ferret:nose



An absolute URI has a scheme; a URI that is not absolute is said to be relative. URIs are also classified according to whether they are opaque or hierarchical.

An opaque URI is an absolute URI whose scheme-specific part does not begin with a slash character ('/'). Opaque URIs are not subject to further parsing. Some examples of opaque URIs are:

	mailto:Pharo-project@lists.gforge.inria.fr
	news:comp.lang.smalltalk	
	urn:isbn:000102002x

A hierarchical URI is either an absolute URI whose scheme-specific part begins with a slash character, or a relative URI, that is, a URI that does not specify a scheme. Some examples of hierarchical URIs are:

http://www.pharo-project.org/home
file:///~/calendar

A hierarchical URI is subject to further parsing according to the syntax
	[scheme:][//authority][path][?query][#fragment]
where the characters :, /, ?, and # stand for themselves. The scheme-specific part of a hierarchical URI consists of the characters between the scheme and fragment parts.

The authority part of a hierarchical URI is, if specified, either server-based or registry-based. A server-based authority parses according to the  syntax
	[user-info@]host[:port]
where the characters @ and : stand for themselves. Nearly all URI schemes currently in use are server-based. An authority part that does not parse in this way is considered to be registry-based.

The path component of a hierarchical URI is itself said to be absolute if it begins with a slash character ('/'); otherwise it is relative. The path of a hierarchical URI that is either absolute or specifies an authority is always absolute.

A URI instance has then the following nine components:

	Part						Type
	scheme					String
	scheme-specific-part    	String
	authority					String
	user-info					String
	host						String
	port						Integer
	path						String
	query						String
	fragment					String

Difference between URI, URL and URN
=========================
A URI is a uniform resource identifier while a URL is a uniform resource locator.  Every URL is a URI but not every URI is a URL. This is because there is another subcategory of URIs, uniform resource names (URNs), which name resources but do not specify how to locate them. The following expressions are URNs examples

	mailto:Pharo-project@lists.gforge.inria.fr
	news:comp.lang.smalltalk	
	urn:isbn:000102002x
	

!
