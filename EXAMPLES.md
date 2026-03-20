# GitHub 部署助手 - 使用示例

本文档包含 GitHub 部署助手的实际使用示例。

## 📋 目录

1. [基础用法](#基础用法)
2. [项目类型识别](#项目类型识别)
3. [常见场景](#常见场景)
4. [高级用法](#高级用法)

---

## 基础用法

### 示例 1：部署当前目录的项目

**用户输入**：
```
帮我把当前项目上传到 GitHub
```

**AI 执行流程**：
1. 分析当前目录
2. 识别项目类型
3. 生成合适的 .gitignore
4. 创建 README.md
5. 初始化 git 仓库
6. 创建初始提交
7. 引导用户在 GitHub 创建仓库
8. 推送代码

### 示例 2：指定项目路径

**用户输入**：
```
帮我把 ~/projects/my-api 部署到 GitHub
```

**AI 执行流程**：
1. 切换到指定目录
2. 检查项目状态
3. 执行部署流程

### 示例 3：更新现有项目

**用户输入**：
```
更新这个项目并推送，说明：修复登录 bug
```

**AI 执行流程**：
1. 检查 git 状态
2. 显示更改内容
3. 添加并提交更改
4. 推送到 GitHub

---

## 项目类型识别

### Python 项目

**特征文件**：
- `requirements.txt`
- `setup.py`
- `pyproject.toml`
- `.py` 文件

**自动生成**：
- Python 专用 .gitignore（包含 `__pycache__`, `*.pyc` 等）
- Python 项目的 README 结构

**示例**：
```
检测到 Python 项目
主要框架: Django, FastAPI
包含文件: 47 个
建议 .gitignore: Python 模式
```

### Node.js 项目

**特征文件**：
- `package.json`
- `yarn.lock`
- `node_modules/`
- `.js/.ts` 文件

**自动生成**：
- Node.js 专用 .gitignore（包含 `node_modules`, `dist` 等）
- npm scripts 说明

**示例**：
```
检测到 Node.js 项目
包管理器: npm/yarn
框架: React, Express
建议 .gitignore: Node 模式
```

### Go 项目

**特征文件**：
- `go.mod`
- `go.sum`
- `.go` 文件

**自动生成**：
- Go 专用 .gitignore

### 通用项目

**特征**：
- 无特定语言特征
- 混合语言项目

**自动生成**：
- 通用 .gitignore
- 基础 README 模板

---

## 常见场景

### 场景 1：全新 Django 项目

**用户输入**：
```
我刚创建了一个 Django 项目，帮我部署到 GitHub
```

**AI 处理**：
```bash
✓ 检测到 Django 项目
✓ 生成 Python .gitignore
✓ 创建包含 Django 说明的 README
✓ 排除敏感文件（.env, db.sqlite3）
✓ 创建 requirements.txt（如果不存在）
✓ 初始化 git 仓库
✓ 创建初始提交

📋 下一步：
1. 访问 https://github.com/new
2. 创建仓库 my-django-app
3. 回复"完成"后我将推送代码
```

### 场景 2：React 前端项目

**用户输入**：
```
部署这个 React 应用到 GitHub
```

**AI 处理**：
```bash
✓ 检测到 React 项目
✓ 生成 Node .gitignore
✓ 创建包含 npm scripts 的 README
✓ 排除 build/ 和 node_modules/
✓ 初始化 git 仓库

📦 README 包含：
- npm install 说明
- npm start 启动命令
- npm run build 构建命令
```

### 场景 3：数据科学项目

**用户输入**：
```
帮我把这个数据分析项目上传到 GitHub
```

**AI 处理**：
```bash
✓ 检测到 Python 数据科学项目
✓ 生成数据科学专用 .gitignore
  - Jupyter notebook checkpoints
  - 数据集文件（.csv, .xlsx 大文件）
  - 模型文件（.pkl, .h5）
✓ 创建包含环境要求的 README
✓ 创建 requirements.txt
✓ 添加 .gitattributes 处理大文件
```

### 场景 4：批量部署多个项目

**用户输入**：
```
帮我部署这些项目：
1. ~/projects/user-service
2. ~/projects/payment-api
3. ~/projects/web-app
```

**AI 处理**：
```bash
🚀 批量部署模式

[1/3] user-service
✓ Python 项目
✓ 初始化完成
✓ 推送到 GitHub: https://github.com/user/user-service

[2/3] payment-api
✓ Node.js 项目
✓ 初始化完成
✓ 推送到 GitHub: https://github.com/user/payment-api

[3/3] web-app
✓ React 项目
✓ 初始化完成
✓ 推送到 GitHub: https://github.com/user/web-app

✅ 全部完成！
```

---

## 高级用法

### 1. 自定义 README

**用户输入**：
```
部署项目，README 要包含：
- 项目架构图
- API 文档链接
- 部署流程
```

**AI 处理**：
生成包含自定义章节的 README.md

### 2. 添加 CI/CD 配置

**用户输入**：
```
部署项目，并添加 GitHub Actions 配置
```

**AI 处理**：
```bash
✓ 生成 .github/workflows/ci.yml
✓ 配置自动化测试
✓ 配置自动部署
```

### 3. 生成发布说明

**用户输入**：
```
项目更新了，生成 release notes
```

**AI 处理**：
```bash
✓ 分析提交历史
✓ 生成 CHANGELOG.md
✓ 创建 GitHub Release
✓ 添加版本标签
```

### 4. 协作设置

**用户输入**：
```
设置项目供团队协作
```

**AI 处理**：
```bash
✓ 添加 CONTRIBUTING.md
✓ 创建 PULL_REQUEST_TEMPLATE.md
✓ 添加 ISSUE_TEMPLATE
✓ 配置分支保护规则
```

### 5. 许可证选择

**用户输入**：
```
部署项目，使用 Apache 2.0 许可证
```

**AI 处理**：
```bash
✓ 生成 Apache 2.0 LICENSE 文件
✓ 在 README 添加许可证徽章
✓ 更新 package.json 许可证字段
```

---

## 实用技巧

### 技巧 1：更新时自动生成 changelog

**用户输入**：
```
更新项目，添加新功能，并更新 changelog
```

**AI 处理**：
```bash
✓ 提交代码更改
✓ 更新 CHANGELOG.md
✓ 推送到 GitHub
```

### 技巧 2：部署前备份

**用户输入**：
```
部署前先备份到另一个分支
```

**AI 处理**：
```bash
✓ 创建 backup 分支
✓ 推送备份分支
✓ 部署到 main
```

### 技巧 3：检查敏感信息

**用户输入**：
```
部署前检查是否有敏感信息
```

**AI 处理**：
```bash
✓ 扫描 API 密钥
✓ 检查密码
✓ 查找邮箱地址
✓ 警告潜在敏感文件
```

---

## 错误处理示例

### 错误 1：SSH 连接失败

**用户输入**：
```
推送失败，SSH 连接错误
```

**AI 处理**：
```bash
🔍 诊断 SSH 问题

✓ 检查 SSH 密钥存在
✓ 生成新密钥（如需要）
✓ 添加到 SSH agent
✓ 测试 GitHub 连接
✓ 提供添加公钥的步骤

💡 解决方案：
1. 复制公钥: cat ~/.ssh/id_ed25519.pub
2. 添加到 GitHub: Settings -> SSH keys
3. 测试连接: ssh -T git@github.com
```

### 错误 2：推送冲突

**用户输入**：
```
推送时出现冲突
```

**AI 处理**：
```bash
⚠️ 检测到冲突

✓ 拉取远程更改
✓ 尝试自动合并
✓ 解决冲突（如可能）
✓ 完成推送

如无法自动解决：
📋 提供手动解决步骤
```

---

## 总结

GitHub 部署助手能够：
- ✅ 自动识别项目类型
- ✅ 生成合适的配置文件
- ✅ 一键部署到 GitHub
- ✅ 快速更新项目
- ✅ 处理各种错误情况
- ✅ 支持批量操作
- ✅ 提供最佳实践建议

**开始使用**：告诉 AI "帮我把项目部署到 GitHub"
