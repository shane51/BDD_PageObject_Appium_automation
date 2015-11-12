#Environment Setup
##Detailed guide(详细教程)
 1. [Appium guide](https://github.com/hy1984427/appium/blob/master/SUMMARY.md)
 2. [BBD with Page Object Guide](https://github.com/hy1984427/BDD-with-PageObject/blob/master/SUMMARY.md)
 
##How to setup
######1. Ensure Appium is installed and configured that appium inspector can launch android app, please refer to [Appium guide](https://github.com/hy1984427/appium/blob/master/SUMMARY.md)
######2. Install cucumber and appium lib for ruby
`bundle install`

#Todo List
2015-10-29

 * Extract assert method into seperate module, then refactor them, add more assertions

2015-10-27
 * ~~Add setting page~~
 
2015-10-26
 * ~~Add delete newly add note scenarios~~
 
 
2015-10-25
 * ~~Add take screenshot~~
 * ~~Add scroll up/down~~
 
2015-10-22
 * ~~Add new feature scenario to involve sidebar and all note page~~
 * ~~Add create new text note scenario~~
 
2015-10-21
 * ~~Split login page into two pages, register page and login page.~~
 * ~~Need add ios and android module~~
 * ~~consider introducing asynchronization support~~ to solve login time period is too long that all note page can not find any element
 
 
 
 
 
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