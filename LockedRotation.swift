extension UINavigationController {
    public override func supportedInterfaceOrientations() -> Int {
	return visibleViewController.supportedInterfaceOrientations()
    }
    public override func shouldAutorotate() -> Bool {
	return visibleViewController.shouldAutorotate()
    }
}

extension UITabBarController {
    public override func supportedInterfaceOrientations() -> Int {
	if let selected = selectedViewController {
	    return selected.supportedInterfaceOrientations()
	}
	return super.supportedInterfaceOrientations()
    }
    public override func shouldAutorotate() -> Bool {
	if let selected = selectedViewController {
	    return selected.shouldAutorotate()
	}
	return super.shouldAutorotate()
    }
}
