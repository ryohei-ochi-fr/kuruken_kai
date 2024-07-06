# kuruken_kai

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## ここから

```ps
pwd

Path
----
C:\30_flutter\kuruken_kai

git config user.name

ryohei-ochi-fr

git init
gibo update
gibo dump Node VisualStudioCode > .gitignore

hub create

Updating origin
https://github.com/ryohei-ochi-fr/kuruken_kai

git remote -v

origin  https://github.com/ryohei-ochi-fr/kuruken_kai.git (fetch)
origin  https://github.com/ryohei-ochi-fr/kuruken_kai.git (push)

hub browse

```

## first commit

[git push origin master の意味 - Just do IT](https://k-koh.hatenablog.com/entry/2020/08/07/143253)

```ps
git add .
git commit -m "first commit"
git status

# Branchを確認する
git branch

PS C:\30_flutter\kuruken_kai> git branch
* master

# masterになっていないならmasterへ
git branch -m master

# 「今いるブランチのコードを、originというリモートリポジトリに向けて送ってください。送る先のブランチ名は master です。」
git push origin master

```

## パスの追加

```cmd
C:\Users\rochi\AppData\Local\Android\Sdk\platform-tools
C:\Users\rochi\AppData\Local\Android\Sdk\emulator

emulator -list-avds

emulator -avd Pixel_7_Pro_API_35 -no-snapshot -no-boot-anim

```

## webview_flutterを組み込む

```ps
flutter pub add webview_flutter
```

## 位置情報を取得可能にする

```ps
flutter pub add geolocator
flutter pub add geocoding
```

エラー出るよね

```ps
Building with plugins requires symlink support.

Please enable Developer Mode in your system settings. Run
  start ms-settings:developers
to open settings.
```

[VScode＆FlutterでデバッグしようとしたらException言われた](https://zenn.dev/nukokoi/articles/5f108b0b66e639)

再度実行

```ps
flutter pub add geolocator
flutter pub add geocoding
```

[【Flutter】実行時に『Your project requires a newer version of the Kotlin Gradle plugin.』エラーが起きたときの対処法｜Flutterラボ](https://note.com/hatchoutschool/n/n829a2ba1c5bc)
[FlutterプロジェクトでのGradleのアップグレード方法とpackage_info_plusを4.0.1にアップグレードした際のエラー解消 #gradle - Qiita](https://qiita.com/SoarTec-lab/items/609dc7f4c8ee95e090bd)

## 権限取得
