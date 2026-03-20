# GitHub Pages 部署指南

## 第一步：创建 GitHub 仓库

1. 打开 https://github.com/new
2. 仓库名：`novel-apocalypse`（或其他你喜欢的名字）
3. 可见性：**Public**（Pages 功能需要公开仓库）
4. **不要**勾选"Add a README file"
5. 点击"Create repository"

---

## 第二步：添加远程仓库并推送

在终端执行以下命令（替换 `YOUR_USERNAME` 为你的 GitHub 用户名）：

```bash
cd /Users/wangqichen/.openclaw/workspace/novel-projects/apocalypse

# 添加远程仓库（替换 YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/novel-apocalypse.git

# 推送代码
git branch -M main
git push -u origin main
```

---

## 第三步：启用 GitHub Pages

1. 打开刚创建的 GitHub 仓库页面
2. 点击 **Settings**（设置）
3. 左侧菜单找到 **Pages**
4. **Source** 选择：`Deploy from a branch`
5. **Branch** 选择：`main` / 文件夹：`/ (root)`
6. 点击 **Save**

等待 1-2 分钟，页面会显示：

> Your site is live at `https://YOUR_USERNAME.github.io/novel-apocalypse/`

---

## 第四步：手机访问

用手机浏览器打开：
```
https://YOUR_USERNAME.github.io/novel-apocalypse/
```

**建议：** 把链接添加到手机书签，或分享给朋友！

---

## 后续更新

每次写完新章节后，只需执行：

```bash
cd /Users/wangqichen/.openclaw/workspace/novel-projects/apocalypse
git add .
git commit -m "更新：第 X 章"
git push
```

GitHub Pages 会在 **1-2 分钟内自动更新**！

---

## 可选：配置自动推送脚本

创建一个快捷脚本，一键提交推送：

```bash
# 创建脚本
cat > deploy.sh << 'EOF'
#!/bin/bash
cd /Users/wangqichen/.openclaw/workspace/novel-projects/apocalypse
git add .
git commit -m "更新：$(date '+%Y-%m-%d %H:%M')"
git push
echo "✅ 已推送到 GitHub Pages！"
EOF

chmod +x deploy.sh
```

以后写完章节，只需运行：
```bash
./deploy.sh
```

---

## 需要我帮你做什么？

1. **我可以执行 git push** - 但你得先告诉我仓库地址
2. **我可以生成 deploy.sh 脚本** - 方便以后一键更新
3. **我可以配置自动更新 index.html** - 每次推送前自动合并章节

---

**现在请告诉我你的 GitHub 用户名**，我帮你生成完整的推送命令！

或者直接执行上面的命令，然后告诉我仓库地址，我继续写小说！📖
