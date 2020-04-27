# MemoryLeak
This repo contains memory leak examples

class SecondViewController: UIViewController {

    var aNumber: Int = 0
    lazy var incrementNumber:(Int)->Void = { value in
        self.aNumber += value
        print(self.aNumber);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        incrementNumber(3)
    }
    
    
    deinit {
        print("deinit SecondViewController")
    }
}
