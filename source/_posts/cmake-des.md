title: cmake_des
date: 2016-08-12 19:19:32
tags:
---

CMake 使用

在 Windows 下，下载安装 CMake 后，可以使用其 cmake-gui 程序：
![cmake-gui](/uploads/cmake-gui.png)

先在 "Where is the source code" 选择 json-tutorial/tutorial01，再在 "Where to build the binary" 键入上一个目录加上 /build。

按 Configure，选择编译器，然后按 Generate 便会生成 Visual Studio 的 .sln 和 .vcproj 等文件。注意这个 build 目录都是生成的文件，可以随时删除，也不用上传至仓库。

在 OS X 下，建议安装 [Homebrew](http://brew.sh/)，然后在命令行键入：

~~~
$ brew install cmake
$ cd github/json-tutorial/tutorial01
$ mkdir build
$ cd build
$ cmake -DCMAKE_BUILD_TYPE=Debug ..
$ make
~~~

这样会使用 GNU make 来生成项目，把 Debug 改成 Release 就会生成 Release 配置的 makefile。

若你喜欢的话，CMake 也可以生成 Xcode 项目：

~~~
$ cmake -G Xcode ..
$ open leptjson_test.xcodeproj
~~~

而在 Ubuntu 下，可使用 `apt-get` 来安装：

~~~
$ apt-get install cmake
~~~

无论使用什么平台及编译环境，编译运行后会出现：

~~~
$ ./leptjson_test
/Users/miloyip/github/json-tutorial/tutorial01/test.c:56: expect: 3 actual: 0
11/12 (91.67%) passed
~~~

若看到类似以上的结果，说明已成功搭建编译环境，我们可以去看看那几个代码文件的内容了

