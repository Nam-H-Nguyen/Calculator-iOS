//
//  ViewController.swift
//  Calculator
//
//  Created by NomNomNam on 2/19/18.
//  Copyright © 2018 NamHNguyen. All rights reserved.
//

import UIKit
import Expression

class ViewController: UIViewController {
    
    @IBOutlet weak var calcNumLabel: UILabel!
    
    var sbResult = ""
    
    @IBAction func calcButtonPressed(_ sender: Any) {
    }
    
    @IBAction func acBtn(_ sender: Any) {
        sbResult = ""
        calcNumLabel.text = ""
    }
    
    @IBAction func leftParenBtn(_ sender: Any) {
        sbResult += "("
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func rightParenBtn(_ sender: Any) {
        sbResult += ")"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func divBtn(_ sender: Any) {
        sbResult += "/"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func multBtn(_ sender: Any) {
        sbResult += "*"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func subBtn(_ sender: Any) {
        sbResult += "-"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func addBtn(_ sender: Any) {
        sbResult += "+"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func equalBtn(_ sender: Any) {
        let expression = Expression(sbResult)
        do {
            let result = try expression.evaluate()
            calcNumLabel.text = "\(result)"

            print("Result: \(result)")
        } catch {
            print("Error: \(error)")
        }
    }
    
    @IBAction func decBtn(_ sender: Any) {
        sbResult += "."
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func zeroBtn(_ sender: Any) {
        sbResult += "0"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        sbResult += "1"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        sbResult += "2"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        sbResult += "3"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        sbResult += "4"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        sbResult += "5"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        sbResult += "6"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func sevenBtn(_ sender: Any) {
        sbResult += "7"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        sbResult += "8"
        calcNumLabel.text = "\(sbResult)"
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        sbResult += "9"
        calcNumLabel.text = "\(sbResult)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

