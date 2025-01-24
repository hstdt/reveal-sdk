# Reveal SDK

Reveal is a macOS app that brings powerful runtime view debugging to iOS developers. With advanced visualisations, comprehensive inspectors and the ability to modify applications on the fly, you'll be able to build better apps, faster.

This repository contains the Reveal SDK, which allows you to integrate Reveal's functionality into your own applications. The SDK is available under a commercial license, and you can find out more about it on the [Reveal website](https://revealapp.com/).

## Integration

### Xcode Project

To integrate the Reveal SDK into your Xcode project, follow these steps:

1. Open your project in Xcode.
2. Navigate to the project settings by selecting your project in the project navigator.
3. Select the project (not a target), and then select the Package Dependencies tab.
4. Click the + button and enter the following URL into the text field labelled "Search or Enter Package URL": `https://github.com/ittybittyapps/reveal-sdk.git`
5. Click "Add Package".
6. Choose which target you want to integrate the Reveal SDK with, and then click "Add Package".
7. Navigate to the target that you integrated the Reveal SDK with, and select the "Build Phases" tab.
8. If there is not already a "Link Binary With Libraries" phase, add one by clicking the + button and selecting "New Link Binary With Libraries". Expand the "Link Binary With Libraries" phase.
9. If RevealSDK is not present in the list of libraries, click the + button and select "RevealSDK" from the list of available libraries.
10. Set the "Status" of the RevealSDK library to "Optional". This will allow you to remove the Reveal SDK from your app's bundle during release configuration builds.
11. Add a new "Run Script" phase by clicking the + button and selecting "New Run Script Phase". Expand the "Run Script" phase, and rename it to something appropriate like "Integrate Reveal SDK".
12. Add the following script to the "Integrate Reveal SDK" phase:
  ```sh
  SWIFT_PACKAGE_DIR="${BUILD_DIR%Build/*}SourcePackages/artifacts"
  INTEGRATION_SCRIPT=$(ls "$SWIFT_PACKAGE_DIR"/reveal-sdk/RevealSDKFramework/RevealServer.xcframework/Scripts/integrate_revealserver.sh | head -n 1)

  source "$INTEGRATION_SCRIPT"
  ```
13. The script above will automatically setup your app's build to work with Reveal, and remove the SDK if you're building for release. In order to perform these changes, you will need to disable the `ENABLE_USER_SCRIPT_SANDBOXING` build setting for your target. To do this, navigate to the target's build settings, and search for `ENABLE_USER_SCRIPT_SANDBOXING`. Set the value to `NO`.
13. Build and run a debug build of your app. If everything worked correctly, you should see something similar to the following in Xcode's Debug Area:
  ```
  Reveal Server (HTTP) is listening on http://127.0.0.1:52007
  Reveal Server started (Protocol Version 66)
  Reveal Server published with name 'Reveal--28cf6d51' in Bonjour domain 'local.'.
  ```

If you run into any problems, [feel free to contact us at any time](https://support.revealapp.com/hc/en-us/requests/new).
