//
//  ViewController.swift
//  tableFinal
//
//  Created by E5000846 on 05/06/24.
//

import UIKit

class ViewController: UIViewController, BlogTableViewCellDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    var arrayofData = [DataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareData()
        TableView.delegate = self
        TableView.dataSource = self
        
        for element in arrayofData {
            print("Element type: \(element.type)")
        }
    }

    func prepareData(){
        arrayofData = TableSourceData.dataPrepare()
        print(arrayofData.count)
    }
    

}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hello")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let element = arrayofData[indexPath.row]
        
        switch element.type{
        case .image:
            return 180
        case .textWithimage:
            return 250
        }
    }
}

extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayofData.count
    }
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = arrayofData[indexPath.row]
        
        switch element.type {
        case .image:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: BrandLabelTableViewCell.identifier, for: indexPath) as? BrandLabelTableViewCell else {
                print("Failed to dequeue BrandLabelTableViewCell")
                return UITableViewCell()
            }
            if let imageElement = element as? imageModel {
                cell.backgroundColor = .systemGray2 
                cell.cellImage.image = imageElement.image
            }
            return cell
            
            
        case .textWithimage:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: BlogTableViewCell.identifier, for: indexPath) as? BlogTableViewCell
            else {
                print("Failed to dequeue BlogTableViewCell")
                return UITableViewCell()
            }
            
            if let textwithImage = element as? imageWithTextModel{
                cell.backgroundColor = .systemGray4
                
                cell.blogDesc.text = textwithImage.desc
                cell.blogImage.image = textwithImage.image
                cell.nameLb.text = textwithImage.text
                cell.delegate = self
            }
            
            return cell
        }
    }
    
    func presentAlert(from cell: BlogTableViewCell) {
           let alert = UIAlertController(title: "Description", message: "This is a blog Type TableView Cell", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           alert.addAction(okAction)
           present(alert, animated: true, completion: nil)
       }
}


//            if let textImageElement = element as? imageWithTextModel {
//                print(textImageElement)
//                cell.blogImage.image = #imageLiteral(resourceName: "image2")
//                cell.nameLb.text = "n mn "
//                cell.blogDesc.text = "bhjmbn ,jhnlk,"
//            } else {
//                print("Failed to cast element to imageWithTextModel")
//            }
