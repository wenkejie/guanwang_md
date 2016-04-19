/**
 * Created by 42148 on 2016/3/9.
 */

//less压缩
// npm install -g fis-parser-less-2.x
fis.match('**/*.less', {
    rExt: '.css', // from .less to .css
    parser: fis.plugin('less-2.x', {
        // fis-parser-less-2.x option
    })
});
//html压缩
// You need install it.
// npm i fis-optimizer-html-minifier [-g]
//
fis.match('*.html', {
    //invoke fis-optimizer-html-minifier
    optimizer: fis.plugin('html-minifier')
});
//js压缩
fis.match('*.js', {
    useHash: false, // default is true  使用MD5加时间戳
    // 指定压缩插件 fis-optimizer-uglify-js
    optimizer: fis.plugin('uglify-js', {
        // option of uglify-js
    })
});
//css压缩
// fis3 release -d output
// cd ./output
// cat ./style.css #view result

fis.match('*.css', {
    useHash: false, //default is `true`
    // compress css invoke fis-optimizer-clean-css
    optimizer: fis.plugin('clean-css', {
        // option of clean-css
    })
});
//AMD  规范
// npm install [-g] fis3-hook-amd
fis.hook('amd');

fis.match('/comp/**/*.js', {
    isMod: true, // 设置 comp 下都是一些组件，组件建议都是匿名方式 define
    release: '/static/$0'
});

fis.match('::package', {
    // npm install [-g] fis3-postpackager-loader
    // 分析 __RESOURCE_MAP__ 结构，来解决资源加载问题
    postpackager: fis.plugin('loader', {
        resourceType: 'amd',
        useInlineMap: true // 资源映射表内嵌
    })
})

// fis3 release prod 产品发布，进行合并
fis.media('prod')
    .match('*.js', {
        packTo: '/static/aio.js'
    });
/*
 fis3-hook-amd 本地解析替换路径，为合并做准备
 fis3-postpackager-loader 解析 fis3 的 RESOURCE_MAP 来生成 require.paths 列表，以实现对资源加 md5 或者 cdn 的需求
 */



















































// 配置按需编译：设置编译范围为 html 文件，不过 html 文件中使用到的资源也会参与编译。
fis.set('project.files', '*.html');

// npm install [-g] fis3-hook-module
// 引入模块化开发插件，设置规范为 commonJs 规范。
fis.hook('module', {
    mode: 'amd',

    // 把 factory 中的依赖，前置到 define 的第二个参数中来。
    forwardDeclaration: true
});

// 设置组件库里面的 js 都是模块化 js.
fis.match('/components/**.js', {
    isMod: true
});

// 因为是纯前段项目，依赖不能自断被加载进来，所以这里需要借助一个 loader 来完成，
// 注意：与后端结合的项目不需要此插件!!!
fis.match('::package', {
    // npm install [-g] fis3-postpackager-loader
    // 分析 __RESOURCE_MAP__ 结构，来解决资源加载问题
    postpackager: fis.plugin('loader', {
        resourceType: 'amd',
        useInlineMap: true // 资源映射表内嵌
    })
});

// fis3 release prod 产品发布，进行合并
fis.media('prod')
    .match('*.js', {
        // 将所有用到的 js all in one 打包
        packTo: '/static/aio.js',

        // 通过 uglify 压缩 js
        // 记得先安装：
        // npm install [-g] fis-optimizer-uglify-js
        optimizer: fis.plugin('uglify-js')
    })
    .match('*.css', {

        // 将用到的 css all in one 打包。
        packTo: '/static/aio.css'
    })