import UIKit


/*:
 ### Problem: Can,t be it use as a type
 */


//:Degin file type
struct Folder{}
struct Cell {}

//: Degin protocol

protocol Listable {
    associatedtype FileType
    func getFileType() -> String
}

class FolderCell:Listable {
    typealias FileType = Folder
    
    func getFileType() -> String {
        return "Folder cell with \(FileType.self) type"
//: we are using (.self at the end)  to get the file type
    }
}

print(FolderCell().getFileType())


class CollectionCell:Listable {
    typealias FileType = Cell
    
    func getFileType() -> String {
        return "Folder cell with \(FileType.self) type"
    }
}

print(CollectionCell().getFileType())

class ListCell:Listable {
    typealias FileType = Cell
    
    func getFileType() -> String {
        return "List cell with \(FileType.self) type"
    }
}

print(ListCell().getFileType())

//:Problem
//let cell:Listable = UICollectionViewCell()

func enterListCell<T:Listable> (cell:T) {}

enterListCell(cell: FolderCell())
enterListCell(cell: ListCell())


import Foundation

//let cell:Listable = arc4random() * 2 == 0 ? FolderCell() :ListCell()
//:error: protocol 'Listable' can only be used as a generic constraint because it has Self or associated type requirements
