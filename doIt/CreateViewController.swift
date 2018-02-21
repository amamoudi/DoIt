//
//  CreateViewController.swift
//  doIt
//
//  Created by Macbook on 2/20/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    var previouVC = TaskViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addTaskButton(_ sender: Any) {
        let newTask = Task()
        newTask.name = taskTextField.text!
        newTask.important = importantSwitch.isOn
        
        previouVC.tasks.append(newTask)
        previouVC.TaskTableView.reloadData()
        
        navigationController!.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
