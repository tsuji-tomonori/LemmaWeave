# Johnのパーティー負担額

Johnと他3人でバーガー・調味料等を等分し、Johnだけが200ドルの酒代を払うとき、Johnの総支出を求める。

**取得済み固定GSM8Kの1問。**

- Johnを含む4人で酒以外を等分し、酒200ドルはJohnのみが負担する。

## party_people：費用を分ける人数

条件：Johnは他の3人と費用を分ける。

根拠：

得られること：人数は3+1=4人。

既習の根拠：本人を含める加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.party_people`。

## party_burger_cost：バーガー代

条件：100ポンドを1ポンド3ドルで買う。

根拠：

得られること：100×3=300ドル。

既習の根拠：単価と数量の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.party_burger_cost`。

## party_non_alcohol：酒以外の費用

条件：バーガー300ドルと調味料・燃料80ドル。

根拠：

得られること：合計380ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.party_non_alcohol`。

## party_share：Johnの等分負担

条件：380ドルを4人で等分する。

根拠：

得られること：Johnの負担は95ドル。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.party_share`。

## party_total：Johnの総支出

条件：等分負担95ドルと単独負担の酒200ドル。

根拠：

得られること：総支出は295ドル。

既習の根拠：負担額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.party_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.party_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
