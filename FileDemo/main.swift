//
//  main.swift
//  FileDemo
//
//  Created by 李弘辰 on 2019/6/17.
//  Copyright © 2019 李弘辰. All rights reserved.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//

import Foundation

let myFile = File(path: "~/")
print(myFile.path)
print(myFile.getParentFile().path)
print(try myFile.append(childName: "desktop").list())

// Create dirs.
/*let dir = File(path: "~/tmpp")
let _ = try dir.createDirectory(withIntermediateDirectories: true, attributes: nil)
for i in 0..<5
{
    let _ = try dir.append(childName: "tmp_\(i)").createDirectory(withIntermediateDirectories: true, attributes: nil)
}
for i in 5...10
{
    let _ = try dir.append(childName: "\(i)").createDirectory(withIntermediateDirectories: true, attributes: nil)
}
print(try dir.list())
//let _ = try dir.delete(childName: "tmp_*", hasWildcard: true)
print(try dir.list())*/

let f = File(path: "~/..")
print(f.path)

