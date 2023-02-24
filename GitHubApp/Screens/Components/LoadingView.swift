import UIKit

final class LoadingView: UIView {
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()
    
    private lazy var loadingLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Loading..."
        label.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
      
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        addSubview(stackView)
        self.stackView.addArrangedSubview(loadingLabel)
        self.stackView.addArrangedSubview(activityIndicatorView)
        
    }
    
    func setupConstraints(){
        configureConstraintsStack()

    }
    
    func configureConstraintsStack(){

        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}
