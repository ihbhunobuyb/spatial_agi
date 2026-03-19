---
name: embodied-agi-research
description: 完整的Embodied AGI研究流程 - 从arXiv搜索到深度分析，每天精读5篇论文，使用NotebookLM进行深度分析
---

# Embodied AGI Research Skill - 完整流程

这个技能用于系统化地研究Embodied AGI（具身通用智能）领域的最新进展。

**核心特点**:
- ✅ 每天精读5篇论文（质量 > 数量）
- ✅ 使用NotebookLM询问核心问题
- ✅ 生成详细的论文分析文档
- ✅ 每日思考文档（延续性研究）

## 📋 完整流程（必须按顺序执行）

### Step 1: 搜索arXiv最新论文 ✅

**搜索关键词**:
- `embodied intelligence`
- `embodied AI`
- `robot learning`
- `manipulation`
- ` locomotion`
- `humanoid`
- `bimanual`
- `mobile manipulation`
- `sim-to-real`
- `real-to-sim`

**执行命令**:
```bash
cd ~/.openclaw/workspace/scripts

# 搜索多个关键词
python3 search_arxiv.py "all:embodied+all:intelligence" 20
python3 search_arxiv.py "all:robot+all:learning" 20
python3 search_arxiv.py "all:manipulation+all:robot" 20
python3 search_arxiv.py "all:sim+all:real+all:transfer" 20
python3 search_arxiv.py "all:humanoid+all:robot" 20
```

**输出**: JSON格式的论文列表，包含标题、摘要、链接、作者等

---

### Step 2: 筛选最有价值的5篇论文 ✅

**筛选标准**:
1. **相关性**: 与embodied AGI直接相关
2. **创新性**: 提出新的方法或见解
3. **影响力**: 来自知名机构或作者
4. **时效性**: 最近1-2个月发表（优先）

**筛选流程**:
```bash
# 1. 查看搜索结果
cat /tmp/today_papers.json

# 2. 按相关性排序
# 3. 选择top 5（精读，不是泛读）
# 4. 记录到papers_list.md
```

**输出**: 5篇精选论文（深度分析），记录到:
- `~/spatial_agi/embodied/papers_list.md`

---

### Step 3: 使用NotebookLM精读每篇论文 ✅

**核心问题（3个必问）**：

1. **核心算法原理**: 这篇文章的核心算法原理是什么？请详细描述主要技术方法和创新点。

2. **与Embodied AGI的关系**: 这篇文章与具身通用智能（Embodied AGI）有什么关系？对Embodied AGI有什么启发？

3. **自由问题**: 基于前两个问题的答案，提出一个你最感兴趣的问题。

**命令示例**:
```bash
# 设置代理
export PROXY_HOST=127.0.0.1
export PROXY_PORT=1080
export PROXY_TYPE=socks5

# 使用notebooklm-proxy.sh
~/.openclaw/workspace/scripts/notebooklm-proxy.sh ask "$NOTEBOOK_ID" "核心算法原理是什么？"

~/.openclaw/workspace/scripts/notebooklm-proxy.sh ask "$NOTEBOOK_ID" "与Embodied AGI有什么关系？"

~/.openclaw/workspace/scripts/notebooklm-proxy.sh ask "$NOTEBOOK_ID" "你感兴趣的问题"
```

---

### Step 4: 创建Markdown文档 ✅

**模板**: 参考 `papers/EXAMPLE_full_analysis_template.md`

**必须包含**:
1. 基本信息（标题、链接、作者）
2. 核心问题回答
3. 主要方法
4. 实验结果
5. 与Embodied AGI的关系
6. 个人思考

**保存位置**:
```
~/spatial_agi/embodied/papers/YYYY-MM-DD_XX_paper_title.md
```

---

### Step 5: 生成每日思考

综合所有论文的见解，生成深度思考文档。

---

## 🎯 核心研究方向

### 1. 机器人学习
- 强化学习在机器人中的应用
- 模仿学习
- 元学习

### 2. 感知-动作闭环
- 视觉伺服
- 触觉感知
- 多模态感知

### 3. 具身智能
- 身体形态对智能的影响
- 运动控制
- 自主导航

### 4. Sim-to-Real
- 域随机化
- 域适应
- 仿真到真实迁移

### 5. 人形机器人
- 双手机器人
- 全身控制
- 人类交互

---

## 📁 目录结构

```
~/spatial_agi/embodied/
├── papers/                      # 论文分析文档
│   └── YYYY-MM-DD_XX_*.md
├── daily_thinking/              # 每日思考
│   └── YYYY-MM-DD.md
├── papers_list.md               # 论文列表
└── README.md                   # 项目说明
```

---

## ✅ 质量检查清单

- [ ] 搜索了至少5个关键词
- [ ] 筛选出5篇最有价值的论文
- [ ] 每篇论文使用NotebookLM分析
- [ ] 询问了3个核心问题
- [ ] 创建了详细的markdown文档
- [ ] 包含完整的NotebookLM问答记录
- [ ] 添加了个人思考
- [ ] 生成了每日思考文档

---

## ⚠️ 注意事项

1. **质量第一**: 不要为了速度而降低质量
2. **独立分析**: 每篇论文独立处理
3. **记录完整**: 保存所有NotebookLM问答
4. **持续改进**: 根据使用经验调整

---

## 🚀 快速开始

```bash
# 1. 搜索论文
cd ~/.openclaw/workspace/scripts
python3 search_arxiv.py "all:embodied+all:intelligence" 20

# 2. 创建notebook
~/.openclaw/workspace/scripts/notebooklm-proxy.sh create "Embodied AGI Research"

# 3. 添加论文来源
~/.openclaw/workspace/scripts/notebooklm-proxy.sh source add "$NOTEBOOK_ID" "https://arxiv.org/abs/xxx"

# 4. 询问问题
~/.openclaw/workspace/scripts/notebooklm-proxy.sh ask "$NOTEBOOK_ID" "核心算法原理是什么？"

# 5. 生成文档
# 使用 research_analysis.sh 或手动创建
```

---

**记住**: 目标是深度理解论文与Embodied AGI的关系。使用NotebookLM获得深入见解。
