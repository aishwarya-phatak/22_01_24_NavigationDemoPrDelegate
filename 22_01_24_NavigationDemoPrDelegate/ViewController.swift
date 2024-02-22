//
//  ViewController.swift
//  22_01_24_NavigationDemoPrDelegate
//
//  Created by Vishal Jagtap on 22/02/24.
//

import UIKit

class ViewController: UIViewController,StudentDataPass{

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    var secondViewController : SecondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnNext(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.studentBackDataPassDelegate = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func passStudentData(student: Student) {
        self.nameLabel.text = student.name
        self.middleNameLabel.text = student.middleName
        self.lastNameLabel.text = student.lastName
    }
}
