# 3年後の関係から現在年齢を求める

3年後にJaydenがErnestoの半分の年齢で、Ernestoが現在11歳のとき、Jaydenの現在年齢を求める。

**取得済み固定GSM8Kの1問。**


## ages_ernesto_future：Ernestoの3年後

条件：現在11歳で3年経過する。

根拠：

得られること：3年後は14歳。

既習の根拠：年齢への加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.ages_ernesto_future`。

## ages_jayden_future：Jaydenの3年後

条件：3年後はErnesto14歳の半分。

根拠：

得られること：Jaydenは3年後に7歳。

既習の根拠：半分への除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.ages_jayden_future`。

## ages_jayden_now：Jaydenの現在

条件：3年後に7歳。

根拠：

得られること：現在は7-3=4歳。

既習の根拠：年数を戻す減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.ages_jayden_now`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.ages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
