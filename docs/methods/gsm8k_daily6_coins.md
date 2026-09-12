# 曖昧な2時間の収集枚数を場合分けする

1時間目15枚、次の2時間35枚、4時間目50枚を集め15枚渡した後の枚数を求める。

**取得済み固定GSM8Kの1問。条件不足を隠さず場合分けした。**

- 次の2時間に各時35枚なら120枚。2時間合計35枚なら85枚で、英語原文だけでは一意でない。

## coins_second：2時間目（各時解釈）

条件：追加条件として次の2時間は各時間35枚。

根拠：

得られること：2時間目は35枚。

既習の根拠：原文解釈の明示。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.coins_second`。

## coins_third：3時間目（各時解釈）

条件：同じ追加条件。

根拠：

得られること：3時間目も35枚。

既習の根拠：原文解釈の明示。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.coins_third`。

## coins_before：渡す前

条件：15+35+35+50枚を合計。

根拠：

得られること：135枚。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.coins_before`。

## coins_after：各時解釈の答え

条件：135枚から同僚へ15枚渡す。

根拠：

得られること：120枚。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.coins_after`。

## coins_combined_after：合計解釈の答え

条件：次の2時間で合計35枚と読む。

根拠：

得られること：15+35+50-15=85枚。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.coins_combined_after`。

## coins_examples：非一意性の反例

条件：各時35枚と2時間合計35枚の両読解が成立する。

根拠：

得られること：120≠85なので追加条件なしでは一意でない。

既習の根拠：場合分けと反例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.coins_examples`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.coins_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
