//
//  TodoTableViewCell.swift
//  ToDo List
//
//  Created by Raheem Bakare on 2018-12-08.
//  Copyright © 2018 centennial college. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var switchlbl: UISwitch!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var descriptionlabel: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func switch_change(_ sender: UISwitch) {
        if(sender.isOn){
            titlelabel.textColor = UIColor.black
            // let updatetodo = "complted"
            
            //let key = todo.ref!.key
            
            //let updateref = databaseref.child("/ToDoList/\(key)/")
            // updateref.updateChildValues(updatetodo)
            
        }
        else{
            titlelabel.textColor = UIColor.gray
        }
    }
}
