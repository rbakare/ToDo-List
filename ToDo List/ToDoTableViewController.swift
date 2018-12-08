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
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addVC = segue.destination as! AddToDoViewController
        addVC.previousVC = self     //passing reference between the controllers
        
    }

}
