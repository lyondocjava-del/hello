import UIKit

final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        let msg = "HELLO_WORLD_FROM_XCODE\n"
        print(msg)
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        try? msg.write(to: dir.appendingPathComponent("hello.txt"), atomically: true, encoding: .utf8)
        return true
    }
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(AppDelegate.self))
