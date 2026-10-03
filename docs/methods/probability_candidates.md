# 独立性がない問題には反例と可能範囲で答える

派遣会社の候補者の20%にExcel経験があり、70%は日勤だけを希望する。無作為に1人選ぶと、Excel経験があり夜勤も可能である確率はいくらか。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集数・日本入試数には加えない。**

- A=Excel経験、B=夜勤可能。日勤のみを¬Bと読む。有限母集団の4区分の相対度数を有理数で表す。
- 参考解答は6%としているが属性の独立性は原題にない。1人を無作為抽出しても、属性間の相関が消えるわけではない。
- 原題への解答は一意に決まらないこと。両端の20人の例を構成し、有理数確率の可能範囲全体も証明する。追加条件付きの6%は別結論として明示する。

## S1：夜勤可能の割合を余事象から求める

条件：夜勤不可（日勤のみ）が70%。夜勤可能と不可能は排反で全体を尽くす。

根拠：[余事象の確率](probability_complement.md)

得られること：P(B)=1-7/10=3/10。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.candidates_nights`。

## S2：求める共通部分の上下界を示す

条件：Excel経験があり夜勤可能な人はExcel経験者の一部分。

根拠：[共通部分の確率の上界](intersection_bound.md)

得られること：0≤P(A∩B)≤P(A)=1/5。つまり0%以上20%以下。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.candidates_bounds`。

## S3：範囲内の値を実際に構成する

条件：有理数xについて0≤x≤1/5。4区分（Excel夜勤、Excel日勤のみ、非Excel夜勤、非Excel日勤のみ）を考える。

根拠：

得られること：相対度数をx, 1/5-x, 3/10-x, 1/2+xとすれば各々非負で合計1。Excel計1/5、日勤のみ計7/10、共通部分xとなる。

既習の根拠：分数の大小、一次式の整理。有限人数は4つの分母の共通倍数で実現できる。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.candidates_attain`。

## S4：必要条件と十分条件を合わせる

条件：S2はすべての候補者集団で成り立ち、S3は区間内の各有理数に集団を与える。

根拠：

得られること：可能な有理数確率はちょうど0≤x≤1/5。

既習の根拠：包含の両方向を別々に示す基本論理。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.candidates_range`。

## S5：二つの具体例で一意性を否定する

条件：S4のx=0とx=1/5を用いる。20人の4区分は順に(0,4,6,10)または(4,0,2,14)。

根拠：

得られること：どちらもExcel4人、日勤のみ14人だが、Excel夜勤は0人と4人。確率は0%と20%で異なるため、原題だけから単一の答えは決まらない。

既習の根拠：具体的な反例と0≠1/5。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.candidates_not_unique`。

## S6：独立性を追加したときだけ6%を導く

条件：【追加条件】Excel経験と夜勤可能が独立である。原題にはこの条件がない。

根拠：[独立性を仮定した場合の積の公式](independence_product.md)

得られること：P(A∩B)=P(A)P(B)=(1/5)(3/10)=3/50。百分率では6%。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.candidates_if_independent`。

Leanの最終根：`LemmaWeave.Tests.ProbabilitySteps.candidates_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
