# 75%引きの菓子2袋の代金

1袋6ドルの菓子を75%引きで2袋買う代金を求める。

**取得済み固定GSM8Kの1問。**

- 端数を避けるため金額をセントに統一する。

## candy_unit：1袋の値引き後価格

条件：定価600セントから75%を値引きする。

根拠：

得られること：値引額は450セント、値引き後は600−450=150セント。

既習の根拠：割合と全体からの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.candy_unit`。

## candy_total：2袋の代金

条件：値引き後1袋150セントを2袋買う。

根拠：

得られること：合計は2×150=300セント、すなわち3ドル。

既習の根拠：同額の商品2個の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.candy_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.candy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
