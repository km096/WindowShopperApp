//
//  ViewController.swift
//  window-shopper
//
//  Created by ME-MAC on 12/16/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var txtWage: CurrencyTextField!
    @IBOutlet weak var txtPrice: CurrencyTextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblHours: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        txtWage.inputAccessoryView = calcBtn
        txtPrice.inputAccessoryView = calcBtn
        
        lblResult.isHidden = true
        lblHours.isHidden = true

    }
    
    @objc func calculate() {
        if let txtWage = txtWage.text, let txtPrice = txtPrice.text {
            if let wage = Double(txtWage), let price = Double(txtPrice) {
                view.endEditing(true)
                lblResult.isHidden = false
                lblHours.isHidden = false
                lblResult.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorTapped(_ sender: UIButton) {
        lblResult.isHidden = true
        lblHours.isHidden = true
        txtWage.text = ""
        txtPrice.text = ""
    }
    
}

