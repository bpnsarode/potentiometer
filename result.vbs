Const ForReading = 1
Const ForAppending = 8

Set fso = CreateObject("Scripting.FileSystemObject")
Set com = fso.OpenTextFile("COM6:9600,N,8,1", ForReading)

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("C:\Users\NAVEEN\Documents\results.txt", ForAppending, True)

MsgBox("Start to read data from COM")

Do While com.AtEndOfStream <> True
s = com.ReadLine
objFile.WriteLine(s)
WScript.Sleep(200)
Loop

objFile.Close
com.Close()