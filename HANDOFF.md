# AIR SDK Repo Handoff

## Current State

- Repo clone path: `/home/codespace/air-sdk-repo`
- Original artifact: `/home/codespace/air-sdk-repo/Chlab_gases_fixed.apk`
- Decompiled working tree: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded`

## What This App Is

- This is not a normal Android source repository.
- The repo currently contains a built Android APK for an Adobe AIR app.
- AIR app id: `thix.sciencesense.chemist`
- Android package: `air.thix.sciencesense.chemist`
- Version: `5.0.3`
- Min SDK: `14`
- Target SDK: `21`

## Important Files

- Manifest: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/AndroidManifest.xml`
- Apktool metadata: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/apktool.yml`
- AIR app metadata: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/META-INF/AIR/application.xml`
- Main AIR payload: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/Chemist.swf`
- Data assets: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV/`
- Additional text data: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/cloudLabDb.txt`
- Splash images: `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/25az.bin`, `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/25az_loading.bin`

## Android-Side Code

- Launcher splash activity:
  `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/smali/com/aiwu/Splash.smali`
- AIR entry activity:
  `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/smali/air/thix/sciencesense/chemist/AppEntry.smali`
- Version helper:
  `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/smali/air/thix/sciencesense/chemist/GetVersionCode.smali`

## Observed Behavior

- `com.aiwu.Splash` is the launcher activity.
- It shows a custom splash screen with a blue background and two PNG assets stored as `.bin` files.
- After a short timer, it launches `AppEntry`.
- `AppEntry` loads Adobe AIR and starts `Chemist.swf`.
- Most app logic is likely inside `Chemist.swf`, not Java/smali.

## Best Edit Surfaces

- Content/data changes:
  edit files under `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV/`
- Text or bundled database changes:
  inspect `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/cloudLabDb.txt`
- Splash or Android wrapper changes:
  edit smali in the decoded tree
- Main app behavior/UI:
  likely requires SWF decompilation or replacement of `Chemist.swf`

## Rebuild Flow

- Rebuild decoded APK:
  `apktool b /home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded -o /home/codespace/air-sdk-repo/Chlab_gases_fixed_rebuilt.apk`
- The rebuilt APK will need signing before installation on a device.

## Constraints

- The original GitHub repo does not include ActionScript or Gradle source.
- Direct editing is practical for assets, resources, manifest, and smali.
- Deep app logic changes will be limited unless the SWF is decompiled or original AIR source is obtained.
