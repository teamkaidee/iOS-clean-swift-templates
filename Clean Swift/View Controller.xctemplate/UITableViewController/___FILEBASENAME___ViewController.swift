import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: class {
  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UITableViewController, ___VARIABLE_sceneName___DisplayLogic {
  //@IBOutlet weak var nameTextField: UITextField!

  var interactor: ___VARIABLE_sceneName___BusinessLogic!
  var router: (___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)!

  // MARK: - Setup
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  private func setup() {
    let viewController = self
    let interactor = ___VARIABLE_sceneName___Interactor()
    let presenter = ___VARIABLE_sceneName___Presenter()
    let router = ___VARIABLE_sceneName___Router()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }

  // MARK: - View lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    doSomething()
  }

  // MARK: - Actions
  func doSomething() {
    let request = ___VARIABLE_sceneName___.Something.Request()
    interactor.doSomething(request: request)
  }

  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
    //nameTextField.text = viewModel.name
  }
}
