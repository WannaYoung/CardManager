//
//  CommonConst.swift
//  CardManager
//
//  Created by yang on 15/12/16.
//  Copyright © 2015年 yang. All rights reserved.
//
import UIKit

let APPID = "X5iEwlW1aBbadouh4Q3mK5Tf-gzGzoHsz"
let CLIENTKEY = "zDnlal7G5CAdycRxiAL41O2B"
let APPVERSION = NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"]

//获取设备的物理宽度
let ScreenWidth = UIScreen.mainScreen().bounds.size.width
//获取设备的物理高度
let ScreenHeight = UIScreen.mainScreen().bounds.size.height

//主色(土豪金)
let MAIN_COLOR = UIColor.hexStringToColor("2dc07a")
//辅助色(红色)
let ASSIST_COLOR = UIColor.hexStringToColor("fd3e25")
//背景色(浅灰色)
let BACKGROUND_COLOR = UIColor.hexStringToColor("f8f8f8")
//底部tab背景色(浅灰色)
let TABBAR_BARTINT_COLOR = UIColor.hexStringToColor("f7f9fb")
//主文字颜色
let MAIN_TEXT_COLOR = UIColor.hexStringToColor("292929")
//普通文字颜色
let COMMON_TEXT_COLOR = UIColor.hexStringToColor("666666")
//辅助文字颜色
let ASSIST_TEXT_COLOR = UIColor.hexStringToColor("8c8c8c")
//禁止色
let UNABLE_TEXT_COLOR = UIColor.hexStringToColor("d5d5d5")

