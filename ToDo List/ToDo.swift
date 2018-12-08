//
//  ToDo.swift
//  ToDo List
//
//  Created by Raheem Bakare on 2018-12-08.
//  Copyright © 2018 centennial college. All rights reserved.
//

import UIKit


class ToDo {
    
    var name : String!
    var complete = false
    var notes : String!
    var date : String!
    var red : CGFloat!
    var blue : CGFloat!
    var green : CGFloat!
    
    
    init(name : String, notes : String, date : String, red : CGFloat, blue : CGFloat , green : CGFloat, key : String = "") {
        self.name = name
        self.notes = notes
        self.date = date
        self.red = red
        self.blue = blue
        self.green = green
    }
    
    
    func toAnyObject() -> [String : AnyObject]
    {
        return["name" : name as AnyObject , "notes" : notes as AnyObject, "date" : date as AnyObject, "red" : red as AnyObject, "blue" : blue as AnyObject,  "green" : green as AnyObject]
    }
}
