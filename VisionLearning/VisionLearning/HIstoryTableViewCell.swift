//
//  HIstoryTableViewCell.swift
//  VisionLearning
//
//  Created by Chan Paul on 19/12/2017.
//  Copyright © 2017年 Chan Paul. All rights reserved.
//

import UIKit

class HIstoryTableViewCell: UITableViewCell {

    //MARKS: Properties
    var things = [Thing]();
    
    @IBOutlet weak var englishName: UILabel!
    @IBOutlet weak var imageOfTheThing: UIView!
    @IBOutlet weak var translatedName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //MARK: Private Methods
    private func loaddata(){
        let imageOfTheThing1 = UIImage(named: "lemon.jpeg")
        let imageOfTheThing2 = UIImage(named: "Orange.jpeg")
        let imageOfTheThing3 = UIImage(named: "Banana.jpeg")
        
        
        guard let thing1 = Thing(englishName: "Lemon", photo: imageOfTheThing1, translatedName: "檸檬") else {
            fatalError("Unable to instantiate thing1")
        }
        
        guard let thing2 = Thing(englishName: "Orange", photo: imageOfTheThing2, translatedName: "橙子") else {
            fatalError("Unable to instantiate thing2")
        }
        
        guard let thing3 = Thing(englishName: "Banana", photo: imageOfTheThing3, translatedName: "香蕉") else {
            fatalError("Unable to instantiate thing3")
        }
        
        things += [thing1, thing2, thing3]
        
    }
}
