//
//  PropertyDetailVC.swift
//  GattineniRealEstateApp
//
//  Created by Manideep Gattineni on 4/4/24.
//

import UIKit
import Lottie

class PropertyDetailVC: UIViewController {

    var name:String = ""
       var address = ""
       var price = ""
       var image = ""
       var bathroom = -1
       var bedroom = -1
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLBL.text = "Property:\(name)"
               self.addressLBL.text = "Address:\(address)"
               self.BathroomLBL.text = "Bathroom:\(bathroom)"
               self.bedroomLBL.text = "Bedroom:\(bedroom)"
               self.priceLBL.text = "Price:\(price)"
               self.PropertyIV.image = UIImage(named: image)

               AnimationView.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var PropertyIV: UIImageView!
    
    @IBOutlet weak var PurchaseBtn: UIButton!
     @IBOutlet weak var AnimationView:LottieAnimationView!
    
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var addressLBL: UILabel!
    @IBOutlet weak var priceLBL: UILabel!
    @IBOutlet weak var bedroomLBL: UILabel!
    @IBOutlet weak var BathroomLBL: UILabel!
    @IBAction func PurchaseBTN(_ sender: UIButton) {
        var amt = 0.0
                let total = Double(price)
                amt = 0.05*total!
                amt += total!
                AnimationView.alpha=1
                
                AnimationView.contentMode = .scaleAspectFit
                AnimationView.loopMode = .playOnce
                AnimationView.play(){ _ in
                    self.AnimationView.alpha=0
                    let alert = UIAlertController(title: "congratulations", message: "you have purchased the property. Total amount is $\(amt)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { _ in
                        for(index,prop) in property.data.enumerated(){
                            if(prop.name == self.name){
                                property.Purchased.append(prop)
                                property.data.remove(at: index)
                            }
                        }
                        
                    }))
                    self.present(alert,animated: true)
                    self.PurchaseBtn.isEnabled = false
                }
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
