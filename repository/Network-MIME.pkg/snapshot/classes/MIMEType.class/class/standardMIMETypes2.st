
!MIMEType class methodsFor: 'class initialization'!
standardMIMETypes2
	"MIMEType standardMimeTypes2"
	"We had to split this method because of the 256 literal limit in methods."
	| mimeTypes |
	mimeTypes := Dictionary new: 100.
	mimeTypes
		at: 'nc' put: #('application/x-netcdf');
		at: 'o' put: #('application/octet-stream');
		at: 'oda' put: #('application/oda');
		at: 'ogg' put: #('audio/ogg');
		at: 'otf' put: #('application/x-fontopentype');
		at: 'otto' put: #('application/x-fontopentype');
		at: 'pbm' put: #('image/x-portable-bitmap');
		at: 'pcf' put: #('application/x-fontbitmap');
		at: 'pdf' put: #('application/pdf');
		at: 'pfa' put: #('application/x-fontpostscripttype1');
		at: 'pfb' put: #('application/x-fontpostscripttype1');
		at: 'pgm' put: #('image/x-portable-graymap');
		at: 'pgp' put: #('application/x-pgp-plugin');
		at: 'pgr' put: #('text/parsnegar-document');
		at: 'pl' put: #('text/plain');
		at: 'png' put: #('image/png');
		at: 'pnm' put: #('image/x-portable-anymap');
		at: 'pot' put: #('application/vnd.ms-powerpoint');
		at: 'ppa' put: #('application/vnd.ms-powerpoint');
		at: 'ppm' put: #('image/x-portable-pixmap');
		at: 'pps' put: #('application/vnd.ms-powerpoint');
		at: 'ppt' put: #('application/mspowerpoint');
		at: 'ppz' put: #('application/vnd.ms-powerpoint');
		at: 'pr' put: #('application/x-squeak-project');
		at: 'ps' put: #('application/postscript');
		at: 'pwz' put: #('application/vnd.ms-powerpoint');
		at: 'qt' put: #('video/quicktime');
		at: 'ra' put: #('audio/x-realaudio');
		at: 'ram' put: #('audio/x-pn-realaudio');
		at: 'ras' put: #('image/x-cmu-rast');
		at: 'rgb' put: #('image/x-rgb');
		at: 'rm' put: #('audio/x-pn-realaudio');
		at: 'roff' put: #('application/x-troff');
		at: 'rpm' put: #('audio/x-pn-realaudio-plugin');
		at: 'rtc' put: #('application/rtc');
		at: 'rtf' put: #('text/rtf' 'application/rtf');
		at: 'rtx' put: #('application/rtf');
		at: 'saveme' put: #('application/octet-stream');
		at: 'sfnt' put: #('application/x-fontsuitcase');
		at: 'sh' put: #('application/x-sh');
		at: 'shar' put: #('application/x-shar');
		at: 'sit' put: #('application/x-stuffit');
		at: 'snd' put: #('audio/basic');
		at: 'spx' put: #('audio/x-speex');
		at: 'src' put: #('application/x-wais-source');
		at: 'sts' put: #('application/x-squeak-source');
		at: 'suit' put: #('application/x-fontsuitcase');
		at: 'sv4cpio' put: #('application/x-sv4cpio');
		at: 'sv4crc' put: #('application/x-sv4crc');
		at: 'swf' put: #('application/x-shockwave-flash');
		at: 't' put: #('application/x-troff');
		at: 'tar' put: #('application/x-tar');
		at: 'tbk' put: #('application/toolbook');
		at: 'tex' put: #('application/x.tex');
		at: 'texi' put: #('application/x-texinfo');
		at: 'texinfo' put: #('application/x-texinfo');
		at: 'text' put: #('text/plain');
		at: 'tfil' put: #('application/x-fontsuitcase');
		at: 'tif' put: #('image/tiff');
		at: 'tiff' put: #('image/tiff');
		at: 'tr' put: #('application/x-troff');
		at: 'tsv' put: #('text/tab-separated-values');
		at: 'ttc' put: #('application/x-fonttruetype');
		at: 'ttcf' put: #('application/x-fonttruetype');
		at: 'ttf' put: #('application/x-fonttruetype');
		at: 'txt' put: #('text/plain');
		at: 'ua' put: #('text/plain');
		at: 'ustar' put: #('audio/basic');
		at: 'uu' put: #('application/octet-stream');
		at: 'vgm' put: #('video/x-videogram');
		at: 'vgp' put: #('video/x-videogram-plugin');
		at: 'vgx' put: #('video/x-videogram');
		at: 'viv' put: #('video/vnd.vivo');
		at: 'vivo' put: #('video/vnd.vivo');
		at: 'vrml' put: #('model/vrml');
		at: 'wav' put: #('audio/wav' 'audio/x-wav');
		at: 'wid' put: #('application/x-DemoShield');
		at: 'wiz' put: #('application/msword');
		at: 'wlt' put: #('application/x-mswallet');
		at: 'wm' put: #('video/x-ms-wm');
		at: 'wma' put: #('audio/x-ms-wma');
		at: 'wmv' put: #('video/x-ms-wmv');
		at: 'wrl' put: #('model/vrml');
		at: 'wsrc' put: #('application/x-wais-source');
		at: 'xbm' put: #('image/x-xbitmap');
		at: 'xlb' put: #('application/vnd.ms-excel');
		at: 'xls' put: #('application/vnd.ms-excel');
		at: 'xml' put: #('text/xml' 'text/html');
		at: 'xpm' put: #('image/x-xpixmap');
		at: 'xul' put: #('application/vnd.mozilla.xul+xml');
		at: 'xwd' put: #('image/x-xwindowdump');
		at: 'z' put: #('application/x-compress');
		at: 'zip' put: #('application/zip');
		at: 'zpa' put: #('application/pcphoto').
	^mimeTypes
! !
