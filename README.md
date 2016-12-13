# MvpDagger2Template
an android studio template that create mvp class quickly. 

## 说明
1. 这是一个`android studio` 模板。主要方便快捷创建 `MVP` + `Dagger` 架构模式的相关类。
2. 本模板根据`repository:` [MvpDaggerRetrofit](https://github.com/AsherYang/MvpDaggerRetrofit) 来设置。
具体可参考对应的`repository`例子。

![](https://raw.githubusercontent.com/AsherYang/MvpDagger2Template/master/screenshot/mvp_dagger_map.png)

## 使用
1. 使用顺序：第一次使用，先用`setUp`进行相关初始化操作，如：添加依赖，以及生成`Application`类等。
2. 然后就可以使用，新建一个`Mvp Activity` 了。当每次新加一个功能模块都可以使用该新建Activity方式，进行相关类生成。
其中生成的类都放在功能模块对应的包下。
3. 重新`make project`。 进行该操作`Dagger2`会自动生成中间类文件(若没有生成，下面会进行说明)。
4. 导入`Dagger2`自动生成的中间文件。一般我都会设置`Android studio`自动导包功能。
5. 替换`AndroidManifest.xml`中`Application`类名为生成的`Application`。


## 问题

针对使用第3条，有可能会出现`Dagger2`无法自动生成相关中间文件。原因是因为`build.gradle`引用的`Dagger2`编译器错误，
导致无法正常编译相关中间文件。解决办法：

1. 先去掉原先模块中`build.gradle` 中的`dependencies`引用`dagger2`的编译方式：

    ```Java
    compile com.google.dagger:dagger-compiler:2.0.2
    ```
  
2. 改为引用apt的方式，在模块`build.gradle`中开始处加入：

    ```Java
    apply plugin: 'android-apt'
    ```

    同时`dependencies`改为
    ```Java
    apt 'com.google.dagger:dagger-compiler:2.0.2'
    ```
  
3. 工程`build.gradle`中`buildscript`节点下的`dependencies`加入：

    ```Java
    classpath 'com.neenbedankt.gradle.plugins:android-apt:1.8'
    ```
    
4. 上述更改只针对`dagger2`的编译器依赖方式。`dagger2`本身的依赖方式不变。
5. 参考资料：[Dagger2引入](https://github.com/google/dagger/pull/295/files?short_path=04c6e90#diff-04c6e90faac2675aa89e2176d2eec7d8)

### 原因：
出现上述问题的原因是：由于`freeMarker`语法`dependency`(暂时)并不支持以`apt`的方式引入。只支持`compile`方式原始
引入。



