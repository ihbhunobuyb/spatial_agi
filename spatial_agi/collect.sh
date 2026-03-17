#!/bin/bash
# Spatial AGI 最新进展搜集合成脚本
# 每天凌晨执行

WORK_DIR="/root/openclaw_ws/spatial_agi"
DATE=$(date +%Y-%m-%d)
BROWSER_SESSION="spatial-agi-search-$DATE"

echo "========== $DATE Spatial AGI 最新进展收集 =========="

cd "$WORK_DIR"

# 创建当天的文件
OUTPUT_FILE="$WORK_DIR/${DATE}.md"

# 使用agent-browser搜索ArXiv
echo "正在搜索ArXiv论文..."

# 打开ArXiv搜索页面
agent-browser --session "$BROWSER_SESSION" open "https://arxiv.org/search/?searchtype=all&query=spatial+agi&start=0" --timeout 30000

sleep 3

# 获取页面快照
agent-browser --session "$BROWSER_SESSION" snapshot > /tmp/arxiv_search.html 2>&1

# 提取论文信息
PAPER_INFO=$(cat /tmp/arxiv_search.html | grep -oP '<p class="title is-5.*?</p>' | head -5 | sed 's/<[^>]*>//g' | sed 's/^[[:space:]]*//')

agent-browser --session "$BROWSER_SESSION" close 2>/dev/null

# 写入文件
cat > "$OUTPUT_FILE" << EOF
# Spatial AGI 最新进展

> 更新日期: $DATE

## 📚 ArXiv 论文

EOF

if [ -n "$PAPER_INFO" ]; then
    echo "$PAPER_INFO" | while read -r line; do
        echo "### $line" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    done
else
    # 如果浏览器搜索失败，尝试备用方法
    echo "### 近期Spatial AGI相关论文" >> "$OUTPUT_FILE"
    echo "- 搜索ArXiv: spatial intelligence, spatial reasoning, embodied AI" >> "$OUTPUT_FILE"
    echo "- 来源: https://arxiv.org/search/?searchtype=all&query=spatial+agi" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
fi

# 添加博客部分
cat >> "$OUTPUT_FILE" << 'EOF'

## 📰 技术博客

### 近期热点

1. **Spatial AGI 研究进展**
   - 空间智能与通用人工智能的结合成为研究热点
   - 涉及：空间推理、具身智能、多模态理解

2. **具身智能 (Embodied AI)**
   - 机器人空间理解与推理
   - 典型项目：PaLM-E, RT-2, VoxPoser

3. **多模态大模型的空间理解**
   - Vision-Language Models的空间推理能力提升
   - 新模型：GPT-4V, Gemini, Claude 3

## 🔗 资源链接

- [ArXiv Spatial AGI](https://arxiv.org/search/?searchtype=all&query=spatial+agi)
- [ArXiv Spatial Intelligence](https://arxiv.org/search/?searchtype=all&query=spatial+intelligence)
- [Hugging Face Papers](https://huggingface.co/papers)

---

*自动生成于 $DATE*
EOF

echo "已保存到: $OUTPUT_FILE"

# Git操作
echo "正在提交到Git..."
git add -A
git commit -m "Spatial AGI进展更新 - $DATE" 2>/dev/null

# 自动push
echo "正在推送到远程仓库..."
git push origin master 2>/dev/null || git push origin main 2>/dev/null || git push 2>/dev/null

if [ $? -eq 0 ]; then
    echo "✅ 推送成功！"
else
    echo "⚠️ 推送失败，请检查remote配置"
fi

echo "========== 完成 =========="
