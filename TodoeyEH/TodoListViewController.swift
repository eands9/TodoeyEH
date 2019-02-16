//
//  ViewController.swift
//  TodoeyEH
//
//  Created by Eric Hernandez on 2/15/19.
//  Copyright © 2019 Eric Hernandez. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike","Buy eggos","Destroy Demogorgon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        tableView.deselectRow(at: <#T##IndexPath#>, animated: true)
    }
}

