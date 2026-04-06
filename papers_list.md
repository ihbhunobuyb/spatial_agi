# Papers List

## 2026-04-02 论文列表（arXiv 2026-03-31）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 分析方法 | 文档行数 |
|---|------|----------|----------|-------------------|----------|----------|
| 01 | 2026-03-31 | OmniRoam | 全景视频生成实现长时域世界漫游，两阶段预览+精炼 | ★★★★★ | 手动分析 | ~200行 |
| 02 | 2026-03-31 | Video Models Reason Early | 视频模型"早期计划承诺"现象，12步路径阈值 | ★★★★★ | 手动分析 | ~220行 |
| 03 | 2026-03-31 | GeoCodeBench | PhD级3D几何编码基准，GPT-5仅36.6%准确率 | ★★★★★ | 手动分析 | ~210行 |
| 04 | 2026-03-31 | SurgNavAR | AR手术导航框架，1mm校准精度 | ★★★★☆ | 手动分析 | ~210行 |
| 05 | 2026-03-31 | Sensor Fusion 3D | 非平衡最优传输的多模态融合定位 | ★★★★☆ | 手动分析 | ~180行 |

### 论文详情

#### 1. OmniRoam: World Wandering via Long-Horizon Panoramic Video Generation

- **arXiv ID**: 2603.30045v1
- **发布日期**: 2026-03-31
- **作者**: Yuheng Liu, Xin Lin, Xinke Li
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 全景视频生成, 世界模型, 轨迹控制, 长时域漫游
- **摘要**: 提出OmniRoam框架，利用全景表示的丰富帧覆盖和长期空间-时间一致性，实现长时域场景漫游。两阶段设计：预览阶段生成场景概览，精炼阶段进行时间扩展和空间上采样。
- **文档**: papers/2026-04-02_01_OmniRoam.md

#### 2. Video Models Reason Early: Exploiting Plan Commitment for Maze Solving

- **arXiv ID**: 2603.30043v1
- **发布日期**: 2026-03-31
- **作者**: Kaleb Newman, Tyler Zhu, Olga Russakovsky
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视频扩散模型, 推理, 规划, 早期承诺, 迷宫求解
- **摘要**: 研究视频模型内部规划动态，发现"早期计划承诺"现象：模型在前几个去噪步骤就确定整体轨迹。路径长度是关键因素，失败阈值在12步。提出ChEaP策略，准确率从7%提升到67%。
- **文档**: papers/2026-04-02_02_VideoModelsReasonEarly.md

#### 3. GeoCodeBench: Benchmarking PhD-Level Coding in 3D Geometric Computer Vision

- **arXiv ID**: 2603.30038v1
- **发布日期**: 2026-03-31
- **作者**: Wenyi Li, Renkai Luo, Yue Yu
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 3D几何编码, 基准测试, AI辅助编程, 空间理解
- **摘要**: 首个PhD级3D几何视觉编码基准。GPT-5仅36.6%准确率，揭示当前模型在3D空间理解上的巨大差距。发现"更多论文文本不一定更好" - Method section截断效果更好。
- **文档**: papers/2026-04-02_03_GeoCodeBench.md

#### 4. SurgNavAR: An Augmented Reality Surgical Navigation Framework

- **arXiv ID**: 2603.29990v1
- **发布日期**: 2026-03-31
- **作者**: Abdullah Thabit, Mohamed Benmahdjoub, Rafiuddin Jinabade
- **类别**: cs.CV, cs.RO
- **相关性**: ⭐⭐⭐⭐
- **关键词**: AR手术导航, 3D配准, 实时跟踪, 空间定位
- **摘要**: 集成AR头显手术导航框架，支持患者和器械跟踪、术前影像配准、实时导航可视化。在HoloLens 2和Magic Leap 2上验证，达到1mm校准精度、3mm配准精度。
- **文档**: papers/2026-04-02_04_SurgNavAR.md

#### 5. Sensor Fusion for 3D Source Localization

