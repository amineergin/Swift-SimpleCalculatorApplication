//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Intala Lab on 13.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstText: UITextField!
    
    
    @IBOutlet weak var SecondText: UITextField!
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sumClicked(_ sender: Any) {
        
        //let firstNumber = Int(FirstText.text!)! //Birinci ünlem FirstText'ten girdi geleceğini garantiler.
        //let secondNumber = Int(SecondText.text!)! //İkinci ünlem bunu kesinlikle integer'a dönüştürebilirsin demek.
        
        if let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int(SecondText.text!){
                let result = firstNumber + secondNumber
                ResultLabel.text = String(result)
            }else{
                let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
            }
        }else{
            let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int(SecondText.text!){
                let result = firstNumber - secondNumber
                ResultLabel.text = String(result)
            }else{
                let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
            }
        }else{
            let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int(SecondText.text!){
                let result = firstNumber * secondNumber
                ResultLabel.text = String(result)
            }else{
                let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
            }
        }else{
            let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }

    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int(SecondText.text!){
                if secondNumber != 0{
                    let result = firstNumber / secondNumber
                    ResultLabel.text = String(result)
                }else{
                    let alertController = UIAlertController(title: "Error", message: "Number not divisible by zero!", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                }
            }else{
                let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
            }
        }else{
            let alertController = UIAlertController(title: "Error", message: "Please enter a number!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}

