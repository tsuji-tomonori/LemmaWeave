# 平均得点による報酬

5試合の平均得点が30点以上かを判定して週間報酬を求める。

**取得済み固定GSM8Kの1問。**

- 境界の30点は『30 or more』側に含める。

## basketball_total：週間合計得点

条件：30、28、32、34、26点を合計する。

根拠：

得られること：合計150点。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.basketball_total`。

## basketball_average：1試合平均

条件：150点を5試合で等分する。

根拠：

得られること：平均30点。

既習の根拠：算術平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.basketball_average`。

## basketball_pay：報酬の選択

条件：平均30点は30点以上という条件を満たす。

根拠：

得られること：報酬は10000ドル。

既習の根拠：場合分けと境界比較。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.basketball_pay`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.basketball_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
