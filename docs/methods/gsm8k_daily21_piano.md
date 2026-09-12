# 1日当たりのピアノ練習時間

12歳から20歳になる前までに平日練習で10000時間へ達するための1日当たり時間を求める。

**取得済み固定GSM8Kの1問。**

- 8年間へ均等配分し、1年52週、毎年2週休み、残り50週の月曜から金曜を練習日とする。

## piano_years：利用できる年数

条件：12歳になった時点から20歳まで。

根拠：

得られること：利用できる期間は20−12=8年。

既習の根拠：年齢差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.piano_years`。

## piano_annual：年間の必要時間

条件：10000時間を8年間へ均等配分する。

根拠：

得られること：1年当たり1250時間。

既習の根拠：総量の均等配分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.piano_annual`。

## piano_weeks：年間の練習週

条件：1年52週から休暇2週を除く。

根拠：

得られること：練習するのは年50週。

既習の根拠：全体から休止期間を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.piano_weeks`。

## piano_days：年間の練習日

条件：50週の各週で月曜から金曜の5日練習する。

根拠：

得られること：年間練習日は50×5=250日。

既習の根拠：週数と1週当たり日数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.piano_days`。

## piano_daily：1日当たり時間

条件：年間1250時間を250日に均等配分する。

根拠：

得られること：答えは1250÷250=5時間。

既習の根拠：総時間÷日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.piano_daily`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.piano_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
