get_ready:
	# get ready for development
	flutter pub get
	make gen_code
	make gen_locale

run:
	# run the app
	flutter run

gen_code:
	# generate the generated code
	dart run build_runner build --delete-conflicting-outputs

gen_locale:
	# generate the locale
	flutter gen-l10n

gen_splash:
	# generate splash screen
	flutter pub run flutter_native_splash:create --path=./yaml/splash.yaml

gen_icon_launcher:
	# generate app launcher icon
	flutter pub run flutter_launcher_icons -f ./yaml/icon_launcher.yaml

preview_fix_lints:
	# preview proposed changes
	dart fix --dry-run

fix_lints:
	# apply proposed changes
	 dart fix --apply

format_code:
	# format the code
	dart format . -l 120

clean_ios:
	 flutter clean && rm ios/Podfile.lock pubspec.lock && rm -rf ios/Pods ios/Runner.xcworkspace