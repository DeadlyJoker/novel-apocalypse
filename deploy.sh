#!/bin/bash

# 小说更新一键部署脚本
# 使用：./deploy.sh

cd /Users/wangqichen/.openclaw/workspace/novel-projects/apocalypse

echo "📝 检查更改..."
git status

echo ""
echo "📦 添加更改..."
git add .

echo ""
echo "💾 提交更改..."
git commit -m "更新：$(date '+%Y-%m-%d %H:%M')"

echo ""
echo "🚀 推送到 GitHub..."
git push

echo ""
echo "✅ 完成！GitHub Pages 将在 1-2 分钟内自动更新"
echo "📱 访问：https://YOUR_USERNAME.github.io/novel-apocalypse/"
