//
//  ViewController.swift
//  MemoryManagement
//
//  Created by Ankit on 23/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func memoryLeakCondition(){

        var parent: Parent? = Parent(name: "Sandy")
        parent?.addChild(name: "Patrick")
        parent?.addChild(name: "Emily")
        parent?.addChild(name: "Joenna")

        //MARK: Here parent and child both doesn't get deallocated since are in strong reference to each other
        parent = nil
    }

    @IBAction func IdleCondition(){
        var parent: ParentIdle? = ParentIdle(name: "Sandy")
        parent?.addChild(name: "Patrick")
        parent?.addChild(name: "Emily")
        parent?.addChild(name: "Joenna")

        //MARK: Here parent and child both gets deallocated since child is in weak reference to parent
        parent = nil
    }

}

