//
//  PredictionViewController.swift
//  DailyHoroscope
//
//  Created by Александр on 02.03.2021.
//

import UIKit

class PredictionViewController: UIViewController {
    @IBOutlet var predictionLabel: UILabel!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var predictionImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        predictionImageView.image = UIImage(
            named: DataManager.shared.predictionImageNames.randomElement()
                ?? DataManager.shared.predictionImageNames[1]
        )
        predictionLabel.text = "Test"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
