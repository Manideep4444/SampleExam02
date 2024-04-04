//
//  ActionItemsTableVC.swift
//  S560301ToDoApp
//
//  Created by Manideep Gattineni on 4/4/24.
//

import UIKit

class ActionItemsTableVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataManager.fetchItems(<#T##self: DataManager##DataManager#>)().count
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    @IBOutlet weak var actionsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


/*
 import UIKit

 class ActionItemsTableVC: UITableViewController {
     
     let dataManager = DataManager.sharedDataManager
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Update navigation item title to greet the user
         if let username = UserDefaults.standard.string(forKey: "username") {
             self.navigationItem.title = "Hello, \(username)"
         } else {
             self.navigationItem.title = "Hello"
         }
         // Set table view cell height
         tableView.rowHeight = 50.0
     }
     
     // MARK: - Table view data source
     
     override func numberOfSections(in tableView: UITableView) -> Int {
         // Two sections: one for to do items and another for archived items
         return 2
     }
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         if section == 0 {
             // Number of rows in the to do section
             return dataManager.fetchItems()["todo"]?.count ?? 0
         } else {
             // Number of rows in the archived section
             return dataManager.fetchItems()["archived"]?.count ?? 0
         }
     }
     
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
         
         // Configure the cell...
         if indexPath.section == 0 {
             // Configure cell for to do items
             cell.textLabel?.text = dataManager.fetchItems()["todo"]?[indexPath.row]
             cell.imageView?.image = UIImage(systemName: "arrow.right.circle.fill")
         } else {
             // Configure cell for archived items
             cell.textLabel?.text = dataManager.fetchItems()["archived"]?[indexPath.row]
             cell.imageView?.image = UIImage(systemName: "checkmark.circle.fill")
         }
         
         return cell
     }
     
     // MARK: - Table view delegate
     
     override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
         if indexPath.section == 0 {
             // Contextual action to archive a to do item
             let archiveAction = UIContextualAction(style: .destructive, title: "Archive") { (_, _, completion) in
                 // Move item from to do list to archived list
                 if let item = self.dataManager.fetchItems()["todo"]?[indexPath.row] {
                     self.dataManager.archiveItem(item)
                     tableView.reloadData()
                     completion(true)
                 }
             }
             return UISwipeActionsConfiguration(actions: [archiveAction])
         } else {
             // Contextual action to move an archived item back to to do list
             let unarchiveAction = UIContextualAction(style: .normal, title: "Move to To Do") { (_, _, completion) in
                 // Move item from archived list to to do list
                 if let item = self.dataManager.fetchItems()["archived"]?[indexPath.row] {
                     self.dataManager.moveToDo(item)
                     tableView.reloadData()
                     completion(true)
                 }
             }
             return UISwipeActionsConfiguration(actions: [unarchiveAction])
         }
     }
 }
 */
