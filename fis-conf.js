
// 开启支持jsp, vm编译
// fis.require('jello')(fis);

fis.set("project.ignore",[
    "node_modules/**",
    "fis-conf.js",
    "*.cmd",
    "output/**",
    "dist/**"
]);

// 标记 staitc/lib 下面的 js 为模块化代码。
fis.match('/static/lib/**.js', {
  isMod: true,
  parser:  fis.plugin("translate-textcss")
});

// jello 里面默认用的 commonjs 这里改成 amd 方案。
fis.unhook('commonjs');
fis.hook('amd', {
    paths:  aliasModules()
});

function aliasModules() {

    var alias = {};
    var targetDir = "./static/lib/";
    var root= fis.project.getProjectPath()
    //var fs = require('fs');
    //var ns = fis.get('namespace');
    var path = require('path');
    
    alias["region"] = path.relative(root , "./widget/region") + "/region";
    
   var mods =  fis.util.find( targetDir, "*.js", "*.{css,html,jsp,vm}");
   mods =  mods.concat(fis.util.find( "./widget", "*.js", "*.{css,html,jsp,vm}"));
   mods.forEach(function(mod){
          var parentPath = path.dirname(mod);
          var baseName = path.basename(mod,".js");
          var parentName = path.basename(parentPath);

           // avalon.getModel  不定义别名
           if (baseName !== "avalon.getModel" ) {
                if( !alias[parentName] ) {
                  alias[parentName] = path.relative(root , parentPath) + "/" +  baseName;
                  // datepicker 特殊处理
                 if (baseName === "avalon.datepicker" ||
                     baseName === "avalon.coupledatepicker" ||
                      baseName === "avalon.daterangepicker"   )  {
                         alias["datepicker"] = path.relative(root , parentPath) + "/" +  "avalon.datepicker" ;
                         alias["coupledatepicker"] = path.relative(root , parentPath) + "/" +  "avalon.coupledatepicker" ;
                         alias["daterangepicker"] = path.relative(root , parentPath) + "/" +  "avalon.daterangepicker ";
                  }
              } 
        } else {
            alias["getModel"] = path.relative(root , parentPath) + "/" +  baseName;
        }
   })
    
    //console.log(alias);
    return alias;
}


/*fis.match('/widget/**', {
      useSameNameRequire: true
  });*/

// 设置 *.less 配置配置项
fis.match('*.less', {
  rExt: '.css',
  parser: fis.plugin("less-2.x",{
    sourceMap: {
      sourceMapFileInline: true,
      outputSourceFiles: true
    }
  }),
  postprocessor: fis.plugin('autoprefixer', {
     browsers: ['> 1%', 'ie >= 6'],
     remove: false,
     cascade: true
  })
});

// 设置 modules/*.less 配置配置项
fis.match('**/less/{modules/**.less,framework.less}',{
    parser: null,
    postprocessor: null
});

// fis.match('**.html',{
//     release: false
// });

// fis.match('**.{js,less,css,png,jpg,gif}',{
//     domain: "/shopkeeper-gw-rest"
// });

// 这个纯前段开发时需要
fis.match('::package', {
    // npm install [-g] fis3-postpackager-loader
    // 分析 __RESOURCE_MAP__ 结构，来解决资源加载问题
    postpackager: fis.plugin('loader', {
        resourceType: 'amd',
        useInlineMap: true // 资源映射表内嵌
    })
})

/*
fis.match('*', {
  domain: "",
  url: "/shopkeeper-gw-rest/$0",
  deploy: fis.plugin('local-deliver', {
    to: '/home/justin/work/idea_projects/shopkeeper-gw/shopkeeper-gw-rest/src/main/webapp
  })
})
*/
