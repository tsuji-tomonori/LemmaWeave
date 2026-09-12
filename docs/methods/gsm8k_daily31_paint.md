# 一定の配合比から木炭量を求める

水30mlごとに木炭2gを加える配合で、水900mlに必要な木炭量を求める。

**取得済み固定GSM8Kの1問。**

- 900mlは30ml単位に割り切れ、同じ配合を30回分繰り返す。

## paint_batches：配合の回数を求める

条件：水900mlを1回30mlの等しい配合単位に分ける。

根拠：

得られること：配合は30回分。

既習の根拠：900＝回数×30という整数の等分式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.paint_batches`。

## paint_charcoal：木炭量を求める

条件：30回分の配合それぞれに木炭2gを使う。

根拠：

得られること：木炭は60g必要。

既習の根拠：回数×1回当たり量として30×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.paint_charcoal`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.paint_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
