//
//  MainViewController.swift
//  UI-NoStoryboard
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/06.
//

import UIKit

class MainViewController: UIViewController {
    
    var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        
    }
    
    func configureUI() {
        
        view.backgroundColor = .white
        
        let safeArea = view.layoutMarginsGuide
        
        textLabel = UILabel()
        textLabel.text = "Hi, There!"
        
        view.addSubview(textLabel)
        
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 100).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 10).isActive = true
        
        
        let button = UIButton()
        button.setTitle("Answer", for: .normal)
        
        view.addSubview(button)
        
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor).isActive = true
        
        button.setTitleColor(.darkGray, for: .normal)
        
        
        button.addTarget(self, action: #selector(answerAction), for: .touchUpInside)
        
    }
    
    
    @objc func answerAction() {
        textLabel.text = "Hey there!,  My name is Carrington.."
    }
    



}
