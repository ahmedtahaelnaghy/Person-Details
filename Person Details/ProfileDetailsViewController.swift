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
    
    @IBOutlet weak var personFacultyLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func editBtn(_ sender: Any) {
        
        if let vc = self.storyboard?.instantiateViewController(identifier: "PEVC") as? ProfileEditingViewController {
            
            vc.delegate = self
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
    func editName(name: String, age: Int, faculty: String) {
        
        personNameLbl.text = name
        personAgeLbl.text = String(age)
        personFacultyLbl.text = faculty

    }

}
