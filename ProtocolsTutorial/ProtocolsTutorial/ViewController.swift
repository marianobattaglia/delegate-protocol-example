//
//  ViewController.swift
//  ProtocolsTutorial
//
//  Created by Mariano Martin Battaglia on 30/01/2023.
//

import UIKit

// 4. Le coloco el protocolo creado al VC
class ViewController: UIViewController {
    @IBOutlet weak var stringSelectedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        setNavigationItems()
    }

    @IBAction func open2ndScreenPressed(_ sender: Any) {
        let vc = VC2()
        // 5. Le paso el propio VC como delegado a la próxima VC
        vc.delegate = self
        navigationController?.present(vc, animated: true)
    }
    
    @IBAction func openPostsList(_ sender: Any) {
        let vc = PostsListViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
//    private func setNavigationItems() {
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Posts", style: .plain, target: self, action: #selector(navButtonTapped))
//    }
//
//    @objc private func navButtonTapped() {
//        let vc = PostsListViewController()
//        navigationController?.pushViewController(vc, animated: true)
//    }
    
}

extension ViewController: StringProtocol {
    // 6. Damos funcionalidad al método del Protocol para que cuando se ejecute en otra vista, este tome el parametro y lo coloque en el Label
    func didSelectString(_ string: String) {
        stringSelectedLabel.text = string
    }
    
    func stringLenght(_ count: Int) {
        print("count:", count)
    }
    
}
