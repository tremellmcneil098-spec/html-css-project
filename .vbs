Option Explicit

Dim fso, shell, siteFolder, htmlFile, cssFile, jsFile

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' Website folder
siteFolder = shell.CurrentDirectory & "\my-website"

' Create main folder
If Not fso.FolderExists(siteFolder) Then
    fso.CreateFolder(siteFolder)
End If

' File paths
htmlFile = siteFolder & "\index.html"
cssFile = siteFolder & "\style.css"
jsFile = siteFolder & "\script.js"

' Create HTML
CreateFile htmlFile, _
"<!DOCTYPE html>" & vbCrLf & _
"<html lang=""en"">" & vbCrLf & _
"<head>" & vbCrLf & _
"    <meta charset=""UTF-8"">" & vbCrLf & _
"    <meta name=""viewport"" content=""width=device-width, initial-scale=1.0"">" & vbCrLf & _
"    <title>My Website</title>" & vbCrLf & _
"    <link rel=""stylesheet"" href=""style.css"">" & vbCrLf & _
"</head>" & vbCrLf & _
"<body>" & vbCrLf & _
"    <h1>Welcome to My Website</h1>" & vbCrLf & _
"    <p>Your website is ready!</p>" & vbCrLf & _
"    <button id=""myButton"">Click Me</button>" & vbCrLf & _
"    <script src=""script.js""></script>" & vbCrLf & _
"</body>" & vbCrLf & _
"</html>"

' Create CSS
CreateFile cssFile, _
"body {" & vbCrLf & _
"    font-family: Arial, sans-serif;" & vbCrLf & _
"    background-color: #f5f5f5;" & vbCrLf & _
"    color: #222;" & vbCrLf & _
"    text-align: center;" & vbCrLf & _
"    padding: 50px;" & vbCrLf & _
"}" & vbCrLf & _
"" & vbCrLf & _
"h1 {" & vbCrLf & _
"    color: #2a5298;" & vbCrLf & _
"}" & vbCrLf & _
"" & vbCrLf & _
"button {" & vbCrLf & _
"    padding: 12px 25px;" & vbCrLf & _
"    background-color: #2a5298;" & vbCrLf & _
"    color: white;" & vbCrLf & _
"    border: none;" & vbCrLf & _
"    border-radius: 6px;" & vbCrLf & _
"    cursor: pointer;" & vbCrLf & _
"}"

' Create JavaScript
CreateFile jsFile, _
"const button = document.getElementById(""myButton"");" & vbCrLf & _
"" & vbCrLf & _
"button.addEventListener(""click"", function () {" & vbCrLf & _
"    alert(""Hello! Your JavaScript is working!"");" & vbCrLf & _
"});"

MsgBox "Website created successfully!" & vbCrLf & vbCrLf & _
       "Location:" & vbCrLf & siteFolder, _
       vbInformation, "Website Creator"


' -------------------------
' Function to create files
' -------------------------

Sub CreateFile(filePath, fileContents)

    Dim file

    Set file = fso.CreateTextFile(filePath, True)

    file.Write fileContents

    file.Close

End Sub
