# Grounded World Model for Semantically Generalizable Planning

## 论文基本信息

- **arXiv ID**: 2604.11751v1
- **发布日期**: 2026-04-13
- **作者**: Quanyi Li, Lan Feng, Haonan Zhang, Wuyang Li, Letian Wang, Alexandre Alahi, Harold Soh
- **机构**: 新加坡国立大学、南洋理工大学等
- **类别**: Robotics (cs.RO), Artificial Intelligence (cs.AI)
- **arXiv链接**: https://arxiv.org/abs/2604.11751v1
- **PDF链接**: https://arxiv.org/pdf/2604.11751v1

## 摘要

In Model Predictive Control (MPC), world models predict the future outcomes of various action proposals, which are then scored to guide the selection of the optimal action. For visuomotor MPC, the score function is a distance metric between a predicted image and a goal image, measured in the latent space of a pretrained vision encoder like DINO and JEPA. However, it is challenging to obtain the goal image in advance of the task execution, particularly in new environments. Additionally, conveying the goal through an image offers limited interactivity compared with natural language. In this work, we propose to learn a Grounded World Model (GWM) in a vision-language-aligned latent space. As a result, each proposed action is scored based on how close its future outcome is to the task instruction, reflected by the similarity of embeddings. This approach transforms the visuomotor MPC to a VLA that surpasses VLM-based VLAs in semantic generalization. On the proposed WISER benchmark, GWM-MPC achieves a 87% success rate on the test set comprising 288 tasks that feature unseen visual signals and referring expressions, yet remain solvable using motions demonstrated during training. In contrast, traditional VLAs achieve an average success rate of 22%, even though they overfit the training set with a 90% success rate.

## 核心算法原理

### 1. 问题背景与动机

#### 1.1 传统Visuomotor MPC的局限

- **目标图像获取困难**: 在新环境中很难提前获取目标图像
- **交互性差**: 通过图像传达目标缺乏灵活性，不如自然语言交互
- **泛化能力有限**: 依赖预训练的视觉编码器（如DINO、JEPA）的潜在空间

#### 1.2 核心创新

将visuomotor MPC转变为VLA，在视觉-语言对齐的潜在空间中学习世界模型，使得动作评分可以直接基于语言指令的相似度。

### 2. Grounded World Model (GWM) 架构

#### 2.1 视觉-语言对齐空间

- 使用预训练的视觉-语言对齐模型（如CLIP）作为基础
- 将图像和语言指令映射到统一的潜在空间
- 在该空间中进行动作评分和规划

#### 2.2 世界模型学习

- **动作评分机制**: 基于预测的未来状态与任务指令在潜在空间中的相似度
- **语义泛化能力**: 通过语言指令泛化到新场景，无需目标图像

#### 2.3 MPC框架

- **动作提议生成**: 采样多个候选动作
- **世界模型预测**: 对每个动作预测未来状态
- **评分与选择**: 选择最接近任务指令的动作

### 3. WISER Benchmark

论文提出了WISER benchmark来评估语义泛化能力：

- **测试集规模**: 288个任务
- **特征**: 
  - 未见的视觉信号（unseen visual signals）
  - 未见的指代表达（unseen referring expressions）
  - 可通过训练时演示的运动解决
- **评估重点**: 语义泛化能力而非视觉识别能力

### 4. 实验结果

#### 4.1 WISER测试集性能

- **GWM-MPC**: 87% 成功率
- **传统VLA**: 平均22% 成功率（训练集90%）

#### 4.2 关键发现

- GWM-MPC显著超越传统VLA的语义泛化能力
- 在训练集上表现相近的情况下，泛化测试差异巨大
- 证明了视觉-语言对齐空间对于语义泛化的重要性

## 与Spatial AGI的关系

### 1. 语义泛化与空间理解

这篇论文与Spatial AGI有非常直接和深刻的关系：

#### 1.1 语义-空间映射

- 将语言指令（语义）映射到具体空间动作是Spatial AGI的核心能力
- GWM展示了如何在潜在空间中建立这种映射

