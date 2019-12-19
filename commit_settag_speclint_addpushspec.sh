
# 提交修改，推到主分支
git add .
git commit -m "修改版本号，支持swift最低版本4.0，支持iOS最低版本10.0"
git push -u origin master

# 注意需要修改当前的版本号
git tag 1.3.0
git push --tags

# 检查库的语法完整性
pod spec lint --allow-warnings

# 提交仓库到本地和公共仓库
pod repo add SystemEye https://github.com/Bogon/CCSpec
pod repo add SystemEye https://github.com/CocoaPods/Specs
pod repo push SystemEye CrashEye.podspec --sources='https://github.com/Bogon/CCSpec.git, https://github.com/CocoaPods/Specs.git' --allow-warnings


