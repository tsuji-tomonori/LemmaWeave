# 大きいピザと小さいピザを分けて数える

大きいピザ2枚は1枚16切れ、小さいピザ2枚は1枚8切れ。すべて食べると何切れか。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集には数えない。**

- ピザの枚数と切れ数を区別する。個数を自然数で表す。食べ残しなし。

## pizza_large：大きいピザの切れ数

条件：1枚16切れが2枚。

根拠：

得られること：16×2=32切れ。

既習の根拠：同じ大きさの集まりを数える乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.pizza_large`。

## pizza_small：小さいピザの切れ数

条件：1枚8切れが2枚。

根拠：

得られること：8×2=16切れ。

既習の根拠：同じ大きさの集まりを数える乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.pizza_small`。

## pizza_total：両方の切れ数を合わせる

条件：大と小を重複せずすべて食べる。

根拠：

得られること：32+16=48切れ。

既習の根拠：異なる集まりの個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.pizza_total`。

## pizza_exists：原題条件と一致する個数を示す

条件：大32切れ、小16切れ、合計48切れ。

根拠：

得られること：いずれも自然数で、各枚数・切れ数・合計の関係を満たす。

既習の根拠：自然数の乗法・加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.pizza_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KNextSteps.pizza_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
