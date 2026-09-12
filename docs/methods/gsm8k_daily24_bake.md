# 目標達成に必要なクッキー

既に売った菓子の収入から、50ドルの目標達成に1枚4ドルのクッキーを何枚売るか求める。

**取得済み固定GSM8Kの1問。**

- 販売済み収入と今後必要な収入を分ける。

## bake_brownies：ブラウニー収入

条件：4個を1個3ドルで売った。

根拠：

得られること：12ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.bake_brownies`。

## bake_lemon：レモンスクエア収入

条件：5個を1個2ドルで売った。

根拠：

得られること：10ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.bake_lemon`。

## bake_earned：既収入

条件：2種類の売上を加える。

根拠：

得られること：22ドルを得た。

既習の根拠：売上の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.bake_earned`。

## bake_needed：不足額

条件：目標50ドルから既収入22ドルを引く。

根拠：

得られること：28ドル必要。

既習の根拠：目標と実績の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.bake_needed`。

## bake_cookies：必要枚数

条件：28ドルを1枚4ドルで得る。

根拠：

得られること：7枚売る。

既習の根拠：必要額=単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.bake_cookies`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.bake_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
