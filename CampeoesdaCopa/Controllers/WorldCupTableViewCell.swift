//
//  WorldCupTableViewCell.swift
//  CampeoesdaCopa
//
//  Created by Phelipe Campos on 12/06/18.
//  Copyright © 2018 Lopes. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    @IBOutlet weak var lbCountry: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func prepare(with cup: WorldCup){
        lbWinner.text = cup.winner
        lbVice.text = cup.vice
        ivWinner.image = UIImage(named: cup.winner)
        ivVice.image = UIImage(named: cup.vice)
        lbYear.text = "\(cup.year)"
        lbCountry.text = cup.country
        lbWinnerScore.text = cup.winnerScore
        lbViceScore.text = cup.viceScore
    }

}
