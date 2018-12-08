//
//  ToDo List APP
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Raheem Bakare on 2018-12-08.
//  Student ID: 300973581
//  Copyright © 2018 centennial college. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var detailTextField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addClicked(_ sender: Any) {
        let toDo = ToDo()
        toDo.name = titleTextField.text!
        toDo.notes = detailTextField.text!
        
        previousVC.toDos.append(toDo)
        
    }
    
}
