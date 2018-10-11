Pod::Spec.new do |s|
  s.name         = "Router3" # 项目名称
  s.version      = "1.0.0"        # 版本号 与 你仓库的 标签号 对应
  s.license      = "MIT"          # 开源证书
  s.summary      = "three plan for app router" # 项目简介

  s.homepage     = "https://github.com/TwisteFate/Router.git" # 你的主页
  s.source       = { :git => "https://github.com/TwisteFate/Router.git", :tag => "#{s.version}" }#你的仓库地址，不能用SSH地址
  s.source_files = "Router/**/*" # 你代码的位置
  s.platform     = :ios, "8.0" #平台及支持的最低版本
  s.frameworks   = "UIKit", "Foundation" #支持的框架
  # s.dependency = "AFNetworking" # 依赖库
  s
  # User
  s.author             = { "LinNan" => "18622680246@163.com" } # 作者信息
  s.social_media_url   = "https://github.com/TwisteFate/" # 个人主页
  s.license = "Copyright (c) 2018年 LinNan. All rights reserved."

end