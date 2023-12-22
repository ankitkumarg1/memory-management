//
//  Parent+Child.swift
//  MemoryManagement
//
//  Created by Ankit on 23/12/23.
//

import Foundation

class Child {
    var name : String
    var parent : Parent?

    init(name: String,
         parent: Parent) {
        self.name = name
        self.parent = parent
    }

    deinit{
        print("Child \(name) is being deinitiated")
    }
}


class Parent {

    var name : String
    var children : [Child] = []

    init(name: String) {
        self.name = name
    }

    func addChild(name : String) {
        let child = Child(name: name, parent: self)
        children.append(child)
    }

    deinit{
        print("Parent \(name) is being deinitiated")
    }

}

