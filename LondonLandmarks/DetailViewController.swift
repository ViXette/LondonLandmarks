//
//  Created by ViXette on 12/05/2018.
//

import UIKit
import MapKit


class DetailViewController: UIViewController {

	var sendData1 : String!
	var sendData2: String!
	var sendData3: String!

	@IBOutlet weak var detailImageView: UIImageView!
	@IBOutlet weak var detailTitle: UILabel!
	@IBOutlet weak var detailDescription: UILabel!
	@IBOutlet weak var detailText: UITextView!
	@IBOutlet weak var detailMapView: MKMapView!
	@IBOutlet weak var directionButton: UIButton!

	var latitude = 0.0
	var longitude = 0.0
	
	override func viewDidLoad() {
		super.viewDidLoad()

		directionButton.layer.cornerRadius = 5
		detailMapView.layer.cornerRadius = 5

		self.navigationItem.title = sendData1

		detailTitle.text = sendData1
		detailDescription.text = sendData2
		detailImageView.image = UIImage(named: sendData3)

		if detailTitle.text == "Big Ben" {
			detailText.text = "Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower as well."

			latitude = 51.50072919999999
			longitude = -0.12462540000001354
		}

		if detailTitle.text == "Buckingham Palace" {
			detailText.text = "Buckingham Palace is the London residence and administrative headquarters of the reigning monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality."

			latitude = 51.501364
			longitude = -0.1418899999999894
		}

		if detailTitle.text == "London Eye" {
			detailText.text = "The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London. As of mid-January 2015, it has been known as the Coca-Cola London Eye. The structure is 443 feet tall and the wheel has a diameter of 394 feet."

			latitude = 51.50090849999999
			longitude = -0.1194981999999527
		}

		if detailTitle.text == "St-Pauls Cathedral" {
			detailText.text = "St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade 1 listed building."

			latitude = 51.513191
			longitude = -0.09759899999994559
		}

		if detailTitle.text == "Tower Bridge" {
			detailText.text = "Tower Bridge is a combined bascule and suspension bridge in London built between 1886 and 1894."

			latitude = 51.5049885
			longitude = -0.07570420000001832
		}

		if detailTitle.text == "Westminster Abbey" {
			detailText.text = "Westminster Abbey, formally titled the Collegiate Church of St Peter at Westminster, is a large, mainly Gothic abbey church in the City of Westminster, London, just to the west of the Palace of Westminster."

			latitude = 51.4994174
			longitude = -0.1275705000000471
		}

		let span = MKCoordinateSpanMake(0.005, 0.005)
		let center = CLLocationCoordinate2DMake(latitude, longitude)
		let region = MKCoordinateRegion(center: center, span: span)

		detailMapView.setRegion(region, animated: true)

		let pinAnnotation = MKPointAnnotation()
		pinAnnotation.coordinate = center
		pinAnnotation.title = detailTitle.text
		pinAnnotation.subtitle = detailDescription.text

		detailMapView.addAnnotation(pinAnnotation)
	}
	
	
	@IBAction func directionsTapped(_ sender: UIButton) {
		UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
	}
	
}