#### 1.2 泛化机制

- **语义泛化**: 通过语言指令泛化到新场景
- **与视觉泛化的区别**: 不依赖特定的视觉模式，而是依赖语义理解

### 2. 世界模型与空间智能

#### 2.1 世界模型的重要性

- GWM本质上是一个世界模型，能够预测动作的未来结果
- 在视觉-语言对齐空间中的世界模型可以更好地泛化

#### 2.2 对Spatial AGI的启示

- **统一表示**: 视觉和语言的统一表示是空间智能的基础
- **语义推理**: 空间推理需要与语义理解结合

### 3. MPC与规划

#### 3.1 MPC作为规划框架

- MPC提供了一个可行的规划框架选择
- 可以扩展为更复杂的分层规划系统

#### 3.2 动作空间设计

- 潜在空间中的评分机制为动作选择提供了有效的抽象
- 可以借鉴到更通用的Spatial AGI规划系统中

### 4. VLA范式

#### 4.1 VLA vs 传统方法

- 将visuomotor MPC转变为VLA是范式上的创新
- VLA可以更好地利用大规模预训练模型

#### 4.2 对Spatial AGI的意义

- VLA范式为构建通用空间智能agent提供了可行的路径
- 语言作为接口提供了更高的灵活性

## 个人思考与评价

### 1. 论文贡献评价

#### 1.1 突出贡献

- **语义泛化的突破**: 87% vs 22%的泛化差距是显著的
- **新benchmark**: WISER为评估语义泛化提供了有价值的工具
- **范式创新**: 将MPC转变为VLA，开辟了新研究方向

#### 1.2 技术细节分析

- 视觉-语言对齐空间的选择（CLIP）是合理的
- MPC框架提供了可靠的规划机制
- 评分函数的设计简洁有效

### 2. 对Spatial AGI研究的启示

#### 2.1 核心启示

- **语义理解是空间智能的关键**: 能够理解"把红色的杯子放到蓝色的盘子上"这样的指令
- **语言作为桥梁**: 语言可以连接抽象语义和具体空间动作
- **泛化来自对齐**: 视觉-语言对齐是泛化的关键

#### 2.2 架构启示

- 不需要针对每个空间任务设计专门的模块
- 预训练的视觉-语言模型已经编码了足够的语义-空间对应
- 关键是设计有效的接口来利用这些能力

#### 2.3 训练策略

- 语义泛化需要特定的数据分布和训练范式
- 简单地在训练集上表现良好不够，需要专门设计泛化评估

### 3. 潜在改进方向

#### 3.1 模型层面

- 使用更强大的视觉-语言模型（如GPT-4V）
- 探索多模态世界模型（加入触觉、力反馈等）

#### 3.2 规划层面

- 分层规划以处理更复杂任务
- 长期规划与MPC的结合

#### 3.3 评估层面

- 更大规模的benchmark
- 真实机器人实验验证

### 4. 开放性问题

- 如何处理更复杂的语言指令（包含多个约束）？
- 如何处理歧义性和指代不明确的情况？
- 如何在持续学习场景中保持泛化能力？

### 5. 与其他研究的联系

- 与RT系列机器人的对比
- 与SayCan等语言引导的机器人规划的比较
- 与 world model research 的联系

## 结论

Grounded World Model (GWM) 通过在视觉-语言对齐空间中学习世界模型，实现了显著的语义泛化能力。87%的测试集成功率相比传统VLA的22%展示了语义理解对于空间智能的重要性。这篇论文对Spatial AGI研究的核心启示是：空间智能不仅仅是视觉理解，更是语义理解与空间推理的结合。语言作为人类表达空间意图的主要方式，为构建通用Spatial AGI系统提供了有效的接口。

---

**分析日期**: 2026-04-15
**分析方法**: 手动分析（NotebookLM未认证）
**相关领域**: 世界模型、语义规划、视觉-语言-动作模型、空间智能
**关键词**: Grounded World Model, MPC, 语义泛化, VLA, WISER benchmark