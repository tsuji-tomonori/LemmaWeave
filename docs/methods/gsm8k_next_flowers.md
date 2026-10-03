# 基準となる数量を区別して花の本数を求める

黄色10本、紫は黄色より80%多い。緑は黄色と紫の合計の25%。全部で何本か。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集には数えない。**

- 80%多いは元の180%。緑の25%の基準は黄色だけでなく黄色と紫の合計。
- 数量は有理数で関係を表すが、全解が紫18・緑7・合計35という非負整数になる。

## flowers_purple：紫の本数を求める

条件：黄色10本が基準で、80%増える。

根拠：

得られること：紫=10+(80/100)×10=18本。

既習の根拠：割合、増加分と元の数量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.flowers_purple`。

## flowers_pair：緑の割合の基準量を求める

条件：緑の割合は黄色と紫の合計に対して指定されている。

根拠：

得られること：黄色+紫=10+18=28本。

既習の根拠：互いに異なる色の個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.flowers_pair`。

## flowers_green：緑の本数を求める

条件：緑は28本の25%。

根拠：

得られること：緑=(25/100)×28=7本。

既習の根拠：割合から部分量を求める乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.flowers_green`。

## flowers_total：全体を合計する

条件：3色以外はなく、色は重ならない。

根拠：

得られること：全部=28+7=35本。

既習の根拠：場合の重複を避けた個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.flowers_total`。

## flowers_exists：元の条件を確かめる

条件：紫18本・緑7本・全部35本を取る。

根拠：

得られること：紫は黄より8本=80%多く、緑7本は28本の25%。すべての原題条件を満たす。

既習の根拠：整数の個数・割合の検算。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.flowers_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KNextSteps.flowers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
