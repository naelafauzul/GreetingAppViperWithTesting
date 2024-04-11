//
//  ViewController.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usecase = Injection.init().provideUseCase()
        let presenter = MessagePresenter(useCase: usecase)
        let message = presenter.getMessage(name: "Dicoding")
        
        welcome.text = message.welcomeMessage
    }
}

