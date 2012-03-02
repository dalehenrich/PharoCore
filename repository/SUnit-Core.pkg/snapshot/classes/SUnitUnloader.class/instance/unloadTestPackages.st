
!SUnitUnloader methodsFor: 'unloading'!
unloadTestPackages
        #('Tests' 'CollectionsTests' 'CompilerTests' 'BalloonTests' 'FreeTypeTests' 'Graphics-Tests' 'KernelTests' 'MorphicTests' 'MultilingualTests' 'NetworkTests' 'ToolsTest' 'Gofer-Tests' 'Announcements-Tests-Core' 'CompressionTests' 'HelpSystem-Tests' 'Multilingual-Tests' 'Regex-Tests-Core' 'HelpSystem-Tests'  'Balloon-Collections-Tests' 'StratifiedProxy-Tests' 'Finder-Tests' 'Zinc-Tests' 'Ring-Tests-Kernel'
'Ring-Tests-Containers' 'ShoutTests' 'FS-Tests-Core' 'FS-Tests-AnsiStreams' 'FS-Tests-Disk' 'FS-Tests-Memory')
                do: [ :each | (MCPackage named: each) unload ]. 
! !