- **arXiv ID**: 2603.29940v1
- **发布日期**: 2026-03-31
- **作者**: Ilyes Jaouedi, Gilles Chardon, José Picheral
- **类别**: cs.CV, eess.AS
- **相关性**: ⭐⭐⭐⭐
- **关键词**: 传感器融合, 3D定位, 最优传输, 多模态
- **摘要**: 通过非平衡最优传输正则化项融合传感器阵列和相机观测，实现3D声源定位。无需训练数据，模块化设计，通用框架。
- **文档**: papers/2026-04-02_05_SensorFusion3D.md

---

## 2026-03-31 论文列表（arXiv 2026-03-19~27）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 分析方法 | 文档行数 |
|---|------|----------|----------|-------------------|----------|----------|
| 01 | 2026-03-27 | GeoSR | 几何token空间推理增强，Geometry-Unleashing Masking | ★★★★★ | arXiv API | ~550行 |
| 02 | 2026-03-26 | HiSpatial | 层次化3D空间理解框架，RGB-D VLM | ★★★★★ | arXiv API | ~470行 |
| 03 | 2026-03-27 | PerceptionComp | 长时域视频推理基准，1,114个复杂问题 | ★★★★★ | arXiv API | ~480行 |
| 04 | 2026-03-26 | ViGoR-Bench | 视觉生成模型推理能力评估，20+模型测试 | ★★★★★ | arXiv API | ~460行 |
| 05 | 2026-03-19 | GSMem | 3D高斯溅射持久空间记忆，零样本具身探索 | ★★★★★ | arXiv API | ~520行 |

### 论文详情

#### 1. GeoSR: Make Geometry Matter for Spatial Reasoning

- **arXiv ID**: 2603.26639v1
- **发布日期**: 2026-03-27
- **作者**: Shihua Zhang, Qiuhong Shen, Shizun Wang, Tianbo Pan, Xinchao Wang
- **类别**: cs.CV, cs.AI
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 空间推理, 几何token, VLM, 深度估计
- **摘要**: 提出GeoSR框架，通过Geometry-Unleashing Masking和Geometry-Guided Fusion让VLM主动利用几何token进行空间推理，在静态和动态空间推理基准上建立新SOTA。
- **文档**: papers/2026-03-31_01_GeoSR.md

#### 2. HiSpatial: Taming Hierarchical 3D Spatial Understanding in Vision-Language Models

- **arXiv ID**: 2603.25411v1
- **发布日期**: 2026-03-26
- **作者**: 多位作者
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 层次化3D理解, VLM, RGB-D, 空间VQA
- **摘要**: 提出层次化框架将3D空间理解分解为四个层次，构建自动化管道处理5M图像生成3D空间VQA对，开发RGB-D VLM超越Gemini-2.5-pro等系统。
- **文档**: papers/2026-03-31_02_HiSpatial.md

#### 3. PerceptionComp: A Video Benchmark for Complex Perception-Centric Reasoning

- **arXiv ID**: 2603.26653v1
- **发布日期**: 2026-03-27
- **作者**: 多位作者
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视频推理, 长时域推理, MLLM评估, 多证据组合
- **摘要**: 构建1,114个需要多时刻视觉证据的复杂问题，揭示当前MLLMs在长时域感知推理上的显著差距，最佳模型仅45.96%准确率。
- **文档**: papers/2026-03-31_03_PerceptionComp.md

#### 4. ViGoR-Bench: How Far Are Visual Generative Models From Zero-Shot Visual Reasoners?

- **arXiv ID**: 2603.25823v1
- **发布日期**: 2026-03-26
- **作者**: 多位作者
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视觉生成模型, 推理评估, 零样本, 物理推理
- **摘要**: 揭示视觉生成模型在"逻辑荒漠"中的推理缺陷，提出ViGoR评估框架评估20+模型，发现即使最先进的系统也存在显著的推理缺陷。
- **文档**: papers/2026-03-31_04_ViGoR_Bench.md

#### 5. GSMem: 3D Gaussian Splatting as Persistent Spatial Memory

- **arXiv ID**: 2603.19137v1
- **发布日期**: 2026-03-19
- **作者**: 多位作者
- **类别**: cs.CV, cs.AI
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 3DGS, 空间记忆, 具身智能, 零样本探索
- **摘要**: 提出GSMem框架，将3D高斯溅射作为持久空间记忆，实现空间回忆能力，通过混合探索策略在具身问答和终身导航上验证有效性。
- **文档**: papers/2026-03-31_05_GSMem.md

