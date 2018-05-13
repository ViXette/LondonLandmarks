//
//  Created by ViXette on 12/05/2018.
//

import UIKit


class TableViewController: UITableViewController {
	
	var titleList = ["Big Ben", "Buckingham Palace", "London Eye", "St-Pauls Cathedral", "Tower Bridge", "Westminster Abbey"]

	var descriptionList = ["London SW1A 0AA", "London SW1A 1AA", "London SE1 7PB", "London EC4M 8AD", "London SE1 2UP", "London SW1P 3PA"]

	var imageList = ["BigBen", "BuckinghamPalace", "LondonEye", "St-Pauls", "TowerBridge", "WestminsterAbbey"]

	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Uncomment the following line to preserve selection between presentations
		// self.clearsSelectionOnViewWillAppear = false
		
		self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
	}

	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return titleList.count
	}


	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

		cell.cellTitle.text = titleList[indexPath.row]
		cell.cellDescription.text = descriptionList[indexPath.row]
		cell.cellImageView.image = UIImage(named: imageList[indexPath.row])

		return cell
	}


//	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		super.tableView(tableView, didSelectRowAt: indexPath)
//	}

	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
	// Return false if you do not want the specified item to be editable.
	return true
	}
	*/
	
	/*
	// Override to support editing the table view.
	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
	if editingStyle == .delete {
	// Delete the row from the data source
	tableView.deleteRows(at: [indexPath], with: .fade)
	} else if editingStyle == .insert {
	// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}
	}
	*/
	
	/*
	// Override to support rearranging the table view.
	override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
	
	}
	*/
	
	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
	// Return false if you do not want the item to be re-orderable.
	return true
	}
	*/

	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if (segue.identifier == "showDetail") {
			let detailVC = segue.destination as! DetailViewController

			if let indexPath = self.tableView.indexPathForSelectedRow {
				detailVC.sendData1 = titleList[indexPath.row]
				detailVC.sendData2 = descriptionList[indexPath.row]
				detailVC.sendData3 = imageList[indexPath.row]
			}
		}
	}

	
}
