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
    
    private let zodSigns = ZodiacSign.getZodiacInfo()
    private var prediction: Prediction!
    var selectedCell = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        activityIndicator.startAnimating()
//        activityIndicator.hidesWhenStopped = true
        predictionImageView.image = UIImage(
            named: DataManager.shared.predictionImageNames.randomElement()
                ?? DataManager.shared.predictionImageNames[1]
        )
        navigationItem.title = "Prediction for \(zodSigns[selectedCell].name)"

        if let prediction = prediction {
            predictionLabel.text = String(prediction.dailyhoroscope.count)
        }
    }
}


//MARK: Networking
extension PredictionViewController {
    func getResponseWithPrediction() {
        guard let url = URL(string: DataManager.shared.predictionURL[selectedCell]) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else { return }
            
            do {
                self.prediction = try JSONDecoder().decode(Prediction.self, from: data)
                
            } catch let error {
                print(error)
            }
        }.resume()
    }
}

