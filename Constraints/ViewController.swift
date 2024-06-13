//
//  ViewController.swift
//  Constraints
//
//  Created by E5000861 on 06/06/24.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var blueView: UIView!
    
    @IBOutlet weak var greyView: UIView!
    
    @IBOutlet weak var blackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        blueView.translatesAutoresizingMaskIntoConstraints = false
        greyView.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        applyConstraints()
    }

    func applyConstraints() {
        
              // constraints for blueView
               NSLayoutConstraint.activate([
                   blueView.topAnchor.constraint(equalTo: view.topAnchor),
                   blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   blueView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3)
               ])
               
               // constraints for greyView
               NSLayoutConstraint.activate([
                   greyView.topAnchor.constraint(equalTo: blueView.bottomAnchor),
                   greyView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   greyView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   greyView.heightAnchor.constraint(equalTo: blueView.heightAnchor)
               ])
               
               // constraints for blackView
               NSLayoutConstraint.activate([
                   blackView.topAnchor.constraint(equalTo: greyView.bottomAnchor),
                   blackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   blackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   blackView.heightAnchor.constraint(equalTo: blueView.heightAnchor)
               ])
        
    }
}