## 2026-03-28 论文列表（arXiv 2026-03-26）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 文档行数 |
|---|------|----------|----------|-------------------|----------|
| 01 | 2026-03-26 | LaMP | VLA + 3D场景流潜在动作先验，双专家架构 | ★★★★★ | 27KB |
| 02 | 2026-03-26 | HiSpatial | VLM层次化3D空间理解，四层框架 | ★★★★★ | 31KB |
| 03 | 2026-03-26 | LanteRn | 潜在视觉结构化推理，latent space推理 | ★★★★★ | 32KB |
| 04 | 2026-03-26 | R-C2 | 强化学习循环一致性 | ★★★★☆ | 29KB |

## 2026-03-27 论文列表（arXiv 2026-03-24~27）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 文档行数 |
|---|------|----------|----------|-------------------|----------|
| 01 | 2026-03-24 | TAG | VLA策略杂乱场景鲁棒性提升，实例级grounding | ★★★★★ | 4700+行 |
| 02 | 2026-03-24 | EndoVGGT | 内镜动态3D重建，几何先验泛化 | ★★★★☆ | 摘要分析 |
| 03 | 2026-03-24 | LensWalk | VLM主动控制视觉观察的视频理解 | ★★★★★ | 4700+行 |
| 04 | 2026-03-24 | PhyGenesis | 物理一致性驾驶世界模型 | ★★★★★ | 4700+行 |
| 05 | 2026-03-24 | Generative World Models for AR | AR应用生成式世界模型 | ★★★★☆ | 4700+行 |

## 2026-03-26 论文列表（arXiv 2026-03-24）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 文档行数 |
|---|------|----------|----------|-------------------|----------|
| 01 | 2026-03-24 | 3DCity-LLM | 城市规模多模态LLM，1.2M数据集 | ★★★★★ | 4214行 |
| 02 | 2026-03-24 | SIMART | MLLM端到端分解静态网格为可模拟关节资产 | ★★★★★ | 摘要分析 |
| 03 | 2026-03-24 | Unleashing Spatial Reasoning | MLLM空间推理增强（TRACE方法） | ★★★★★ | 摘要分析 |
| 04 | 2026-03-24 | UniQueR | 统一查询式前馈3D重建框架 | ★★★★★ | 摘要分析 |
| 05 | 2026-03-24 | PhotoAgent | 具身智能体执行创意摄影任务 | ★★★★★ | 摘要分析 |

## 2026-03-25 论文列表（arXiv 2026-03-21~23）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 文档行数 |
|---|------|----------|----------|-------------------|----------|
| 01 | 2026-03-23 | 3D-Layout-R1 | 结构化推理语言指令空间编辑 | ★★★★★ | 直接分析 |
| 02 | 2026-03-23 | SpatialReward | 可验证空间奖励建模 | ★★★★★ | 直接分析 |
| 03 | 2026-03-23 | Beyond Matching to Tiles | 非对齐航拍/卫星视图跨视角导航 | ★★★★☆ | 直接分析 |
| 04 | 2026-03-22 | Mind over Space | MLLM跨时空尺度推理能力分析 | ★★★★★ | 直接分析 |
| 05 | 2026-03-21 | Attention in Space | VLM空间推理的Attention机制分析 | ★★★★☆ | 直接分析 |

## 2026-03-24 论文列表（arXiv）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 文档行数 |
|---|------|----------|----------|-------------------|----------|
| 01 | 2026-03-19 | WorldCam | 交互式3D游戏世界，相机姿态统一几何表示 | ★★★★★ | 500+行 |
| 02 | 2026-03-19 | Demystifying Video Reasoning | 扩散模型视频推理机制，CoF机制 | ★★★★☆ | 500+行 |
| 03 | 2026-03-19 | MessyKitchens | 接触丰富物体级3D场景重建 | ★★★★★ | 500+行 |
| 04 | 2026-03-19 | DreamPlan | 视频世界模型微调VLM规划器 | ★★★★★ | 500+行 |
| 05 | 2026-03-19 | MolmoB0T | 大规模仿真实现零样本操作 | ★★★★★ | 500+行 |

