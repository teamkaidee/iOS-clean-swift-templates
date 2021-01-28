import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: class {
  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UICollectionViewController, ___VARIABLE_sceneName___DisplayLogic {
  //@IBOutlet weak var nameTextField: UITextField!

  var interactor: ___VARIABLE_sceneName___BusinessLogic = ___VARIABLE_sceneName___Interactor()
  var router: (___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing) = ___VARIABLE_sceneName___Router()

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
    interactor.presenter.viewController = self
    router.viewController = self
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
