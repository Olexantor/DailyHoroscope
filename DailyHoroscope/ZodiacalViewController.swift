//
//  ZodiacalViewController.swift
//  DailyHoroscope
//
//  Created by Александр on 02.03.2021.
//

import UIKit

enum requestURLS: String {
    case aries = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:aries"
    case taurus = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:taurus"
    case gemini = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:gemini"
    case cancer = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:cancer"
    case leo = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:leo"
    case virgo = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:virgo"
    case libra = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:libra"
    case scorpio = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:scorpio"
    case sagittarius = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:sagittarius"
    case capricorn = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:capricorn"
    case aquarius = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:aquarius"
    case pisces = "https://json.astrologyapi.com/v1/sun_sign_prediction/daily/:pisces"
}

class ZodiacalViewController: UICollectionViewController {

    private let zodiacSigns = ZodiacSign.getZodiacInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

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

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

//extension ZodiacalViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: UIScreen.main.bounds.width, height: 240)
//    }
//    func collectionView(_: UICollectionView, layout: UICollectionViewLayout, insetForSectionAt: Int) -> UIEdgeInsets {
//        UIEdgeInsets(top: 40, left: UIScreen.main.bounds.width - 200, bottom: 40, right: UIScreen.main.bounds.width - 200)
//    }
//}