## 2026-03-18 论文列表（arXiv）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 文档行数 |
|---|------|----------|----------|-------------------|----------|
| 01 | 2026-03-18 | How Far are VLMs from Visual Spatial Intelligence? | VLM空间智能评估基准，SIBench 8.8K样本 | ★★★★★ | 557行 |
| 02 | 2026-03-18 | Evaluating VLMs' Spatial Reasoning Over Robot Motion | VLM机器人运动空间推理评估，558个问题 | ★★★★★ | 985行 |
| 03 | 2026-03-18 | Imagine in Space | VLM空间智能前沿，空间推理效率 | ★★★★☆ | 799行 |
| 04 | 2026-03-18 | World-in-World: World Models in a Closed-Loop World | 闭环世界模型，感知-决策集成 | ★★★★★ | 690行 |
| 05 | 2026-03-18 | PANORAMA: Omnidirectional Vision in Embodied AI | 全向视觉，360°环境感知 | ★★★★★ | 693行 |

## 2026-03-18 论文列表（之前）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 |
|---|------|----------|----------|-------------------|
| 01 | 2026-03-18 | Grounding World Simulation Models in a Real-World Metropolis | 首个真实城市世界模型 | ★★★★★ |
| 02 | 2026-03-18 | OpenClaw-RL: Train Any Agent Simply by Talking | 自然语言训练Agent | ★★★★★ |
| 03 | 2026-03-18 | Attention Residuals | PreNorm改进方案 | ★★★★☆ |
| 04 | 2026-03-18 | AI Can Learn Scientific Taste | 科研品味学习 | ★★★☆☆ |
| 05 | 2026-03-18 | OpenSeeker | 开源搜索Agent | ★★★★☆ |

## 2026-03-17 论文列表

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 |
|---|------|----------|----------|-------------------|
| 01 | 2026-03-17 | SpatialAlign | 空间对齐表示 | ★★★★★ |
| 02 | 2026-03-17 | Scale Pragmatics | 规模化 pragmatics | ★★★★☆ |
| 03 | 2026-03-17 | SOTAlign | 自监督时序对齐 | ★★★☆☆ |
| 04 | 2026-03-17 | Retrieve & Segment | 检索分割 | ★★★★☆ |
| 05 | 2026-03-17 | LMM Classifiers | 大模型分类器 | ★★★☆☆ |
| 06 | 2026-03-17 | OmniGaia | 全模态统一 | ★★★★★ |
| 07 | 2026-03-17 | DySL-VLA | 动态语言视觉智能体 | ★★★★★ |
| 08 | 2026-03-17 | TrajTok | 轨迹分词器 | ★★★★☆ |
| 09 | 2026-03-17 | Imagination | 空间想象力 | ★★★★★ |
| 10 | 2026-03-17 | SOPE | 空间位置编码 | ★★★☆☆ |

## 阅读优先级

### 2026-03-18 推荐

1. **必读**: Grounding World Simulation Models, OpenClaw-RL
2. **推荐**: Attention Residuals, OpenSeeker
3. **可选**: AI Can Learn Scientific Taste

## 研究趋势分析

### 本周主题
- **3月17日**: 空间对齐、多模态统一、动态智能体
- **3月18日**: 真实世界 grounding、世界模型、Agent训练

### 关键趋势
1. World Model 从虚拟环境转向真实城市场景
2. Agent 训练从奖励函数转向自然语言指导
3. 架构创新继续（Attention Residuals）

## 2026-03-20 研究的论文（精选5篇）

### 1. Loc3R-VLM: Language-based Localization and 3D Reasoning with Vision-Language Models

- **arXiv ID**: 2603.18002v1
- **发布日期**: 2026-03-18
- **作者**: Kevin Qu, Haozhe Qi, Mihai Dusmanu, Mahdi Rad, Rui Wang, Marc Pollefeys
- **类别**: cs.CV, cs.AI, cs.CL
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: VLM, 3D推理, 空间理解, 视点感知, 几何增强
- **摘要**: 多模态大语言模型在连接视觉和语言方面取得了显著进展，但在空间理解和视点感知推理方面仍然存在困难。最近的努力旨在通过增强输入表示的几何线索来解决这一问题。
- **文档**: papers/2026-03-20_01_Loc3R-VLM.md

