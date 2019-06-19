# FileDemo
Use a swift class File to describe an abstract object of a file.

# Using
Just copy Wildcard.swift and File.swift to your project.

# Example
Create a instance: 
```
let myFile = File(path: "~/")
```
Get its path or url: 
```
myFile.path
myFile.url
```
Determine if a file or directory exists: 
```
myFile.isExsits()
```
Determine whether a file is a directory: 
```
myFile.isDirectory()
```
Get its child file: 
```
let child = myFile.append(childName: "Music")
```
List files under a directory:
```
try child.list()
```
Get its parent directory's name or path: 
```
myFile.getParentPath()
// or 
myFile.getParentFile().path

myFile.getParentName()
// or
myFile.getParentFile().getName()
```
Create directories (as same as FileManager.createDirectory):
```
let dir = File(path: "~/tmpp")
let _ = try dir.createDirectory(withIntermediateDirectories: true, attributes: nil)
```
Write into a plist file: 
```
let writeFile = File(path: "~/mTest.plist")
try (["myString":"hello"] as NSDictionary).write(to: writeFile)
```
Read from a plist file: 
```
NSDictionary(contentsOfFile: writeFile) // -> NSDictionary?
```
Delete a file: 
```
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

# License
Copyright © 2019 Jack Lee. All rights reserved.

Licensed under the GPL-2.0 License.
