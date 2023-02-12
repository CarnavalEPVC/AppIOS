//
//  Concorrente4.swift
//  CarnavalEPVC
//
//  Created by Gustavo on 11/02/2023.
//

import Foundation
import UIKit
import Firebase

class Concorrente4: UIViewController{
    var vezes: Int=0;
    
    @IBOutlet weak var ratingStackView: RatingViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func votarButtonClicked(_ sender: Any){
        
        
        if (vezes == 0){
            let databaseReference = Database.database().reference()
            databaseReference.child("ios").child("concursos").child("reis").child("votos").child("4Daniel").childByAutoId().setValue(ratingStackView.starsRating)
            vezes += 1;
        }
        else{
            let cert = UIAlertController(title: "Já Votou", message: "Clique em Próximo Concorrente", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            cert.addAction(okAction)
            self.present(cert, animated: true, completion: nil)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

