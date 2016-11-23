//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Kartik on 11/23/16.
//  Copyright © 2016 Kartik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  
    @IBOutlet weak var textBox: UITextField!
    @IBAction func addClicked(_ sender: AnyObject) {
        doList.append(textBox.text!)
        textBox.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func shouldReturn(textField:UITextField) -> Bool {
        textBox.resignFirstResponder()
        return true
    }

}

