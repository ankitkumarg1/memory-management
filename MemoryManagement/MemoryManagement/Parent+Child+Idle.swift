//
//  Parent+Child+Idle.swift
//  MemoryManagement
//
//  Created by Ankit on 23/12/23.
//

import Foundation

class ChildIdle {
    var name : String
    weak var parent : ParentIdle?

    init(name: String,
         parent: ParentIdle) {
        self.name = name
        self.parent = parent
    }

    deinit{
        print("Child \(name) is being deinitiated")
    }
}


class ParentIdle {

    var name : String
    var children : [ChildIdle] = []

    init(name: String) {
        self.name = name
    }

    func addChild(name : String) {
        let child = ChildIdle(name: name, parent: self)
        children.append(child)
    }

    deinit{
        print("Parent \(name) is being deinitiated")
    }

}

