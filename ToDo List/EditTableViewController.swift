//
//  EditTableViewController.swift
//  ToDo List
//
//  Created by Raheem Bakare on 2018-12-09.
//  Copyright © 2018 centennial college. All rights reserved.
//

import UIKit

class EditTableViewController: UITableViewController {
    var todo : ToDo!
   var previousVC =  ToDoTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var detailTextField: UITextView!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        titleTextField.text = todo.name
       detailTextField.text = todo.notes
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func updateClicked(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let date = NSDate()
        //var dateFormatter = DateFormatter()
        //dateFormatter.dateFormat = "MM-dd-yyyy"
        let dateString = dateFormatter.string(from: date as Date)
        //println(dateString)
        let name = titleTextField.text
        let notes = detailTextField.text
        
        let red = CGFloat(arc4random_uniform(UInt32(255.5)))/255
        let blue = CGFloat(arc4random_uniform(UInt32(255.5)))/255
        let green = CGFloat(arc4random_uniform(UInt32(255.5)))/255
        
        let toDo = ToDo(name: name!, notes: notes!, date: dateString,red: red, blue: blue, green: green)
        
        toDo.name = titleTextField.text!
        toDo.notes = detailTextField.text!
        
       
    
        self.navigationController?.popViewController(animated: true)
        // self.navigationController?.popToViewControllerAnimated(true)
        
    }
    
}