### 2. Feeling the Space: Egomotion-Aware Video Representation for Efficient and Accurate 3D Scene Understanding

- **arXiv ID**: 2603.17980v1
- **发布日期**: 2026-03-18
- **作者**: Shuyao Shi, Kang G. Shin
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 3D场景理解, 自我运动, 视频表示, 效率
- **摘要**: 最近的多模态大语言模型在3D场景的空间推理方面显示出很高的潜力。然而，它们通常依赖于计算昂贵的3D表示。
- **文档**: papers/2026-03-20_02_Feeling_the_Space.md

### 3. GMT: Goal-Conditioned Multimodal Transformer for 6-DOF Object Trajectory Synthesis in 3D Scenes

- **arXiv ID**: 2603.17993v1
- **发布日期**: 2026-03-18
- **作者**: Huajian Zeng, Abhishek Saroha, Daniel Cremers, Xi Wang
- **类别**: cs.CV, cs.RO
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 6-DOF轨迹, 目标条件, 多模态变换器, 机器人操作
- **摘要**: 在3D环境中合成可控的6-DOF物体操作轨迹对于使机器人能够与复杂场景交互至关重要。
- **文档**: papers/2026-03-20_03_GMT.md

### 4. EchoGen: Cycle-Consistent Learning for Unified Layout-Image Generation and Understanding

- **arXiv ID**: 2603.18001v1
- **发布日期**: 2026-03-18
- **作者**: Kai Zou, Hongbo Liu, Dian Zheng, Jianxiong Gao, Zhiwei Zhao, Bin Liu
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐
- **关键词**: 布局生成, 图像理解, 空间关系, 统一框架
- **摘要**: EchoGen是一个统一的布局到图像生成和图像定位框架。
- **文档**: papers/2026-03-20_04_EchoGen.md

### 5. LoST: Level of Semantics Tokenization for 3D Shapes

- **arXiv ID**: 2603.17995v1
- **发布日期**: 2026-03-18
- **作者**: Niladri Shekhar Dutt, Zifan Shi, Paul Guerrero, et al.
- **类别**: cs.CV, cs.GR, cs.LG
- **相关性**: ⭐⭐⭐⭐
- **关键词**: 3D生成, tokenization, 自回归模型, 语义分词
- **摘要**: Tokenization是自回归模型中生成建模的关键技术，3D形状的最佳tokenization仍然是一个开放问题。
- **文档**: papers/2026-03-20_05_LoST.md

## 2026-03-24 研究的论文（精选5篇）

### 1. MME-CoF-Pro: Evaluating Reasoning Coherence in Video Generative Models with Text and Visual Hints

- **arXiv ID**: 2603.20194v1
- **发布日期**: 2026-03-20
- **作者**: Yu Qi, Xinyi Xu, Ziyu Guo, et al.
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视频生成, 推理一致性, 评估基准, 因果关系
- **摘要**: 视频生成模型显示出新兴的推理行为，但确保生成的事件在帧之间保持因果一致性对于可靠部署至关重要。本文提出MME-CoF-Pro来填补这一空白。
- **文档**: papers/2026-03-24_01_MME-CoF-Pro.md
- **NotebookLM**: 分析完成
- **文档行数**: 723行

### 2. LagerNVS: Latent Geometry for Fully Neural Real-time Novel View Synthesis

- **arXiv ID**: 2603.20176v1
- **发布日期**: 2026-03-20
- **作者**: Stanislaw Szymanowicz, Minghao Chen, Jianyuan Wang, Christian Rupprecht, Andrea Vedaldi
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 3D表示, 新视角合成, 神经渲染, 实时渲染
- **摘要**: 神经网络可以在不进行显式3D重建的情况下执行3D任务，但本文认为在网络设计中引入强3D归纳偏置仍然是有帮助的。
- **文档**: papers/2026-03-24_02_LagerNVS.md
- **NotebookLM**: 分析完成
- **文档行数**: 803行

### 3. EgoForge: Goal-Directed Egocentric World Simulator

