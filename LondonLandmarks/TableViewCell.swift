//
//  Created by ViXette on 12/05/2018.
//

import UIKit


class TableViewCell: UITableViewCell {
	
	@IBOutlet weak var cellImageView: UIImageView!
	@IBOutlet weak var cellTitle: UILabel!
	@IBOutlet weak var cellDescription: UILabel!
	
	
	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}
	
	
	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		
		// Configure the view for the selected state
	}
	
}
