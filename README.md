# iOS Starter App

A minimal SwiftUI iOS starter project to get you up and running quickly.

## What's Included

- `Sources/IOSStarterApp/IOSStarterApp.swift` — App entry point (`@main`)
- `Sources/IOSStarterApp/ContentView.swift` — Main view with a "Hello, World!" message
- `Sources/IOSStarterApp/Assets.xcassets/` — Asset catalog (AppIcon + AccentColor placeholders)
- `Sources/IOSStarterApp/Info.plist` — Standard iOS app Info.plist
- `Setup.md` — Step-by-step guide to create an Xcode project and copy these files in

## Requirements

- macOS 13 Ventura or later
- Xcode 15 or later
- iOS 16+ deployment target

## Quick Start

See [Setup.md](Setup.md) for full instructions on getting this running in Xcode.

## Project Structure

```
ios-starter-gen/
├── README.md
├── Setup.md
└── Sources/
    └── IOSStarterApp/
        ├── IOSStarterApp.swift       # @main App struct
        ├── ContentView.swift         # Hello World UI
        ├── Info.plist                # App configuration
        └── Assets.xcassets/
            ├── Contents.json
            ├── AccentColor.colorset/
            │   └── Contents.json
            └── AppIcon.appiconset/
                └── Contents.json
```
