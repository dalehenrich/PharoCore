
WriteStream subclass: #DeflateStream
	instanceVariableNames: 'hashHead hashTail hashValue blockPosition blockStart'
	classVariableNames: ''
	poolDictionaries: 'ZipConstants'
	category: 'Compression-Streams'!

!DeflateStream commentStamp: 'LaurentLaffont 6/8/2011 22:23' prior: 0!
I'm the base class for "stream compressor". For example, my subclass GZipWriteStream can compress a stream contents using gzip algorithm.

Try:

gzData := String streamContents: [:aStream|
         (GZipWriteStream on: aStream)
                nextPutAll: 'Some data to be gzipped';
                close. ].
Transcript 
        show: gzData; 
        cr;
        show: (GZipReadStream on: gzData) upToEnd;
        cr.

See InflateStream!
