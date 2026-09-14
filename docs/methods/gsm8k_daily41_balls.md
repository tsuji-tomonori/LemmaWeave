# 緑のボールの個数

青11個の2倍として赤を求め、全40個から青赤の合計を引く。

**取得済み固定GSM8Kの1問。**

- 全ボールは青・赤・緑の3色へ重複なく分かれ、restが緑を意味する。

## balls_red：赤の個数

条件：青は11個で、赤は青の2倍。

根拠：

得られること：赤は22個、青と赤は計33個。

既習の根拠：倍の数量は元の数量に倍率を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.balls_red`。

## balls_green：残る緑の個数

条件：全40個から青赤33個を引く。

根拠：

得られること：緑は7個。

既習の根拠：残り=全体−既知の部分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.balls_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.balls_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
