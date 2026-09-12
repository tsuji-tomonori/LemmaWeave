# 先月売上の2倍として今月売上を求める

大型8枚を各60ドル、小型4枚を各30ドルで先月販売し、今月はその2倍売った。今月売上を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- sold twice as much this monthを売上金額が先月の2倍と読む。価格変更や費用は原文にない。

## sales_large：大型の売上

条件：大型8枚を各60ドル。

根拠：

得られること：480ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.sales_large`。

## sales_small：小型の売上

条件：小型4枚を各30ドル。

根拠：

得られること：120ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.sales_small`。

## sales_previous：先月売上

条件：大型と小型を合計する。

根拠：

得られること：480+120=600ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.sales_previous`。

## sales_current：今月売上

条件：今月は先月の2倍。

根拠：

得られること：600×2=1200ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.sales_current`。

## sales_exists：条件の充足

条件：大型480、小型120、先月600、今月1200。

根拠：

得られること：販売条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.sales_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.sales_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
