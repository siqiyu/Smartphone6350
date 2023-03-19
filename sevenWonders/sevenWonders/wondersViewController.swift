//
//  wondersViewController.swift
//  sevenWonders
//
//  Created by yusiqi on 3/18/23.
//

import UIKit

class wondersViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var txtDetails: UITextView!
    
    let details = ["The Pyramid of Khufu is the largest of the ancient Egyptian pyramids. The tower is 146.59 meters high. Due to long-term weathering, the top peeled off by 10 meters. It is now 136.5 meters high, which is equivalent to the height of a 40-story building. The stones of different sizes weigh from 1.5 tons to 50 tons, and the total weight of the tower is about 6.84 million tons. Its scale is the largest among the 110 pyramids found in Egypt.", "Zeus is the god of the gods in Greek mythology and the main god of Olympia. The statue of Zeus built for worship is the largest indoor statue in the world. The Temple of Zeus where the statue of Zeus is located is the birthplace of the Olympic Games. Philo of Byzantium wrote about the seven wonders of the world and said: We are proud of the other six wonders, and we are in awe of the statue of Zeus.", "The Temple of Artemis is the temple of the goddess Artemis in Greek mythology (the Bible is translated as Artemis, she is the goddess of hunting and nature, fertility and newborns), and it ranks among the seven largest temples in the ancient world. One of the miracles, it is 425 feet long, 230 feet wide, and has 126 marble columns 60 feet high. It is said that the construction time was as long as 120 years (by comparison, it took only 46 years for King Herod to build the Temple in Jerusalem).", "The Mausoleum of Mausolus is located in Halicarnassus, in the southwest of Turkey. The bottom building is rectangular, with an area of 40 meters (120 feet) by 30 meters (100 feet) and a height of 45 meters (140 feet). The seat wall is 20 meters high, the column is 12 meters high, and the pyramid is 7 meters high. The carriage statue at the top is surrounded by a 6-meter-high podium wall, and the side is decorated with stone statues. The statue at the top is an ancient chariot pulled by four horses.", "The Lighthouse of Alexandria, whose ruins are located on Pharos Island outside Alexandria, Egypt, was built during the reign of Ptolemy I and Ptolemy II in 300-280 BC. The lighthouse was more than 100 meters (330 ft) high and had lights to guide sailors.", "The Hanging Garden, also known as the Hanging Garden, is one of the Seven Wonders of Ancient Times. Legend has it that Nebuchadnezzar II (Nebuchadnezzar II) of the Kingdom of Babylon built it near the city of Babylon for his homesick princess Amyitis in the 6th century BC.", "The Colossus of Rhodes is one of the Seven Wonders of the Ancient World. The colossus was built at the entrance to the port of Rhodes (Greek: Ρόδος (πόλη), English: city of Rhodes) and was completed in 282 BC."]
    
    var segueIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtDetails.text = details[segueIndex]
    }
    
    
}
