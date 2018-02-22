//
//  CompleteViewController.swift
//  doIt
//
//  Created by Macbook on 2/21/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    var task = Task()
    var previousVC = TaskViewController()
    
    @IBOutlet weak var taskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showTask()
        
    }
    
    func showTask() {
        if (task.important){
            taskLabel.text = "❗️ \(task.name)"
        }else{
            taskLabel.text = task.name
        }
    }
    
    @IBAction func cmpleteTaskButton(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.currentTaskIndex)
        previousVC.TaskTableView.reloadData()
        
        navigationController!.popViewController(animated: true)
    }
    
}
