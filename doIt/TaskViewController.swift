//
//  ViewController.swift
//  doIt
//
//  Created by Macbook on 2/19/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TaskTableView: UITableView!
    
    var tasks = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = getTaskList()
        
        TaskTableView.dataSource = self
        TaskTableView.delegate = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        if (tasks[indexPath.row].important){
            cell.textLabel?.text = "❗️ \(tasks[indexPath.row].name)"
        }else{
            cell.textLabel?.text = tasks[indexPath.row].name
        }
        
        return cell
    }
    
    func getTaskList() -> [Task] {
        let task1 = Task()
        task1.name = "wash my car"
        task1.important=false
        
        let task2 = Task()
        task2.name = "renwal the insurance card"
        task2.important=true

        let task3 = Task()
        task3.name = "walk"
        task3.important=true

        let taskLst = [task1, task2, task3]
        return taskLst
    }

    
    @IBAction func addTaskButton(_ sender: Any) {
        performSegue(withIdentifier: "AddTaskSegue", sender: nil)
    }


}

