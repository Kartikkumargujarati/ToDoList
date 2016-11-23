//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Kartik on 11/23/16.
//  Copyright © 2016 Kartik. All rights reserved.
//

import UIKit

var doList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var toDoList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if UserDefaults.standard.array(forKey: "doList") != nil {
            doList = UserDefaults.standard.array(forKey: "doList") as! [String]
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return doList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = doList[indexPath.row]
        return cell
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            doList.remove(at: indexPath.row)
            UserDefaults.standard.set(doList, forKey: "doList")
            toDoList.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toDoList.reloadData()
    }

}

