import UIKit
import PlaygroundSupport
import Alamofire
import AlamofireObjectMapper
import SDWebImage
import ObjectMapper

typealias RedditPostCallBack = ([RedditPost]?, Error?) -> Void

struct RedditPost {
    var title = ""
    var thumbnailURLString = ""
}

class RedditViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    fileprivate var posts: [RedditPost] = []
    fileprivate var after: String? = nil
    fileprivate var isLoading = false
    fileprivate let reuseIdentifier = String(describing: UITableViewCell.self)
    override func viewDidLoad() {
        replaceWithInteracebuilder()
    }

    private func replaceWithInteracebuilder() {
        super.viewDidLoad()
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        tableView.constrainToSuperview()
        self.tableView = tableView
    }

    @objc private func refresh() {

    }

    fileprivate func loadNext() {
    }

}

extension RedditViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }

}

extension RedditViewController: UITableViewDelegate {}

extension RedditViewController: UIScrollViewDelegate {}

extension UIView {
    func constrainToSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        let attributes: [NSLayoutAttribute] = [.leading, .trailing, .top, .bottom]
        attributes.forEach { attribute in
            NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: self.superview, attribute: attribute, multiplier: 1, constant: 0).isActive = true
        }
    }
}

//PlaygroundPage.current.finishExecution()

let r = RedditViewController()
r.view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
PlaygroundPage.current.liveView = r.view
PlaygroundPage.current.needsIndefiniteExecution = true








