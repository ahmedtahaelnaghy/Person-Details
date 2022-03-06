//
//  ProfileEditingViewController.swift
//  Person Details
//
//  Created by Ahmed Taha on 27/02/2022.
//

import UIKit

class ProfileEditingViewController: UIViewController {
    
    @IBOutlet weak var personNameTextField: UITextField!
    
    @IBOutlet weak var personAgeTextField: UITextField!
    
    @IBOutlet weak var facultyTextField: UITextField!
        
    var delegate: Communicator?
    
    var name :String = ""
    var age :String = ""
    var faculty : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personNameTextField.text = name
        personAgeTextField.text = age
        facultyTextField.text = faculty
        
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        
        let name = personNameTextField.text!
        let faculty = facultyTextField.text!
        
        guard let age = Int(personAgeTextField.text!) else{
            
            return
            
        }
        
        if (name.isEmpty) || (faculty.isEmpty) || (String(age).isEmpty) {
            
            return
            
        }else {
            
            delegate?.editDetails(name: name, age: age, faculty: faculty)

        }
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
