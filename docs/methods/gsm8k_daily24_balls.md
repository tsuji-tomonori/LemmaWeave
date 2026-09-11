# 赤と黄のボール数の差

1包18個の赤7包と黄6包について、赤が黄より何個多いか求める。

**取得済み固定GSM8Kの1問。**

- 両色で1包の個数は同じ。

## balls_red：赤の個数

条件：赤7包、1包18個。

根拠：

得られること：126個。

既習の根拠：包数×1包の個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.balls_red`。

## balls_yellow：黄の個数

条件：黄6包、1包18個。

根拠：

得られること：108個。

既習の根拠：包数×1包の個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.balls_yellow`。

## balls_difference：個数差

条件：赤126個と黄108個を比較する。

根拠：

得られること：赤が18個多い。

既習の根拠：2量の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.balls_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.balls_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
