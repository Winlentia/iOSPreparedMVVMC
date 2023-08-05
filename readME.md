#  Prepared MVVMC Project for iOS

- remove SceneDelegate ( optional )
  - delete SceneDelegate
  - remove Application Scene Manifest > Scene Configuration from Info.plist
  - remove UISceneSession Lifecycle methods from AppDelegate
  
- remove StoryBoard ( optional - you can design your ui via xib or programmatically )
  - delete Main.storyboard
  - before Xcode 14 remove Main Interface from general project settings
  - after Xcode 14 go to the "Build Settings" tab and search for the "UIKit Main Storyboard File Base Name" key. Then remove the key or set the value to empty. Or you can go to the "Info" tab and remove the key "Main storyboard file base name" (UIMainStoryboardFile).
  
  


