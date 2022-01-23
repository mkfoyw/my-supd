# my-supd
基于 supd 应用的程序管理工具。 


## 目录说明

* `etc` 用来保存 `supd` 和 `supd` 管理的程序。 
    * `/etc/supd/apps` 用来保存supd 管理程序的配置文件。 
* `bin` 用来保存 `supd` 程序。 
* `var` 用来保存程序生成的数据， 例如日志的。 
  * `var/sana1` 保存 `sana1` 程序的运行日志。 
* `script` 用来保存安装 `supd` 相关的脚本和 `supd` 所管理的程序的一些脚本。 例如
  * `script/lotus` 保存与 lotus 的一些交互的脚本。