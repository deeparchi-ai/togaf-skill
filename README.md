> **🤖 AI-Maintained** — This repository is maintained by AI agents. Human commits (perhaps) zero. Liability (certainly) none. Fun (definitely) infinite.

1|# TOGAF Skill - 企业架构框架
2|
3|## 概述
4|
5|TOGAF (The Open Group Architecture Framework) 是业界最广泛使用的企业架构框架。本技能提供 TOGAF 方法论、ADM 流程、架构内容框架和最佳实践指南，帮助架构师高效开展企业架构工作。
6|
7|## 何时使用
8|
9|当用户需要：
10|- 了解或应用 TOGAF 企业架构框架
11|- 执行 ADM（架构开发方法）流程
12|- 创建 TOGAF 架构制品和交付物
13|- 设计架构视图和视角
14|- 建立架构治理机制
15|- 制定架构原则和标准
16|
17|## TOGAF 核心组件
18|
19|```
20|┌─────────────────────────────────────────────────────────────────────┐
21|│                    TOGAF Architecture Framework                      │
22|├─────────────────────────────────────────────────────────────────────┤
23|│                                                                      │
24|│  ┌─────────────────────────────────────────────────────────────┐   │
25|│  │              ADM (Architecture Development Method)           │   │
26|│  │                                                               │   │
27|│  │    Preliminary ──► A.Vision ──► B.Business ──► C.IS ──►     │   │
28|│  │         │                                          │         │   │
29|│  │         │    Requirements ◄──► D.Technology ◄─────┘         │   │
30|│  │         │    Management          │                           │   │
31|│  │         │                        ▼                           │   │
32|│  │         └────── H.Change ◄── G.Gov ◄── F.Migration ◄──     │   │
33|│  │                                                     │         │   │
34|│  │                            E.Opportunities ◄───────┘         │   │
35|│  │                              & Solutions                      │   │
36|│  └─────────────────────────────────────────────────────────────┘   │
37|│                                                                      │
38|│  ┌────────────────┐  ┌────────────────┐  ┌────────────────────┐   │
39|│  │   Enterprise   │  │   Architecture │  │   Architecture     │   │
40|│  │   Continuum    │  │   Repository   │  │   Capability       │   │
41|│  └────────────────┘  └────────────────┘  └────────────────────┘   │
42|│                                                                      │
43|└─────────────────────────────────────────────────────────────────────┘
44|```
45|
46|## ADM 阶段详解
47|
48|### Preliminary Phase（预备阶段）
49|
50|**目的**: 准备组织实施企业架构
51|
52|**主要活动**:
53|- 定义架构组织和治理框架
54|- 确认架构原则
55|- 选择并定制架构框架
56|- 实施架构工具
57|
58|**关键交付物**:
59|- Architecture Principles（架构原则）
60|- Organizational Model for EA（EA组织模型）
61|- Tailored Architecture Framework（定制架构框架）
62|- Architecture Repository（架构库）初始化
63|
64|### Phase A: Architecture Vision（架构愿景）
65|
66|**目的**: 开发架构愿景，获得利益相关者批准
67|
68|**主要活动**:
69|- 建立架构项目
70|- 识别利益相关者和关注点
71|- 确认业务目标和驱动力
72|- 定义范围和约束
73|- 确认架构原则
74|- 开发架构愿景
75|
76|**关键交付物**:
77|- Statement of Architecture Work（架构工作声明）
78|- Architecture Vision（架构愿景）
79|- Stakeholder Map Matrix（利益相关者矩阵）
80|- Communications Plan（沟通计划）
81|
82|### Phase B: Business Architecture（业务架构）
83|
84|**目的**: 描述基线和目标业务架构
85|
86|**主要活动**:
87|- 选择参考模型、视角和工具
88|- 开发基线业务架构描述
89|- 开发目标业务架构描述
90|- 执行差距分析
91|- 定义路线图组件
92|
93|**关键交付物**:
94|- Business Architecture Document（业务架构文档）
95|- Business Process Models（业务流程模型）
96|- Business Capability Map（业务能力地图）
97|- Organization Map（组织架构图）
98|
99|### Phase C: Information Systems Architecture（信息系统架构）
100|
101|**目的**: 描述数据和应用架构
102|
103|#### C1: Data Architecture（数据架构）
104|
105|**主要活动**:
106|- 开发基线数据架构描述
107|- 开发目标数据架构描述
108|- 执行差距分析
109|
110|**关键交付物**:
111|- Data Architecture Document（数据架构文档）
112|- Data Entity/Business Function Matrix（数据实体/业务功能矩阵）
113|- Conceptual Data Model（概念数据模型）
114|- Logical Data Model（逻辑数据模型）
115|
116|#### C2: Application Architecture（应用架构）
117|
118|**主要活动**:
119|- 开发基线应用架构描述
120|- 开发目标应用架构描述
121|- 执行差距分析
122|
123|**关键交付物**:
124|- Application Architecture Document（应用架构文档）
125|- Application Portfolio Catalog（应用组合目录）
126|- Application Communication Diagram（应用通信图）
127|- Application/Data Matrix（应用/数据矩阵）
128|
129|### Phase D: Technology Architecture（技术架构）
130|
131|**目的**: 描述技术基础设施
132|
133|**主要活动**:
134|- 开发基线技术架构描述
135|- 开发目标技术架构描述
136|- 执行差距分析
137|
138|**关键交付物**:
139|- Technology Architecture Document（技术架构文档）
140|- Technology Standards Catalog（技术标准目录）
141|- Technology Portfolio Catalog（技术组合目录）
142|- Environments and Locations Diagram（环境和位置图）
143|
144|### Phase E: Opportunities and Solutions（机会与解决方案）
145|
146|**目的**: 进行实施规划，识别交付载体
147|
148|**主要活动**:
149|- 确定关键项目
150|- 评估依赖关系
151|- 确认路线图
152|- 定义架构合同
153|
154|**关键交付物**:
155|- Implementation and Migration Strategy（实施和迁移策略）
156|- Architecture Roadmap（架构路线图）
157|- Work Packages（工作包）
158|- Solution Building Blocks (SBBs)
159|
160|### Phase F: Migration Planning（迁移规划）
161|
162|**目的**: 制定详细的实施和迁移计划
163|
164|**主要活动**:
165|- 协调迁移计划
166|- 完成架构合同
167|- 确定业务价值
168|- 确认架构路线图
169|
170|**关键交付物**:
171|- Implementation and Migration Plan（实施和迁移计划）
172|- Transition Architectures（过渡架构）
173|- Implementation Governance Model（实施治理模型）
174|
175|### Phase G: Implementation Governance（实施治理）
176|
177|**目的**: 确保架构实施符合规范
178|
179|**主要活动**:
180|- 确认实施范围
181|- 识别部署计划
182|- 执行企业架构合规审查
183|- 执行实施后评审
184|
185|**关键交付物**:
186|- Architecture Contract（架构合同）
187|- Compliance Assessments（合规评估）
188|- Architecture-compliant Implemented Systems（符合架构的实施系统）
189|
190|### Phase H: Architecture Change Management（架构变更管理）
191|
192|**目的**: 管理架构变更
193|
194|**主要活动**:
195|- 建立变更管理流程
196|- 管理变更请求
197|- 评估变更影响
198|
199|**关键交付物**:
200|- Architecture Updates（架构更新）
201|- Change Requests（变更请求）
202|- Assessment Reports（评估报告）
203|
204|### Requirements Management（需求管理）
205|
206|**目的**: 贯穿 ADM 全程，管理架构需求
207|
208|**主要活动**:
209|- 识别和存储需求
210|- 确定需求优先级
211|- 管理需求变更
212|
213|## 架构内容框架
214|
215|### Content Metamodel（内容元模型）
216|
217|```
218|┌──────────────────────────────────────────────────────────────────────┐
219|│                      Architecture Content Metamodel                   │
220|├──────────────────────────────────────────────────────────────────────┤
221|│                                                                       │
222|│   ┌─────────────┐    ┌─────────────┐    ┌─────────────┐             │
223|│   │  Business   │    │   Data      │    │ Application │             │
224|│   │  Entities   │    │  Entities   │    │  Entities   │             │
225|│   ├─────────────┤    ├─────────────┤    ├─────────────┤             │
226|│   │ • Actor     │    │ • Data      │    │ • App       │             │
227|│   │ • Role      │    │   Entity    │    │   Component │             │
228|│   │ • Business  │    │ • Logical   │    │ • App       │             │
229|│   │   Service   │    │   Data      │    │   Service   │             │
230|│   │ • Process   │    │   Component │    │ • Interface │             │
231|│   │ • Function  │    │ • Physical  │    │             │             │
232|│   │ • Event     │    │   Data      │    │             │             │
233|│   │ • Product   │    │   Component │    │             │             │
234|│   │ • Contract  │    │             │    │             │             │
235|│   └─────────────┘    └─────────────┘    └─────────────┘             │
236|│                                                                       │
237|│   ┌─────────────┐    ┌─────────────────────────────────────────┐    │
238|│   │ Technology  │    │           Cross-Cutting Entities        │    │
239|│   │  Entities   │    ├─────────────────────────────────────────┤    │
240|│   ├─────────────┤    │ • Location    • Capability              │    │
241|│   │ • Platform  │    │ • Assumption  • Constraint              │    │
242|│   │   Service   │    │ • Requirement • Gap                     │    │
243|│   │ • Tech      │    │ • Principle   • Work Package            │    │
244|│   │   Component │    │ • Objective   • Standard                │    │
245|│   │ • Node      │    │ • Driver      • Goal                    │    │
246|│   └─────────────┘    └─────────────────────────────────────────┘    │
247|│                                                                       │
248|└──────────────────────────────────────────────────────────────────────┘
249|```
250|
251|### Building Blocks（构建块）
252|
253|#### ABB - Architecture Building Block（架构构建块）
254|
255|定义功能和内容的逻辑组件，与具体实现无关。
256|
257|```
258|┌─────────────────────────────────────────────────────────────────────┐
259|│                        ABB 类型示例                                  │
260|├─────────────────────────────────────────────────────────────────────┤
261|│                                                                      │
262|│  Business ABBs:                                                      │
263|│  • Customer Onboarding Capability                                    │
264|│  • Payment Processing Capability                                     │
265|│  • Risk Assessment Capability                                        │
266|│                                                                      │
267|│  Data ABBs:                                                          │
268|│  • Customer Data Service                                             │
269|│  • Transaction Data Repository                                       │
270|│  • Reference Data Management                                         │
271|│                                                                      │
272|│  Application ABBs:                                                   │
273|│  • Identity Management Service                                       │
274|│  • Workflow Engine                                                   │
275|│  • API Gateway                                                       │
276|│                                                                      │
277|│  Technology ABBs:                                                    │
278|│  • Container Platform                                                │
279|│  • Message Queue Service                                             │
280|│  • Database Service                                                  │
281|│                                                                      │
282|└─────────────────────────────────────────────────────────────────────┘
283|```
284|
285|#### SBB - Solution Building Block（解决方案构建块）
286|
287|ABB 的具体实现，指定产品和技术。
288|
289|```
290|┌─────────────────────────────────────────────────────────────────────┐
291|│                        SBB 示例（对应上述 ABBs）                      │
292|├─────────────────────────────────────────────────────────────────────┤
293|│                                                                      │
294|│  ABB: Container Platform                                             │
295|│  SBBs:                                                               │
296|│  • Kubernetes on AWS EKS                                             │
297|│  • Docker + Kubernetes on Azure AKS                                  │
298|│  • OpenShift Container Platform                                      │
299|│                                                                      │
300|│  ABB: Message Queue Service                                          │
301|│  SBBs:                                                               │
302|│  • Apache Kafka                                                      │
303|│  • RabbitMQ                                                          │
304|│  • AWS SQS                                                           │
305|│                                                                      │
306|│  ABB: API Gateway                                                    │
307|│  SBBs:                                                               │
308|│  • Kong Gateway                                                      │
309|│  • AWS API Gateway                                                   │
310|│  • Azure API Management                                              │
311|│                                                                      │
312|└─────────────────────────────────────────────────────────────────────┘
313|```
314|
315|## 视图和视角
316|
317|### 核心视角（Viewpoints）
318|
319|| 视角 | 用途 | 利益相关者 |
320||------|------|-----------|
321|| Business Process Viewpoint | 展示业务流程和关联 | 业务分析师、流程负责人 |
322|| Application Behavior Viewpoint | 展示应用行为和交互 | 应用架构师、开发者 |
323|| Technology Deployment Viewpoint | 展示技术部署情况 | 技术架构师、运维人员 |
324|| Capability Map Viewpoint | 展示业务能力及其关系 | 高管、战略规划人员 |
325|| Information Map Viewpoint | 展示信息流动和存储 | 数据架构师、信息管理人员 |
326|| Migration Viewpoint | 展示迁移路径和阶段 | 项目经理、架构师 |
327|
328|### 视图类型
329|
330|```
331|┌─────────────────────────────────────────────────────────────────────┐
332|│                         Architecture Views                           │
333|├─────────────────────────────────────────────────────────────────────┤
334|│                                                                      │
335|│  Strategic Views:                                                    │
336|│  ├── Business Model Canvas                                           │
337|│  ├── Capability Heat Map                                             │
338|│  └── Strategic Roadmap                                               │
339|│                                                                      │
340|│  Business Views:                                                     │
341|│  ├── Business Process Model                                          │
342|│  ├── Organization Chart                                              │
343|│  ├── Value Stream Map                                                │
344|│  └── Business Service Catalog                                        │
345|│                                                                      │
346|│  Information System Views:                                           │
347|│  ├── Application Landscape                                           │
348|│  ├── Data Flow Diagram                                               │
349|│  ├── Integration Map                                                 │
350|│  └── Application/Data Matrix                                         │
351|│                                                                      │
352|│  Technology Views:                                                   │
353|│  ├── Infrastructure Diagram                                          │
354|│  ├── Network Topology                                                │
355|│  ├── Deployment Diagram                                              │
356|│  └── Technology Standards Matrix                                     │
357|│                                                                      │
358|│  Cross-Cutting Views:                                                │
359|│  ├── Principles Catalog                                              │
360|│  ├── Standards Catalog                                               │
361|│  ├── Gap Analysis Matrix                                             │
362|│  └── Transition Architecture Roadmap                                 │
363|│                                                                      │
364|└─────────────────────────────────────────────────────────────────────┘
365|```
366|
367|## 架构原则
368|
369|### 原则结构
370|
371|每个架构原则包含以下要素：
372|
373|| 要素 | 描述 |
374||------|------|
375|| Name（名称） | 简短的原则标题 |
376|| Statement（声明） | 原则的正式描述 |
377|| Rationale（依据） | 为什么采用这个原则 |
378|| Implications（影响） | 原则对架构的具体影响 |
379|
380|### 示例原则
381|
382|```
383|┌─────────────────────────────────────────────────────────────────────┐
384|│                    Architecture Principle Example                    │
385|├─────────────────────────────────────────────────────────────────────┤
386|│                                                                      │
387|│  Name: Technology Independence                                       │
388|│  技术独立性                                                          │
389|│                                                                      │
390|│  Statement:                                                          │
391|│  架构设计应独立于特定技术和产品，使业务不被锁定于特定供应商。             │
392|│                                                                      │
393|│  Rationale:                                                          │
394|│  • 降低供应商锁定风险                                                 │
395|│  • 提高技术选型灵活性                                                 │
396|│  • 便于技术迁移和升级                                                 │
397|│                                                                      │
398|│  Implications:                                                       │
399|│  • 使用标准化协议和接口                                               │
400|│  • 采用开放标准                                                       │
401|│  • 设计抽象层隔离具体技术                                             │
402|│  • 避免深度集成特定产品专有功能                                        │
403|│                                                                      │
404|└─────────────────────────────────────────────────────────────────────┘
405|```
406|
407|## 架构治理
408|
409|### 治理框架
410|
411|```
412|┌─────────────────────────────────────────────────────────────────────┐
413|│                    Architecture Governance Framework                 │
414|├─────────────────────────────────────────────────────────────────────┤
415|│                                                                      │
416|│  ┌─────────────────────────────────────────────────────────────┐   │
417|│  │                    Governance Principles                     │   │
418|│  │   • Accountability  • Transparency  • Consistency            │   │
419|│  └─────────────────────────────────────────────────────────────┘   │
420|│                              │                                       │
421|│  ┌─────────────────────────────────────────────────────────────┐   │
422|│  │                    Governance Organization                   │   │
423|│  │                                                               │   │
424|│  │   Architecture Board ──► Architecture Review Board           │   │
425|│  │         │                         │                           │   │
426|│  │         ▼                         ▼                           │   │
427|│  │   EA Team ◄────────────► Domain Architecture Teams           │   │
428|│  └─────────────────────────────────────────────────────────────┘   │
429|│                              │                                       │
430|│  ┌─────────────────────────────────────────────────────────────┐   │
431|│  │                    Governance Processes                      │   │
432|│  │                                                               │   │
433|│  │   • Architecture Compliance Review                           │   │
434|│  │   • Architecture Exception Process                           │   │
435|│  │   • Architecture Change Management                           │   │
436|│  │   • Architecture Communication                               │   │
437|│  └─────────────────────────────────────────────────────────────┘   │
438|│                                                                      │
439|└─────────────────────────────────────────────────────────────────────┘
440|```
441|
442|### 合规评审清单
443|
444|| 检查项 | 描述 |
445||--------|------|
446|| 原则符合性 | 是否遵循架构原则 |
447|| 标准符合性 | 是否使用批准的技术标准 |
448|| 参考架构一致性 | 是否与参考架构对齐 |
449|| 安全符合性 | 是否满足安全要求 |
450|| 可重用性 | 是否考虑组件重用 |
451|| 可互操作性 | 是否支持系统互操作 |
452|
453|## 架构库
454|
455|### Architecture Repository 结构
456|
457|```
458|Architecture Repository
459|├── Architecture Metamodel
460|│   └── Content Metamodel Definition
461|├── Architecture Capability
462|│   ├── Skills Matrix
463|│   ├── Role Definitions
464|│   └── Training Materials
465|├── Architecture Landscape
466|│   ├── Baseline Architecture
467|│   │   ├── Business Architecture
468|│   │   ├── Data Architecture
469|│   │   ├── Application Architecture
470|│   │   └── Technology Architecture
471|│   └── Target Architecture
472|│       ├── Business Architecture
473|│       ├── Data Architecture
474|│       ├── Application Architecture
475|│       └── Technology Architecture
476|├── Standards Information Base
477|│   ├── Technology Standards
478|│   ├── Product Information
479|│   └── Vendor Information
480|├── Reference Library
481|│   ├── Reference Models
482|│   ├── Patterns
483|│   └── Templates
484|├── Governance Log
485|│   ├── Decision Log
486|│   ├── Compliance Assessments
487|│   └── Dispensations
488|└── Architecture Requirements Repository
489|    ├── Requirements
490|    ├── Constraints
491|    └── Assumptions
492|```
493|
494|## 最佳实践
495|
496|### 1. ADM 迭代应用
497|
498|```
499|┌─────────────────────────────────────────────────────────────────────┐
500|│                     ADM Iteration Approaches                         │
501|