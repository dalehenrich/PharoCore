
Socket subclass: #SocksSocket
	instanceVariableNames: 'vers method socksIP socksPort dstPort dstIP dstName'
	classVariableNames: 'DefaultSocksVersion'
	poolDictionaries: ''
	category: 'Network-Kernel'!

!SocksSocket commentStamp: '<historical>' prior: 0!
This class implements the socks 4 and partially socks 5 connection protocol.
For backward compatibility the socks protocol is disabled by default, so subclasses still work.
For further documentation check out:

Socks4: http://spiderman.socks.nec.com/protocol/socks4.protocol

Socks5: http://spiderman.socks.nec.com/rfc/rfc1928.txt!
