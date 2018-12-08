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
        
        _ = ToDo(name: name!, notes: notes!, date: dateString,red: red, blue: blue, green: green)
        
        
       
        //self.navigationController?.popToViewController(T##viewController: UIViewController##UIViewController, animated: T##Bool)
        self.navigationController?.popViewController(animated: true)
        // self.navigationController?.popToViewControllerAnimated(true)
        
    }
    
}
