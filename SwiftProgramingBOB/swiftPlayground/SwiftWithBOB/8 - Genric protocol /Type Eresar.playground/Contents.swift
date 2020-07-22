import UIKit

/*:
 ## Genric Protocol
 ## Type Eraser
 */

struct Folder{}
struct Cell {}


protocol Listable {
    associatedtype FileType
    func getFileType() -> String
}

class FolderCell:Listable {
    typealias FileType = Folder
    
    func getFileType() -> String {
        return "Folder cell with \(FileType.self) type"
    }
}



class CollectionCell:Listable {
    typealias FileType = Cell
    func getFileType() -> String {
        return "Folder cell with \(FileType.self) type"
    }
}


class ListCell:Listable {
    typealias FileType = Cell
    
    func getFileType() -> String {
        return "List cell with \(FileType.self) type"
    }
}


//:Desgin Wrapper

class AnyListableCell<T>:Listable {
    typealias FileType = T
    
    private let _getFileType: () -> String
    
    init <U:Listable> (_enterAnyCell:U) where U.FileType == T {
        _getFileType = _enterAnyCell.getFileType
    }
    
    
    func getFileType() -> String {
        return _getFileType()
    }
    
}

let collectionCell:AnyListableCell = AnyListableCell(_enterAnyCell: CollectionCell())
let listCell:AnyListableCell = AnyListableCell(_enterAnyCell: ListCell())

print(collectionCell.getFileType())
print(listCell.getFileType())


//:Erase Abstract type (<T> associated type) to concrete type (string,file,cell)

/*:
 ### So type ereser is nothing more then working with genric code in to a concrete type by calling
 * so whatever you are defining to T or associate type that means your type raising
 */
