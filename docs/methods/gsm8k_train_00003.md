# 貯金と援助から不足額を求める

100ドルの財布へ半額を貯金済み。両親が15ドル、祖父母がその2倍。不足は？

**既に収集したGSM8Kの1問。入試問題数・新規収集数には加えない。**

- 任意の条件を満たす量から不足を導出。充足例と不足額の非負性も照合した。

## wallet_saved：貯金

条件：s×2=100、2≠0。

根拠：[積の関係から部分量を求める](fraction_balance.md)

得られること：s=50ドル。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.wallet_saved`。

## wallet_grandparents：祖父母の援助

条件：両親の15ドルの2倍。

根拠：

得られること：g=30ドル。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.wallet_grandparents`。

## wallet_available：資金合計

条件：貯金・両親・祖父母は別の資金。

根拠：

得られること：50+15+30=95ドル。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.wallet_available`。

## wallet_missing：不足額

条件：95+m=100。

根拠：[保存式から残量を求める](remaining_balance.md)

得られること：m=100−95=5ドル。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.wallet_missing`。

## wallet_exists：非負性と充足

条件：s=50,g=30,m=5。

根拠：

得られること：元の半額・2倍・資金保存を満たし不足額は非負。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.wallet_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KFirstSteps.wallet_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
