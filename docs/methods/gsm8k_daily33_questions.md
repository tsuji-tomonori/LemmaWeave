# 毎時倍増する作問数を合計する

1時間目13問、以後毎時2倍の作問数を3時間分合計する。

**取得済み固定GSM8Kの1問。**

- 各区間は同じ1時間であり、rateの倍化をその時間に作る問題数の倍化として扱う。

## questions_second：2時間目を求める

条件：1時間目は13問で、2時間目はその2倍。

根拠：

得られること：2時間目は26問。

既習の根拠：13×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.questions_second`。

## questions_third：3時間目を求める

条件：3時間目は2時間目26問の2倍。

根拠：

得られること：3時間目は52問。

既習の根拠：26×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.questions_third`。

## questions_total：3時間の合計を求める

条件：各時間の作問数は13、26、52問。

根拠：

得られること：合計は91問。

既習の根拠：互いに異なる時間区間の個数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.questions_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.questions_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
