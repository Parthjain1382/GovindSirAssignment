//
//  ViewController.swift
//  TableView
//
//  Created by E5000846 on 30/05/24.
//

import UIKit


//class Employees{
//    var name : String
//    var id : Int
//    
//    init(name: String, id: Int) {
//        self.name = name
//        self.id = id
//    }
//}

class ViewController: UIViewController{

    @IBOutlet weak var TableView: UITableView!
    
//    var employeeArray = [Employees]()
    
    var arrayOfEmployee = [[String]]()
    var arrarOfHeader = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        employeeArray.append(Employees.init(name: "Pranay", id: 500))
//        employeeArray.append(Employees.init(name: "Ayush", id: 400))
//        employeeArray.append(Employees.init(name: "Atharva", id: 300))
//        employeeArray.append(Employees.init(name: "Sagar", id: 200))
        
        arrayOfEmployee = [
            ["Pranay" , "Atharva" , "Sagar"],
            ["Vegetable" , "Fruit"],
            ["Plane", "Bike" , "Car"]
        ]
        
        arrarOfHeader = ["Names" , "Dishes" , "Vehicle"]
        //setting up the data source and delegate
        TableView.dataSource = self
        TableView.delegate = self
        
        
        let header = UIView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: 100))
        
        let footer = UIView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: 100))
        
        header.backgroundColor = .green
        footer.backgroundColor = .yellow
        
        let label = UILabel(frame: header.bounds)
        label.text = "Employees"
        header.addSubview(label)
        
        
        TableView.tableHeaderView = header
        TableView.tableFooterView = footer
    }
}

//delegation extension
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
}


//dataSource Extension
extension ViewController : UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: 20))
        
        let label = UILabel(frame: headerView.bounds)
        label.text = arrarOfHeader[section]
        label.textAlignment = .natural
        headerView.addSubview(label)
    
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 5.0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
       return UIView()
    }
    //no of selection
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfEmployee.count
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfEmployee[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arrayOfEmployee[indexPath.section][indexPath.row]
        cell.setSelected(true, animated: true)
        cell.backgroundColor = .cyan
        return cell
        
    }
    
      
}
