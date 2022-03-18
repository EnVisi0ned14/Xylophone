import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName : sender.currentTitle!)
        dimKey(keyName : sender)
        
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func dimKey(keyName : UIButton) {
        keyName.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            keyName.alpha = 1
        }
    }
}
