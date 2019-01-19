//
//  SendOrderViewController.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SendOrderViewController: UIViewController {

    @IBOutlet weak var howManyItemsLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userAddressTextField: UITextField!
    
    var shoppingItemController: ShoppingItemController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendOrderButtonTapped(_ sender: Any) {
        
    }
    
}
