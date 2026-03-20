#!/bin/bash

# GitHub 首次部署脚本
# 使用方法: ./deploy-to-github.sh

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 获取项目根目录
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_NAME="$(basename "$PROJECT_DIR")"

echo -e "${BLUE}📚 GitHub 部署助手${NC}"
echo "================================"
echo -e "${YELLOW}项目:${NC} $PROJECT_NAME"
echo -e "${YELLOW}路径:${NC} $PROJECT_DIR"
echo ""

# 检查是否是 git 仓库
if [ ! -d "$PROJECT_DIR/.git" ]; then
    echo -e "${RED}❌ 错误: 当前目录不是 git 仓库${NC}"
    echo "请先初始化 git 仓库: git init"
    exit 1
fi

cd "$PROJECT_DIR"

# 询问 GitHub 用户名
if [ -z "$GITHUB_USERNAME" ]; then
    read -p "请输入你的 GitHub 用户名: " GITHUB_USERNAME
fi

# 询问仓库名称
read -p "仓库名称 (默认: $PROJECT_NAME): " REPO_NAME
REPO_NAME=${REPO_NAME:-$PROJECT_NAME}

REMOTE_URL="git@github.com:${GITHUB_USERNAME}/${REPO_NAME}.git"

# 检查是否已经配置了远程仓库
if git remote get-url origin &>/dev/null; then
    echo -e "${YELLOW}⚠️  远程仓库已配置:${NC}"
    git remote get-url origin
    echo ""
    read -p "是否要更新远程仓库地址? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git remote set-url origin "$REMOTE_URL"
        echo -e "${GREEN}✅ 远程仓库地址已更新${NC}"
    fi
else
    echo -e "${BLUE}🔧 配置远程仓库...${NC}"
    git remote add origin "$REMOTE_URL"
    echo -e "${GREEN}✅ 远程仓库已添加:${NC} $REMOTE_URL"
fi

echo ""
echo -e "${BLUE}📋 接下来的步骤:${NC}"
echo ""
echo "1️⃣  在 GitHub 上创建新仓库:"
echo -e "   ${YELLOW}访问:${NC} https://github.com/new"
echo -e "   ${YELLOW}仓库名:${NC} $REPO_NAME"
echo "   ${YELLOW}描述:${NC} (可选)"
echo -e "   ${YELLOW}可见性:${NC} Public 或 Private"
echo -e "   ${RED}❌ 重要:${NC} 不要初始化 README, .gitignore 或 license"
echo ""
echo "2️⃣  创建完成后，按任意键推送代码..."
read -n 1 -s
echo ""

echo -e "${BLUE}🚀 正在推送到 GitHub...${NC}"
if git push -u origin main; then
    echo ""
    echo -e "${GREEN}✅ 成功！代码已推送到 GitHub${NC}"
    echo ""
    echo -e "${GREEN}🔗 查看你的仓库:${NC}"
    echo "   https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
    echo ""
    echo -e "${BLUE}💡 后续更新:${NC}"
    echo "   ./update-and-push.sh \"更新描述\""
else
    echo ""
    echo -e "${RED}❌ 推送失败！请检查:${NC}"
    echo "   1. GitHub 仓库是否已创建"
    echo "   2. SSH 密钥是否正确配置"
    echo "   3. 网络连接是否正常"
    echo ""
    echo "   测试 SSH 连接: ssh -T git@github.com"
fi
