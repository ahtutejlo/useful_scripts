# Delete app from all devices and install all apk files in Downloads folder


adb devices | tail -n +2 | cut -sf 1 | xargs -iX adb -s X uninstall com.app.name

for file in ~/Downloads/*.apk; do echo "Installing $file"; adb devices | tail -n +2 | cut -sf 1 | xargs -iX adb -s X install $file; done