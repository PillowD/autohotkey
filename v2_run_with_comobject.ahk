;  open notepad with a ComObject and a function
#SingleInstance
#Requires Autohotkey v2.0+

runApp('notepad') ;this will launch notepad

runApp(appName) { 
	For app in ComObject('Shell.Application').NameSpace('shell:AppsFolder').Items
		(app.Name = appName) && RunWait('explorer shell:appsFolder\' app.Path)
}
/*
Notes
ComObject
Creates a COM object.
ComObj := ComObject(CLSID [, IID])
CLSID or human-readable Prog ID of the COM object to create.
If omitted, it defaults to "{00020400-0000-0000-C000-000000000046}" (IID_IDispatch). Otherwise, specify the identifier of the interface to return. In most cases this is omitted.
This function returns a COM wrapper object of type dependent on the IID parameter.

Here's how to see the apps you have installed:
Press the Windows Key + R to open the Run dialog.
In the Open box, type shell:AppsFolder and press Enter.
This will launch File Explorer and display a list of all your installed programs, including traditional desktop apps and modern Universal Windows Platform (UWP) apps.
Even though it doesn't point to a specific folder,  "shell:AppsFolder" provides a convenient way to browse all your applications in one place.

https://www.autohotkey.com/boards/viewtopic.php?p=438517#p438517
*/

