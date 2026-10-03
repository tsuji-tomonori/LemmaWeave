# 確率から黄色い玉の個数を逆算する

瓶に青い玉7個、赤い玉11個、黄色い玉が何個かある。等確率で1個選んだとき黄色である確率が1/4なら、黄色は何個か。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集数・日本入試数には加えない。**

- 黄色の個数yは自然数。玉ごとの選ばれやすさに差がないという通常の無作為抽出の読みを採用する。
- 解の代入確認だけでなく、任意の自然数yについて条件とy=6が同値であることを証明する。

## S1：全体の個数と分母の正値を確認する

条件：yは黄色い玉の個数なので0以上の整数。

根拠：

得られること：全体7+11+y=18+y>0。

既習の根拠：整数の加法と非負性。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.marbles_total`。

## S2：原題の確率を個数比で表す

条件：玉は等確率で選ばれる。全体18+y>0、黄色はy個。

根拠：[等確率の抽出を個数の比で表す](equal_likelihood_count.md)

得られること：y/(18+y)=1/4。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.marbles_ratio`。

## S3：分母を掛ける

条件：S1により18+y≠0。S2の確率の式。

根拠：[等確率の個数比を方程式にする](probability_ratio_equation.md)

得られること：y=(1/4)(18+y)。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.marbles_balance`。

## S4：一次方程式に整理する

条件：S3の両辺を4倍し、yを左へ移す。

根拠：

得られること：4y=18+y、したがって3y=18。

既習の根拠：等式の両辺の同じ数による乗法・移項。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.marbles_linear`。

## S5：個数を求める

条件：S4の3y=18。3≠0。

根拠：

得られること：y=6。自然数の個数としても6個である。

既習の根拠：一次方程式を解く。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.marbles_unique`。

## S6：得た個数が元の条件を満たす

条件：黄色6個を原題へ戻す。

根拠：

得られること：全体24個、黄色6個なので6/24=1/4。従って解はちょうど6個。

既習の根拠：個数の加法と分数の約分。

この行のLean定理：`LemmaWeave.Tests.ProbabilitySteps.marbles_exists`。

Leanの最終根：`LemmaWeave.Tests.ProbabilitySteps.marbles_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
