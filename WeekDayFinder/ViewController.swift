//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Sergey on 23/09/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel:UILabel!
    
    @IBAction func findWeekdDay(){
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        //make date from components
        
        guard let day = dateTextField.text, let month = monthTextField.text, let year = yearTextField.text else {return}
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else {return}
        
        //extract day of the week
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date)
        
        resultLabel.text = weekDay
        
    }

}

