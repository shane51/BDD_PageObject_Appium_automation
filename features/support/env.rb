require 'rubygems'
require 'appium_lib'
require_relative 'base_page'


APP_PATH = './com.evernote_7.3-1073043_minAPI14.apk'
desired_caps = {
    caps:       {
        platformName: "android",
        deviceName: "Nexus 5",
        appPackage: "com.evernote",
        app:        APP_PATH,
},
    appium_lib: {
        sauce_username:   nil, # don't run on Sauce
        sauce_access_key: nil
    }
}

Appium::Driver.new(desired_caps)
Appium.promote_appium_methods EvernoteAppPage


Before { $driver.start_driver }
After { $driver.driver_quit }