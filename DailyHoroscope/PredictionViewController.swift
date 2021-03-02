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
    var selectedCell = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        predictionImageView.image = UIImage(
            named: DataManager.shared.predictionImageNames.randomElement()
                ?? DataManager.shared.predictionImageNames[1]
        )
        navigationItem.title = "Prediction for \(zodSigns[selectedCell].name)"
        getResponseWithPrediction()
//        predictionLabel.text = prediction.horoscope
    }
    

   
    //MARK: Networking
    private func getResponseWithPrediction() {
        print(zodSigns[selectedCell].URL)
        guard let url = URL(string: zodSigns[selectedCell].URL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else { return }
            
            do {
                let prediction = try JSONDecoder().decode(Prediction.self, from: data)
                print(Prediction.self)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
