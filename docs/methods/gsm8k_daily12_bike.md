# 1か月の収入から自転車代を引く

時給8ドルで週35時間働き、1か月分を全額貯金した後、400ドルの自転車を買う。

**取得済み固定GSM8Kの1問。**

- monthは週数を固定しない。参考解答どおり4週なら720ドル、5週分なら1000ドル残ることを示す。

## bike_weekly：週給

条件：時給8ドルで週35時間。

根拠：

得られること：週給280ドル。

既習の根拠：単価×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_weekly`。

## bike_four_weeks：4週間の収入

条件：1か月を4週と置く。

根拠：

得られること：1120ドル。

既習の根拠：反復収入の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_four_weeks`。

## bike_intended_left：4週解釈の残額

条件：1120ドルから400ドルを払う。

根拠：

得られること：720ドル残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_intended_left`。

## bike_five_weeks：5週間の収入

条件：対象期間を5週と置く。

根拠：

得られること：1400ドル。

既習の根拠：反復収入の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_five_weeks`。

## bike_alternative_left：5週解釈の残額

条件：1400ドルから400ドルを払う。

根拠：

得られること：1000ドル残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_alternative_left`。

## bike_intended_exists：4週条件の充足

条件：4週、月収1120、残額720と置く。

根拠：

得られること：4週解釈の全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_intended_exists`。

## bike_alternative_exists：5週条件の充足

条件：5週、月収1400、残額1000と置く。

根拠：

得られること：5週解釈の全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.bike_alternative_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.bike_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