- **arXiv ID**: 2603.20169v1
- **发布日期**: 2026-03-20
- **作者**: Yifan Shen, Jiateng Liu, Xinzhuo Li, et al.
- **类别**: cs.CV, cs.MM
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 世界模型, 第一人称视角, 目标导向, 生成式模型
- **摘要**: 生成式世界模型在模拟动态环境方面显示出潜力，但第一人称视频仍然具有挑战性，因为视角快速变化、频繁的手-物体交互、以及目标导向的过程。
- **文档**: papers/2026-03-24_03_EgoForge.md
- **NotebookLM**: 分析完成
- **文档行数**: 558行

### 4. Learning Dynamic Belief Graphs for Theory-of-Mind Reasoning

- **arXiv ID**: 2603.20170v1
- **发布日期**: 2026-03-20
- **作者**: Ruxiao Chen, Xilei Zhao, Thomas J. Cova, Frank A. Drews
- **类别**: cs.AI
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: ToM推理, 信念图, 动态推理, LLM
- **摘要**: 理论心智(ToM)推理需要推断人们隐含的、不断演变的信念如何塑造他们在不确定性下的行为。
- **文档**: papers/2026-03-24_04_DynamicBeliefGraphs.md
- **NotebookLM**: 分析完成
- **文档行数**: 755行

### 5. CoVR-R: Reason-Aware Composed Video Retrieval

- **arXiv ID**: 2603.20190v1
- **发布日期**: 2026-03-20
- **作者**: 待确认
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视频检索, 组合检索, 时空推理, 零样本
- **摘要**: 组合视频检索(CoVR)旨在给定参考视频和文本修改找到目标视频。本文认为成功的CoVR需要对这些后效应进行推理。
- **文档**: papers/2026-03-24_05_CoVR-R.md
- **NotebookLM**: 分析完成
- **文档行数**: 589行

## 2026-03-23 研究的论文（精选5篇）

### 1. IndoorR2X: Indoor Robot-to-Everything Coordination with LLM-Driven Planning

- **arXiv ID**: 2603.20182v1
- **发布日期**: 2026-03-20
- **作者**: Fan Yang, Soumya Teotia, Shaunak A. Mehta, et al.
- **类别**: cs.RO, cs.MA
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 机器人协调, LLM规划, 室内导航, R2R, R2IoT
- **摘要**: 虽然机器人对机器人(R2R)通信可以改善室内场景理解，但R2R本身无法克服部分可观测性问题。本文提出利用环境中已有的IoT设备来补充感知信息。
- **文档**: papers/2026-03-23_01_IndoorR2X.md

### 2. EgoForge: Goal-Directed Egocentric World Simulator

- **arXiv ID**: 2603.20169v1
- **发布日期**: 2026-03-20
- **作者**: Yifan Shen, Jiateng Liu, Xinzhuo Li, et al.
- **类别**: cs.CV, cs.MM
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 世界模型, 第一人称视角, 目标导向, 生成式模型
- **摘要**: 生成式世界模型在模拟动态环境方面显示出潜力，但第一人称视频仍然具有挑战性，因为视角快速变化、频繁的手-物体交互、以及目标导向的过程。
- **文档**: papers/2026-03-23_02_EgoForge.md

### 3. VideoSeek: Long-Horizon Video Agent with Tool-Guided Seeking

- **arXiv ID**: 2603.20185v1
- **发布日期**: 2026-03-20
- **作者**: Jingyang Lin, Jialian Wu, Jiang Liu, et al.
- **类别**: cs.CV, cs.AI, cs.CL
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视频Agent, 长时理解, 工具使用, 逻辑流
- **摘要**: 大多数视频Agent方法依赖于对密集采样视频帧的贪婪解析，导致高计算成本。本文提出VideoSeek，利用视频逻辑流来激活工具使用。
- **文档**: papers/2026-03-23_03_VideoSeek.md

### 4. LagerNVS: Latent Geometry for Fully Neural Real-time Novel View Synthesis

- **arXiv ID**: 2603.20176v1
- **发布日期**: 2026-03-20
- **作者**: Stanislaw Szymanowicz, Minghao Chen, Jianyuan Wang, Christian Rupprecht, Andrea Vedaldi
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 3D表示, 新视角合成, 神经渲染, 实时渲染
- **摘要**: 神经网络可以在不进行显式3D重建的情况下执行3D任务，但本文认为在网络设计中引入强3D归纳偏置仍然是有帮助的。
- **文档**: papers/2026-03-23_04_LagerNVS.md

