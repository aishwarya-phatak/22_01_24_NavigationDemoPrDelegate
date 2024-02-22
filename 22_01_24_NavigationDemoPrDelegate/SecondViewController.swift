//
//  SecondViewController.swift
//  22_01_24_NavigationDemoPrDelegate
//
//  Created by Vishal Jagtap on 22/02/24.
//

import UIKit
protocol StudentDataPass{
    func passStudentData(student : Student)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var studentBackDataPassDelegate : StudentDataPass?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnBack(_ sender: Any) {
        let extractedStudentName = self.nameTextField.text
        let extractedMiddleName = self.middleNameTextField.text
        let extractedLastName = self.lastNameTextField.text
        let studentObject = Student(
            name: extractedStudentName!,
            middleName: extractedMiddleName!,
            lastName: extractedLastName!)
        
        guard let studentBackDataPassDelegate1 = studentBackDataPassDelegate else { return }
        studentBackDataPassDelegate1.passStudentData(student:studentObject)
        self.navigationController?.popViewController(animated: true)
    }
}
