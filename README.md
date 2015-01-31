# LockedRotation
Extensions on UINavigationBarController and UITabBarController to support locking a device orientation for a single view controller.

With these extensions in place control will safely be given to a view controller embedded in a UITabBarController or UINavigationController. In the examples below the shouldAutorotate and supportedInterfaceOrientations methods in UIViewController will be respected when in UINavigationController and UITabBarController and even when a navigation controller is embedded in a tab bar controller and vice versa.

### Locking to Current Orientation Example
```
class ViewController: UIViewController {
    override func shouldAutorotate() -> Bool {
      return false
    }
}
```

### Autorotated to Specific Orientation Example
```
class ViewController: UIViewController {
  override func supportedInterfaceOrientations() -> Int {
    return Int(UIInterfaceOrientationMask.Portrait.rawValue)
  }
}
```

There are certain configurations that can cause issues. I've seen this to be especially true with initial tab bar controller launch. See my blog post on how to workaround these issues should they arise: [Lock Screen Rotation in iOS 8](http://koreyhinton.com/blog/lock-screen-rotation-in-ios8.html)
