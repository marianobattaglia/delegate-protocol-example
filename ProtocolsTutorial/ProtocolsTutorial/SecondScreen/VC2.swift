//
//  VC2.swift
//  ProtocolsTutorial
//
//  Created by Mariano Martin Battaglia on 30/01/2023.
//

import UIKit

// 1. Protocolo que tome un String y lo pase al VC1
protocol StringProtocol {
    func didSelectString(_ string: String)
    func stringLenght(_ count: Int)
}

class VC2: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    // 2. Creo variable 'delegate' en el VC
    var delegate : StringProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismissButtonPressed(_ sender: Any) {
        // 3. Llamo al metodo del Protocol y le paso el parametro colocado en el TextField
        delegate.didSelectString(textField.text!)
        delegate.stringLenght(textField.text!.count)
        dismiss(animated: true)
    }
    
    
}
