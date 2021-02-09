//
//  ViewController.swift
//  App1
//
//  Created by Gencay Sahin on 6.02.2021.
//

import UIKit

class ViewController: UIViewController {

    var viewControllerViewModel = ViewControllerViewModel()
    
    @IBOutlet weak var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

//MARK: Events
extension ViewController{
    @IBAction func openSecondAppButtonTapped(_ sender: UIButton) {
        print("clicked")
        guard let url = viewControllerViewModel.getSecondAppUrl(message: txtMessage.text) else { return }
        UIApplication.shared.open(url) { (result) in
            if result {
                print("The app has opened succesfully!")
            }
        }
    }
}

