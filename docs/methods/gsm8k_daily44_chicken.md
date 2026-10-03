# 鶏1羽当たり利益から販売数を逆算

飼料20ポンドが2ドル、鶏1羽に2ポンド必要、売価1.50ドル、総利益65ドルから販売羽数を求める。

**取得済み固定GSM8Kの1問。**

- 端数誤差を避けるため金額をセントで表し、問題文に示された飼料費だけを費用とする。

## chicken_feed_cost：1羽分の飼料費

条件：20ポンド200セントの飼料から1羽に2ポンド使う。

根拠：

得られること：1羽分の飼料費は200×2÷20=20セント。

既習の根拠：同じ単価なら費用は使用量に比例する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.chicken_feed_cost`。

## chicken_unit_profit：1羽当たり利益

条件：売価150セントから飼料費20セントを差し引く。

根拠：

得られること：1羽当たり利益は130セント。

既習の根拠：利益は売上から費用を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.chicken_unit_profit`。

## chicken_total_cents：総利益の単位換算

条件：総利益は65ドルで1ドルは100セント。

根拠：

得られること：総利益は6500セント。

既習の根拠：ドルからセントへの換算では100倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.chicken_total_cents`。

## chicken_count：販売羽数

条件：1羽当たり130セントの利益で総利益6500セント。

根拠：

得られること：販売数は6500÷130=50羽。

既習の根拠：総量を単位量で割って個数を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.chicken_count`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.chicken_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
