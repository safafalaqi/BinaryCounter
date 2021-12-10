//
//  ViewController.swift
//  Binary Counter
//
//  Created by Safa Falaqi on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    var total =  0
    
    var binary = [1,10,100,1000,10000,100000,1000000,10000000,100000000,1000000000,10000000000,100000000000,1000000000000,10000000000000]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    
}


extension ViewController: UITableViewDataSource{
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCounterCell") as! BinaryCounterCell
         
         cell.binaryLabel?.text = String(binary[indexPath.row])
         cell.delegate = self
        
        return cell
        
    }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return binary.count
    }
    
    
}

extension ViewController:BinaryCountDelegate
{
    func add(number: String) {
   
        total +=  (Int(number))!
        totalLabel.text = "Total: \(total)"
        
    }
    
    func subtract(number: String) {
        
             total -=  (Int(number))!
             totalLabel.text = "Total: \(total)"
    }
}

