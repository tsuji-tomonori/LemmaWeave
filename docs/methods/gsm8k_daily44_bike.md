# 自転車購入に必要な追加収入

自転車代600ドルに対し、貯金120ドルと母からの250ドルを充てた後に必要な収入を求める。

**取得済み固定GSM8Kの1問。**

- 購入価格から、すでに利用できる貯金と母の援助を差し引く。

## bike_available：利用可能額

条件：貯金120ドルと母の援助250ドルがある。

根拠：

得られること：利用可能額は120+250=370ドル。

既習の根拠：二つの金額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.bike_available`。

## bike_earn：不足額

条件：価格600ドルに対して370ドルを用意済み。

根拠：

得られること：働いて得る必要がある額は600−370=230ドル。

既習の根拠：全体から既知部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.bike_earn`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.bike_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