### 5. MME-CoF-Pro: Evaluating Reasoning Coherence in Video Generative Models

- **arXiv ID**: 2603.20194v1
- **发布日期**: 2026-03-20
- **作者**: Yu Qi, Xinyi Xu, Ziyu Guo, et al.
- **类别**: cs.CV
- **相关性**: ⭐⭐⭐⭐⭐
- **关键词**: 视频生成, 推理一致性, 评估基准, 因果关系
- **摘要**: 视频生成模型显示出新兴的推理行为，但确保生成的事件在帧之间保持因果一致性对于可靠部署至关重要。
- **文档**: papers/2026-03-23_05_MME-CoF-Pro.md

## 2026-04-07 论文列表（arXiv 2026-04-03）

| # | 日期 | 论文标题 | 核心贡献 | Spatial AGI相关性 | 分析方法 | 文档行数 |
|---|------|----------|----------|-------------------|----------|----------|
| 01 | 2026-04-03 | Multi-View Video Diffusion Policy | 3D时空感知视频动作模型 | ★★★★★ | arXiv摘要 | ~150行 |
| 02 | 2026-04-03 | Flash-Mono | 前馈单目3DGS SLAM | ★★★★★ | arXiv摘要 | ~120行 |
| 03 | 2026-04-03 | SparseSplat | 稀疏3D Gaussian | ★★★★☆ | arXiv摘要 | ~90行 |
| 04 | 2026-04-03 | LiDAR Off-Road Navigation | 越野自动驾驶 | ★★★★☆ | arXiv摘要 | ~100行 |
| 05 | 2026-04-03 | PR3DICTR | 3D医学图像平台 | ★★★☆☆ | arXiv摘要 | ~80行 |

### 论文详情

#### 1. Multi-View Video Diffusion Policy: A 3D Spatio-Temporal-Aware Video Action Model

- **arXiv ID**: 2604.03181v1
- **发布日期**: 2026-04-03
- **关键词**: video diffusion, spatio-temporal, robot manipulation, 3D understanding
- **摘要**: 机器人操作需要同时理解3D空间结构和时间演化。提出Multi-View Video Diffusion Policy，利用视频扩散模型学习时空表示。
- **文档**: papers/2026-04-07_01_multi_view_video_diffusion_policy.md

#### 2. Flash-Mono: Feed-Forward Accelerated Gaussian Splatting Monocular SLAM

- **arXiv ID**: 2604.03092v1
- **发布日期**: 2026-04-03
- **关键词**: 3D Gaussian Splatting, SLAM, monocular, feed-forward
- **摘要**: 单目3DGS SLAM存在时间效率问题。提出前馈加速方法，实现实时3D重建。
- **文档**: papers/2026-04-07_02_flash_mono_slam.md

#### 3. SparseSplat: Towards Applicable Feed-Forward 3D Gaussian Splatting

- **arXiv ID**: 2604.03069v1
- **发布日期**: 2026-04-03
- **关键词**: sparse 3DGS, feed-forward, pixel alignment
- **摘要**: 之前的feed-forward 3DGS存在冗余问题。 SparseSplat提出稀疏表示减少冗余。
- **文档**: papers/2026-04-07_03_sparse_splat.md

#### 4. An Open-Source LiDAR and Monocular Off-Road Autonomous Navigation Stack

- **arXiv ID**: 2604.03096v1
- **发布日期**: 2026-04-03
- **关键词**: LiDAR, off-road, autonomous navigation, obstacle detection
- **摘要**: 越野自动驾驶需要可靠3D感知。提出LiDAR+单目融合的感知栈。
- **文档**: papers/2026-04-07_04_lidar_offroad_nav.md

#### 5. PR3DICTR: Platform for Research in 3D Image Classification

- **arXiv ID**: 2604.03203v1
- **发布日期**: 2026-04-03
- **关键词**: 3D medical imaging, platform, classification
- **摘要**: 3D医学图像研究需要统一平台。PR3DICTR提供标准化框架。
- **文档**: papers/2026-04-07_05_pr3dictor.md
