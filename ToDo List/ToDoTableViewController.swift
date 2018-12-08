//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Raheem Bakare on 2018-12-08.
//  Copyright © 2018 centennial college. All rights reserved.
//

import UIKit


class ToDoTableViewController: UITableViewController {
   
    // craeting Arrays
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

  

    override func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
        
        return toDos.count
    }

  

    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        TodoTableViewCell 
        
        
        cell.titlelabel.text = toDos[indexPath.row].name
        cell.descriptionlabel.text = toDos[indexPath.row].notes
        cell.datelabel.text=toDos[indexPath.row].date
        cell.colorView.backgroundColor = UIColor(red: toDos[indexPath.row].red, green: toDos[indexPath.row].green, blue: toDos[indexPath.row].blue, alpha: 1.0)
        
        return cell
    }
    
    //to delete the data from the table
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDos.remove(at: indexPath.row)
            
            //tableView.deleteRows(at: T##[IndexPath], with: .fade)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addVC = segue.destination as! AddToDoViewController
        addVC.previousVC = self
    }

  
}
