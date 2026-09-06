# 卵の色で場合を分け、条件付き確率を使う

イースターの卵の4/5は青、1/5は紫。紫の半分、青の1/4には飴が5個入り、残りは1個入り。卵を無作為に1個選ぶと、飴が5個入っている確率は何%か。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集数・日本入試数には加えない。**

- A=青、¬A=紫、B=飴5個。全卵からの一様選択を相対度数で表す。
- 原題の「青の1/4」はP(B|A)でありP(B)ではない。参考解答の independent probabilities という説明は不適切。独立性を仮定せずに30%を導く。
- 10個の卵からなる充足例を別に示し、仮定が矛盾していないことも確認する。

## S1：条件付き確率の分母を確認する

条件：P(A)=4/5、P(¬A)=1/5。

根拠：

得られること：両方とも正なので、条件付き確率で割る分母は0ではない。

既習の根拠：正の分数は0ではない。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_positive`。

## S2：青で飴5個となる確率

条件：青の割合4/5、青の中での当たり割合1/4。S1で分母を確認した。

根拠：[条件付き確率の定義と乗法公式](conditional_multiply.md)

得られること：P(A∩B)=P(A)P(B|A)=(4/5)(1/4)。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_blue`。

## S3：紫で飴5個となる確率

条件：紫の割合1/5、紫の中での当たり割合1/2。S1で分母を確認した。

根拠：[補集合側にも乗法公式を適用する](conditional_complement_multiply.md)

得られること：P(¬A∩B)=P(¬A)P(B|¬A)=(1/5)(1/2)。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_purple`。

## S4：二つの排反な場合を合計する

条件：卵は青か紫のいずれか一方。飴5個という事象の分割に重複がない。

根拠：[事象を重複しない二つに分ける](disjoint_probability_split.md)

得られること：P(B)=P(A∩B)+P(¬A∩B)=(4/5)(1/4)+(1/5)(1/2)。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_sum`。

## S5：分数を整理する

条件：S4の等式。

根拠：

得られること：P(B)=1/5+1/10=3/10。

既習の根拠：分数の乗法・通分・加法。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_fraction`。

## S6：百分率へ直す

条件：S5で求めた確率3/10。

根拠：

得られること：100P(B)=30。答えは30%。

既習の根拠：割合と百分率の換算。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_percent`。

## S7：問題の条件を満たす卵が実在できることを確認する

条件：青で飴5個2個、青で飴1個6個、紫で飴5個1個、紫で飴1個1個の計10個を考える。

根拠：

得られること：青8/10=4/5、紫2/10=1/5。青の当たり2/8=1/4、紫の当たり1/2。すべての与条件を同時に満たす。

既習の根拠：個数と割合、分数の約分。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.eggs_exists`。

Leanの最終根：`LemmaWeave.Tests.ProbabilitySteps.eggs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
