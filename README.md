# FileDemo
Use a swift class File to describe an abstract object of a file.

# Using
Just copy Wildcard.swift and File.swift to your project.

# Example
Create a instance: 
```Swift
let myFile = File(path: "~/")
```
Get its path or url: 
```Swift
myFile.path
myFile.url
```
Determine if a file or directory exists: 
```Swift
myFile.isExsits()
```
Determine whether a file is a directory: 
```Swift
myFile.isDirectory()
```
Get its child file: 
```Swift
let child = myFile.append(childName: "Music")
```
List files under a directory:
```Swift
try child.list()
```
Get its parent directory's name or path: 
```Swift
myFile.getParentPath()
// or 
myFile.getParentFile().path

myFile.getParentName()
// or
myFile.getParentFile().getName()
```
Create directories (as same as FileManager.createDirectory):
```Swift
let dir = File(path: "~/tmpp")
let _ = try dir.createDirectory(withIntermediateDirectories: true, attributes: nil)
```
Write into a plist file: 
```Swift
let writeFile = File(path: "~/mTest.plist")
try (["myString":"hello"] as NSDictionary).write(to: writeFile)
```
Read from a plist file: 
```Swift
NSDictionary(contentsOfFile: writeFile) // -> NSDictionary?
```
Delete a file: 
```Swift
// Example
let tmp = File(path: "~/tmpp/tmp")
let _ = try tmp.createDirectory(withIntermediateDirectories: true, attributes: nil) // Create
let tmpp = tmp.getParentFile() // Get ~/tmp
print(tmpp.path)
print(try tmpp.list()) // Prints "["tmp"]".
print("Deleting...")
let _ = try tmpp.delete(childName: "tmp", hasWildcard: false) // Delete it.
print(try tmpp.list()) // Prints "[]".
try tmpp.delete() // Delete ~/tmpp
```
Move a file: 
```Swift
let ttmpp = ttmp.append(childName: "child")
let _ = try ttmpp.createDirectory(withIntermediateDirectories: true, attributes: nil) // Create a destiny directory for moving.
try dictPlist.move(toDir: ttmpp) // Start moving.
```
Rename a file: 
```Swift
let ttmp = File(path: "~/ttmp")
let _ = try ttmp.createDirectory(withIntermediateDirectories: true, attributes: nil) // Create tmp directory.
let dictPlist = ttmp.append(childName: "a.plist")
let dict : NSDictionary = ["aaa" : "vvv"]
try dict.write(to: dictPlist) // Create a test plist file called a.plist.
try dictPlist.rename(to: "b.plist") // Change its name to b.plist
```

# License
Copyright © 2019 Jack Lee. All rights reserved.

Licensed under the GPL-2.0 License.
