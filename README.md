# GitHub 部署助手

快速将任何项目部署到 GitHub 的智能助手。

## ✨ 功能特性

- 🔍 **智能识别项目类型** - 自动检测 Python、Node.js、Go 等多种语言
- 📝 **自动生成文档** - 一键生成 README.md、LICENSE 等文件
- 🚀 **一键部署** - 从零开始到推送到 GitHub，全程自动化
- 🔄 **快速更新** - 简单的脚本即可更新项目
- 🔐 **SSH 配置** - 自动配置 SSH 密钥

## 📦 安装

将此目录放置在 Claude Code 的 skills 目录下：

```bash
# macOS/Linux
~/.claude/skills/github-deploy/
```

## 🎯 使用方法

在 Claude Code 中：

```
/github-deploy
```

或直接告诉 AI：
- "帮我把当前项目上传到 GitHub"
- "部署 ~/projects/my-app 到 GitHub"
- "更新并推送这个项目"

## 📋 使用场景

### 场景 1：全新项目

```bash
# 在任何项目目录下
cd ~/my-project

# 告诉 AI：帮我把这个项目部署到 GitHub

# AI 会自动：
# 1. 分析项目类型
# 2. 生成 .gitignore
# 3. 创建 README.md
# 4. 初始化 git 仓库
# 5. 配置远程仓库
# 6. 引导你推送到 GitHub
```

### 场景 2：更新现有项目

```bash
# 修改代码后
./update-and-push.sh "feat: 新增用户认证功能"

# 脚本自动：
# 1. 添加所有更改
# 2. 创建提交
# 3. 推送到 GitHub
```

## 🛠️ 包含的工具

### 1. deploy-to-github.sh
首次部署脚本，包含完整的引导流程。

### 2. update-and-push.sh
快速更新脚本，一行命令完成更新推送。

### 3. 项目模板
- **.gitignore** - Python、Node.js、通用项目
- **README.md** - 完整的项目说明模板
- **LICENSE** - MIT 开源许可证

## 📖 模板文件

查看 `templates/` 目录：
- `gitignore/` - 各种语言的 .gitignore
- `licenses/` - 开源许可证模板
- `README.template.md` - README 模板
- `README.md` - 模板说明文档

## 💡 提示

1. **首次使用**：确保已配置 Git 用户信息
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your@email.com"
   ```

2. **SSH 密钥**：使用 SSH 方式更安全便捷
   ```bash
   ssh-keygen -t ed25519 -C "your@email.com"
   cat ~/.ssh/id_ed25519.pub  # 添加到 GitHub
   ```

3. **提交规范**：遵循约定式提交规范
   - `feat:` 新功能
   - `fix:` 修复 bug
   - `docs:` 文档更新
   - `refactor:` 重构

## 🎨 示例

### 部署 Python 项目
```
"帮我把这个 Django 项目部署到 GitHub"
```

### 部署 Node.js 项目
```
"部署这个 Express 应用到 GitHub"
```

### 批量部署
```
"帮我部署这些项目：
1. ~/projects/api
2. ~/projects/frontend
3. ~/projects/mobile"
```

## 📚 相关资源

- [GitHub 官方文档](https://docs.github.com)
- [Git 官方文档](https://git-scm.com/doc)
- [约定式提交](https://www.conventionalcommits.org)

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License

---

**开始使用吧！告诉 AI 你想部署的项目。**
