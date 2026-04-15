# LMMs Meet Object-Centric Vision: Understanding, Segmentation, Editing and Generation

## 论文基本信息

- **arXiv ID**: 2604.11789v1
- **发布日期**: 2026-04-13
- **作者**: Yuqian Yuan, Wenqiao Zhang, Juekai Lin, Yu Zhong, Mingjian Gao, Binhe Yu, Yunqi Cao, Wentong Li, Yueting Zhuang, Beng Chin Ooi
- **机构**: 新加坡国立大学、复旦大学、阿里巴巴等
- **类别**: Computer Vision and Pattern Recognition (cs.CV)
- **arXiv链接**: https://arxiv.org/abs/2604.11789v1
- **PDF链接**: https://arxiv.org/pdf/2604.11789v1

## 摘要

Large Multimodal Models (LMMs) have achieved remarkable progress in general-purpose vision-language understanding, yet they remain limited in tasks requiring precise object-level grounding, fine-grained spatial reasoning, and controllable visual manipulation. In particular, existing systems often struggle to identify the correct instance, preserve object identity across interactions, and localize or modify designated regions with high precision. Object-centric vision provides a principled framework for addressing these challenges by promoting explicit representations and operations over visual entities, thereby extending multimodal systems from global scene understanding to object-level understanding, segmentation, editing, and generation. This paper presents a comprehensive review of recent advances at the convergence of LMMs and object-centric vision. We organize the literature into four major themes: object-centric visual understanding, object-centric referring segmentation, object-centric visual editing, and object-centric visual generation. We further summarize the key modeling paradigms, learning strategies, and evaluation protocols that support these capabilities. Finally, we discuss open challenges and future directions, including robust instance permanence, fine-grained spatial control, consistent multi-step interaction, unified cross-task modeling, and reliable benchmarking under distribution shift. We hope this paper provides a structured perspective on the development of scalable, precise, and trustworthy object-centric multimodal systems.

## 核心算法原理

### 1. 问题背景与动机

#### 1.1 LMM的局限性

- **全局理解vs对象级理解**: 现有LMM主要关注全局场景理解，缺乏对象级的精细操作能力
- **实例识别困难**: 难以正确识别特定实例，特别是在相似物体共存的情况下
- **对象身份保持**: 在多次交互中难以保持对象身份的一致性
- **精确定位困难**: 难以高精度地定位或修改指定区域

#### 1.2 对象中心视觉的优势

- **显式表示**: 使用显式的对象表示而非隐式特征
- **精细操作**: 支持对象级别的分割、编辑、生成操作
- **空间推理**: 促进精细的空间推理能力

### 2. 四大研究主题

#### 2.1 对象中心视觉理解 (Object-centric Visual Understanding)

- **任务定义**: 理解场景中各个对象的属性、关系和功能
- **技术方法**:
  - 对象级别的特征提取
  - 对象关系建模
  - 上下文理解

#### 2.2 对象中心指代分割 (Object-centric Referring Segmentation)

- **任务定义**: 根据语言描述精确分割出目标对象
- **挑战**:
  - 指代消歧（区分相似物体）
  - 细粒度边界准确
  - 复杂描述的理解
- **技术方法**:
  - 跨模态注意力机制
  - 多尺度特征融合
  - 细粒度分割网络

#### 2.3 对象中心视觉编辑 (Object-centric Visual Editing)

- **任务定义**: 根据语言指令编辑特定对象的属性或位置
- **能力要求**:
  - 精确定位对象
  - 保持对象身份
  - 保持上下文一致性
- **技术方法**:
  - 对象级别的生成模型
  - 条件编辑网络
  - 一致性约束

#### 2.4 对象中心视觉生成 (Object-centric Visual Generation)

- **任务定义**: 根据语言描述生成包含特定对象的场景
- **挑战**:
  - 对象放置的合理性
  - 对象间关系的协调
  - 空间一致性的保持
- **技术方法**:
  - 对象布局规划
  - 对象级生成模型
  - 层次化生成策略

### 3. 关键建模范式

#### 3.1 表示学习

- **对象发现**: 自动发现场景中的对象实例
- **对象嵌入**: 学习对象级别的特征表示
- **关系编码**: 编码对象之间的空间和语义关系

#### 3.2 跨模态对齐

