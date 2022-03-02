//
//  ProfileDetailsViewController.swift
//  Person Details
//
//  Created by Ahmed Taha on 27/02/2022.
//

import UIKit

class ProfileDetailsViewController: UIViewController, Communicator {
    
    @IBOutlet weak var personNameLbl: UILabel!
    
    @IBOutlet weak var personAgeLbl: UILabel!
    
    @IBOutlet weak var facultyLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func editBtn(_ sender: Any) {
        
        if let vc = self.storyboard?.instantiateViewController(identifier: "PEVC") as? ProfileEditingViewController {
            
            vc.delegate = self
            
            vc.name = personNameLbl.text!
            vc.age = personAgeLbl.text!
            vc.faculty = facultyLbl.text!

            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
    func editDetails(name: String, age: Int, faculty: String) {
        
        personNameLbl.text = name
        personAgeLbl.text = String(age)
        facultyLbl.text = faculty

    }

}
