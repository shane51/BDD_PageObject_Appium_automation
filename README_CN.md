#环境设置
**可能不支持三星国行手机**, 三星国行手机内置了evernote，无法卸载，导致Appium不能安装evernote。

由于第一，Evernote程序比较大；第二，Evernote需要Arm的lib，模拟器可能会不工作，或者非常慢，**推荐使用真机**

demo是使用 Sony Z2 with Android 4.4.2

##详细教程
 1. [Appium guide](https://github.com/hy1984427/appium/blob/master/SUMMARY.md)
 2. [BBD with Page Object Guide](https://github.com/hy1984427/BDD-with-PageObject/blob/master/SUMMARY.md)
 
##如何配置环境
######1. 安装Appium APP 与android SDK
   - [下载并安装MAC版 appium GUI](https://bitbucket.org/appium/appium.app/downloads/appium-1.5.3.dmg)
   - 使用homebrew安装最新的android SDK `brew install android-sdk`
   - 添加android环境变量
        `$ vi ~/.bash_profile`
        添加：
        export ANDROID_HOME=/Users/xxxx/Library/Android/sdk
        export PATH=$ANDROID_HOME/platform-tools:$PATH
        export PATH=$ANDROID_HOME/tools:$PATH
        然后执行：
        `$ source ~/.bash_profile`
        
   
######2. 安装Appium_lib 与 cucumber
  确保Ruby已安装，推荐2.1.5版本。然后执行:
 `bundle install`
 
####Tasks list
1. ~~搭建自动化工程（Cucumber， PageObject， Appium 配置）~~
2. ~~创建第一个feature scenarios~~
3. ~~创建Login页面,  异步支持，~~ 动画支持
     * ~~setEmail, setPassword~~
     * ~~create ios and android module~~
4. ~~分析Evernote的页面元素，创建基础页面类~~
5. ~~创建SideBar类~~
6. ~~更多的页面~~
7. ~~创建手势方法（上下左右滑动， 长按）~~
8. ~~加入iOS支持~~(doesn't have evernote ipa, so IOS is not supported)
9. 重构