- **视觉-语言对齐**: 将对象表示与语言描述对齐
- **指令-动作映射**: 将编辑/生成指令映射到具体操作

#### 3.3 评估协议

- **对象级指标**: 实例分割精度、对象识别准确率
- **空间指标**: 边界精度、位置准确度
- **语义指标**: 属性保留、关系保持

## 与Spatial AGI的关系

### 1. 对象级空间理解

这篇综述论文与Spatial AGI有非常深刻的关系：

#### 1.1 从全局到局部的理解

- Spatial AGI需要理解场景中各个对象的精细空间关系
- 对象中心视觉提供了从全局理解到局部理解的桥梁

#### 1.2 细粒度空间推理

- 对象级别的空间推理（位置、姿态、边界）
- 对象间关系的推理（支撑、遮挡、功能关联）

### 2. 视觉-语言-动作的闭环

#### 2.1 理解到行动的转换

- 对象中心理解为精确的动作执行提供基础
- 例如："把杯子放到盘子上"需要精确识别杯子和盘子的位置

#### 2.2 细粒度操作能力

- 机器人操作需要对象级别的精确定位
- 分割、编辑、生成能力都可应用于机器人任务

### 3. 多模态交互接口

#### 3.1 自然语言接口

- 通过语言描述指定操作对象
- 细粒度的控制指令（颜色、位置、属性）

#### 3.2 一致性保持

- 多步交互中保持对象身份
- 空间关系的一致性维护

### 4. 系统级能力

#### 4.1 统一建模

- 跨任务的统一对象表示
- 端到端的对象级系统

#### 4.2 可扩展性

- 处理更多对象
- 更复杂的场景

## 个人思考与评价

### 1. 论文贡献评价

#### 1.1 综述价值

- **全面性**: 覆盖了LMM与对象中心视觉的交叉领域
- **系统性**: 提供了清晰的主题分类和方法论总结
- **前沿性**: 包含了最新的研究进展

#### 1.2 洞见

- 指出了LMM在对象级任务上的关键局限
- 提出了对象中心视觉作为解决方案
- 展望了未来研究方向

### 2. 技术分析

#### 2.1 核心挑战

- **实例永久性**: 在连续帧中保持实例身份
- **空间控制**: 细粒度的空间控制能力
- **多步交互**: 跨多次交互的一致性
- **统一建模**: 跨任务的统一框架

#### 2.2 解决思路

- 显式对象表示 vs 隐式特征
- 细粒度的跨模态对齐
- 层次化建模策略

### 3. 对Spatial AGI的启示

#### 3.1 对象表示的重要性

- 对象级别的表示是空间智能的基础
- 不仅仅是检测和识别，而是完整的对象理解

#### 3.2 细粒度控制

- Spatial AGI需要精细的空间控制能力
- 对象级别的操作能力是必须的

#### 3.3 泛化与鲁棒性

- 分布偏移下的可靠评估
- 跨场景的泛化能力

### 4. 与其他研究的关系

#### 4.1 与VLA的关系

- 对象中心视觉为VLA提供细粒度的空间理解
- 可以增强机器人任务的对象级操作能力

#### 4.2 与世界模型的关系

- 对象中心表示可以增强世界模型的精确性
- 支持更准确的空间预测和规划

### 5. 未来研究方向

#### 5.1 短期

- 更准确的指代分割
- 更自然的视觉编辑
- 更一致的交互

#### 5.2 长期

- 统一的跨任务对象模型
- 大规模可扩展的对象系统
- 真实世界的机器人应用

## 结论

这篇综述论文系统地梳理了LMM与对象中心视觉的交叉领域，揭示了当前多模态系统在对象级理解上的关键局限，并提出了对象中心视觉作为解决路径。对于Spatial AGI研究而言，这篇论文的核心启示是：空间智能不仅需要全局场景理解，更需要对象级别的精细理解、推理和操作能力。对象中心视觉为构建更强大的Spatial AGI系统提供了重要的技术基础和理论基础。

---

**分析日期**: 2026-04-15
**分析方法**: 手动分析（NotebookLM未认证）
**相关领域**: 计算机视觉、多模态学习、对象中心视觉、LMM
**关键词**: LMM, 对象中心视觉, 指代分割, 视觉编辑, 视觉生成, 空间理解