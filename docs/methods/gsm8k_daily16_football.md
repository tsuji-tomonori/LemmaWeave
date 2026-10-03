# シーズン得点の記録更新幅

1試合4TD、1TD6点を15試合、さらに2点コンバージョン6回のとき、旧記録300点を何点上回るか求める。

**取得済み固定GSM8Kの1問。**

- タッチダウン得点と2点コンバージョン得点を別々に合算する。

## football_per_game：1試合のTD得点

条件：1試合4TDで各6点。

根拠：

得られること：1試合24点。

既習の根拠：回数と点数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.football_per_game`。

## football_touchdowns：15試合のTD得点

条件：1試合24点を15試合。

根拠：

得られること：TD得点は360点。

既習の根拠：1試合分と試合数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.football_touchdowns`。

## football_conversions：コンバージョン得点

条件：2点コンバージョンを6回成功。

根拠：

得られること：12点。

既習の根拠：回数と点数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.football_conversions`。

## football_total：シーズン総得点

条件：TD360点とコンバージョン12点。

根拠：

得られること：総得点は372点。

既習の根拠：得点の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.football_total`。

## football_beaten：旧記録との差

条件：総得点372点、旧記録300点。

根拠：

得られること：旧記録を72点上回る。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.football_beaten`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.football_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
