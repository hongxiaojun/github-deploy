#!/bin/bash

# GitHub 快速更新脚本
# 使用方法: ./update-and-push.sh "更新描述"

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 获取项目根目录（脚本所在目录）
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 检查是否提供了提交信息
if [ -z "$1" ]; then
    echo -e "${RED}❌ 错误: 请提供更新描述${NC}"
    echo ""
    echo "使用方法: ./update-and-push.sh \"你的更新描述\""
    echo ""
    echo "示例:"
    echo "  ./update-and-push.sh \"feat: 新增用户认证功能\""
    echo "  ./update-and-push.sh \"fix: 修复登录bug\""
    echo "  ./update-and-push.sh \"docs: 更新README文档\""
    exit 1
fi

cd "$PROJECT_DIR"

echo -e "${BLUE}📦 GitHub 快速更新脚本${NC}"
echo "================================"
echo ""

# 显示当前状态
echo -e "${YELLOW}📊 当前状态:${NC}"
git status --short
echo ""

# 询问确认
read -p "是否继续提交并推送? (Y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Nn]$ ]]; then
    echo -e "${YELLOW}⏸️  已取消${NC}"
    exit 0
fi

echo -e "${BLUE}🔄 正在添加更改...${NC}"
git add .

echo -e "${BLUE}💾 正在提交...${NC}"
git commit -m "$1" -m "$(cat <<'EOF'

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
EOF
)"

echo -e "${BLUE}🚀 正在推送到 GitHub...${NC}"
git push

echo ""
echo -e "${GREEN}✅ 更新完成！${NC}"
echo ""
echo -e "${YELLOW}📈 最近的提交:${NC}"
git log --oneline -5
echo ""
echo -e "${GREEN}🔗 查看仓库:${NC}"
git remote get-url origin | sed 's/git@github.com:/https:\/\/github.com\//' | sed 's/\.git$/'
