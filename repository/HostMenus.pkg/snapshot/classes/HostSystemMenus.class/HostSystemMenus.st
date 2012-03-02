
Object subclass: #HostSystemMenus
	instanceVariableNames: 'hostSystemProxy'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'HostMenus-Mac'!

!HostSystemMenus commentStamp: 'JMM 10/15/2004 13:02' prior: 0!
This class uses a proxy and a plugin to support access to the host operating system's menu api. 
Most of the work is done in the proxy and the proxy calls  a host OS specific plugin, or  uses FFI or whatever is applicable to make host menus work. 

Most menubar commands take a host window index value. This maps to the host window index value that is used by the host window plugin. This supports windows that support host menu bars. The macintosh has a single menu bar and all uses of windowIndex are later ignored in the macintosh proxy code. 

When menu events are passed up from the VM by a VM that actually generates the events, they are processed in EventSensor>>processMenuEvent: which calls HostSystemMenus>>defaultMenuBarForWindowIndex: N. This returns the proxy that handles the interface to the menu bar for the window that has windowIndex N. It then invokes 	HostSystemMenuProxy>>getHandlerForMenu:item:  to get a block that will act on the invocation of menu N, menu Item M.  See HostSystemMenusMenuItem class>>fakeKeyboardEventBlockascii:unicode: 
for the default blocks definition which defaults to insert the command key keyboard stroke into the event queue. This then mimics command key usage which is being watched for by Morphic/Tweak widgets. 

Structure:
 hostSystemProxy	HostSystemMenusProxy -- points to the proxy class that interfaces to the plugin
 Default				HostSystemMenus -- points to the single instance of HostSystemMenus

The macintosh plugin attempts to validate incoming menu handles. But care still must be taken not to pass in a bogus handle because this will crash the VM. Finalization is used to ensure 'lost' menu proxies are dealt with. 

!
