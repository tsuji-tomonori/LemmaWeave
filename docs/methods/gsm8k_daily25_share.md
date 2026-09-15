# 男子1人当たりの分配額

男子対女子が5:7で合計180人のとき、男子に渡す3900ドルを1人当たりに分ける。

**取得済み固定GSM8Kの1問。**

- 人数比を整数の比例式にして端数のない等分を表す。

## share_total_parts：比の全体

条件：男子5部分、女子7部分。

根拠：

得られること：全体は12部分。

既習の根拠：比の各部分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.share_total_parts`。

## share_boys：男子の人数

条件：180人を5:7に分け、男子は12部分中5部分。

根拠：

得られること：男子は75人。

既習の根拠：比例式 `男子×12＝180×5`。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.share_boys`。

## share_each：1人当たりの金額

条件：3900ドルを男子75人で等分する。

根拠：

得られること：1人52ドル。

既習の根拠：等分の逆算 `75×1人分＝3900`。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.share_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.share_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
