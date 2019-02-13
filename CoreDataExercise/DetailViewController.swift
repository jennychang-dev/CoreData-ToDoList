//
//  DetailViewController.swift
//  CoreDataExercise
//
//  Created by Jenny Chang on 13/02/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priorityLevel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            
            guard let title = titleLabel else {
                print("error with title")
                return
            }
            guard let moreInfo = detailDescriptionLabel else {
                print("error with detail")
                return
            }
            guard let priorityLevel = priorityLevel else {
                print("error with priority level")
                return
            }
            title.text = detail.title
            moreInfo.text = detail.todoDetail
            priorityLevel.text = String(detail.priorityNumber)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            //configureView()
        }
    }


}

