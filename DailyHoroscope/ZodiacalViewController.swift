//
//  ZodiacalViewController.swift
//  DailyHoroscope
//
//  Created by Александр on 02.03.2021.
//

import UIKit

class ZodiacalViewController: UICollectionViewController {

    private let zodiacSigns = ZodiacSign.getZodiacInfo()
    private var select = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()
    }
    
     //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let predVC = segue.destination as? PredictionViewController else { return }
        predVC.selectedCell = select
        predVC.getResponseWithPrediction()
       
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "zodiacCell", for: indexPath) as! ZodiacalCell
        cell.zodiacNameLabel.text = zodiacSigns[indexPath.item].name
        cell.zodiacPeriodLabel.text = zodiacSigns[indexPath.item].period
        cell.zodiacImageView.image = UIImage(named: zodiacSigns[indexPath.item].name)
       
        return cell
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        select = indexPath.item
        performSegue(withIdentifier: "showPrediction", sender: nil)
    }
   

}
