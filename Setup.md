# Setup Guide — iOS Starter App in Xcode

This guide walks you through creating a new Xcode project on your Mac and integrating the Swift source files provided in this repository.

---

## Prerequisites

| Tool    | Minimum Version |
|---------|----------------|
| macOS   | 13 Ventura     |
| Xcode   | 15.0           |
| iOS SDK | 16.0           |

---

## Step 1 — Create a New Xcode Project

1. Open **Xcode**.
2. Choose **File → New → Project…** (or press `⇧⌘N`).
3. In the template picker, select **iOS → App**, then click **Next**.
4. Fill in the project options:

   | Field             | Suggested Value         |
   |-------------------|-------------------------|
   | Product Name      | `IOSStarterApp`         |
   | Team              | Your Apple Developer account (or None) |
   | Organization ID   | `com.yourname`          |
   | Bundle Identifier | `com.yourname.IOSStarterApp` |
   | Interface         | **SwiftUI**             |
   | Language          | **Swift**               |

5. Click **Next**, choose a save location, and click **Create**.

---

## Step 2 — Replace the Generated Source Files

Xcode will have created `ContentView.swift` and `<AppName>App.swift`. Replace their contents with the files from this repo:

### `IOSStarterApp.swift` (App entry point)

Copy the contents of `Sources/IOSStarterApp/IOSStarterApp.swift` into the Xcode-generated `<AppName>App.swift` file.

> **Tip:** Make sure the `@main` struct name matches the file your Xcode project generated. If Xcode named it `IOSStarterAppApp`, rename it to `IOSStarterApp` (or adjust accordingly).

### `ContentView.swift`

Copy the contents of `Sources/IOSStarterApp/ContentView.swift` into the Xcode-generated `ContentView.swift`.

---

## Step 3 — Copy the Asset Catalog

1. In the **Project Navigator**, right-click **Assets.xcassets** → **Show in Finder**.
2. Replace the `Assets.xcassets` folder contents with the files in `Sources/IOSStarterApp/Assets.xcassets/`.
3. Switch back to Xcode — it will reload the catalog automatically.

---

## Step 4 — (Optional) Replace Info.plist

Modern Xcode projects store `Info.plist` settings inside the project file. If your project still uses a standalone `Info.plist`:

1. Select **Info.plist** in the Project Navigator.
2. Merge in any keys from `Sources/IOSStarterApp/Info.plist` that you need.

---

## Step 5 — Build & Run

1. Select a **Simulator** (e.g., iPhone 16 Pro) from the device toolbar.
2. Press **⌘R** (or **Product → Run**).
3. You should see the app launch with a Swift icon, a "Hello, World!" heading, and a subtitle.

---

## Troubleshooting

| Problem | Fix |
|---------|-----|
| `@main` attribute error | Ensure only **one** struct has `@main` in the project |
| Preview not working | Open `ContentView.swift` and press **⌘⌥⏎** to show the Canvas |
| Bundle ID conflict | Use a unique reverse-domain bundle identifier |
| Missing simulator | In Xcode: **Xcode → Settings → Platforms** → download an iOS runtime |

---

## Next Steps

Once your "Hello World" app is running, here are some common extensions to explore:

- **Navigation** — Add `NavigationStack` for multi-screen flows
- **State management** — Use `@State`, `@StateObject`, or the Observation framework
- **Networking** — Add `async/await` API calls with `URLSession`
- **Persistence** — Integrate SwiftData or Core Data
- **Testing** — Add a Unit Test target via **File → New → Target → Unit Testing Bundle**
