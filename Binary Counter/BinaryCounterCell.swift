//
//  BinaryCounterCell.swift
//  Binary Counter
//
//  Created by Safa Falaqi on 09/12/2021.
//

import UIKit

protocol BinaryCountDelegate {
    
    func add(number:String)
    func subtract(number:String)
}
class BinaryCounterCell: UITableViewCell {

   
    var delegate: BinaryCountDelegate?
    
    @IBOutlet weak var binaryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate?.add(number: (self.binaryLabel?.text)!)
    }
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        delegate?.subtract(number: (self.binaryLabel?.text)!)
    }
    

}
