# GitHub 部署助手 - 模板说明

本目录包含各种项目模板，用于快速初始化 GitHub 项目。

## 📁 目录结构

```
templates/
├── gitignore/          # .gitignore 模板
│   ├── Python.gitignore
│   ├── Node.gitignore
│   └── General.gitignore
├── licenses/           # LICENSE 模板
│   └── MIT.LICENSE
├── README.template.md  # README 模板
├── deploy-to-github.sh # 部署脚本
└── update-and-push.sh  # 更新脚本
```

## 🎯 使用方法

### 1. 选择合适的 .gitignore

根据项目类型选择：
- **Python 项目**: 使用 `Python.gitignore`
- **Node.js/JavaScript 项目**: 使用 `Node.gitignore`
- **其他项目**: 使用 `General.gitignore`

### 2. 定制 README

复制 `README.template.md` 并替换以下占位符：
- `[PROJECT_NAME]` - 项目名称
- `[USERNAME]` - GitHub 用户名
- `[PROJECT_DESCRIPTION]` - 项目描述
- `[FEATURE_1]` - 功能特性列表
- `[INSTALL_COMMAND]` - 安装命令
- `[RUN_COMMAND]` - 运行命令
- 等等...

### 3. 选择 LICENSE

复制 `licenses/MIT.LICENSE` 并替换：
- `[YEAR]` - 当前年份
- `[YOUR_NAME]` - 你的名字

### 4. 使用脚本

- `deploy-to-github.sh` - 首次部署到 GitHub
- `update-and-push.sh` - 快速更新并推送

## 📝 模板说明

### .gitignore 模板

每种语言都包含常见的忽略项：
- 操作系统文件（.DS_Store 等）
- IDE 配置文件
- 依赖目录（node_modules 等）
- 构建输出（dist, build 等）
- 环境变量文件
- 日志文件
- 临时文件

### README 模板

包含完整的 README 结构：
- 项目标题和徽章
- 简介
- 功能特性
- 快速开始
- 使用说明
- 配置说明
- 示例代码
- 贡献指南
- 版本历史
- 许可证
- 联系方式

## 🔧 自定义

你可以根据需要修改这些模板，添加：
- 更多语言的 .gitignore
- 其他类型的 LICENSE（Apache 2.0, GPL v3 等）
- 特定框架的配置文件
- CI/CD 配置模板

## 💡 最佳实践

1. **.gitignore**:
   - 在项目开始就创建好
   - 定期更新添加新的忽略项
   - 不要提交敏感信息

2. **README**:
   - 清晰说明项目用途
   - 提供完整的使用示例
   - 保持文档更新

3. **LICENSE**:
   - 选择适合的开源许可证
   - MIT 是最宽松的选择
   - 也可以选择不添加 LICENSE
