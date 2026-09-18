# 将来年齢から兄弟の現在年齢を求める

Robertが2年後に30歳で、Patrickの現在年齢がRobertの現在年齢の半分なら、Patrickの現在年齢を求める。

**取得済み固定GSM8Kの1問。**

- 半分の関係を現在年齢どうしへ適用する。

## ages_robert：Robertの現在年齢を求める

条件：Robertは2年後に30歳。

根拠：

得られること：現在は30-2=28歳。

既習の根拠：一定年数後の年齢から経過年数を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.ages_robert`。

## ages_patrick：Patrickの現在年齢を求める

条件：Patrickは現在28歳のRobertの半分。

根拠：

得られること：Patrickは28÷2=14歳。

既習の根拠：半分の量は元の量を2で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.ages_patrick`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.ages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
