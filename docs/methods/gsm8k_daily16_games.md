# ゲーム346本の購入総額

346本のうち80本を12ドル、残りの半分を7ドル、その他を3ドルで買ったとき総額を求める。

**取得済み固定GSM8Kの1問。**

- 80本を除いた266本を7ドル群と3ドル群に半分ずつ分ける。

## games_premium_cost：12ドル群の費用

条件：80本を1本12ドルで買う。

根拠：

得られること：80×12=960ドル。

既習の根拠：単価と本数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_premium_cost`。

## games_rest：残りの本数

条件：346本から80本を除く。

根拠：

得られること：266本残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_rest`。

## games_mid：7ドル群の本数

条件：残り266本の50%。

根拠：

得られること：133本。

既習の根拠：半分への等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_mid`。

## games_mid_cost：7ドル群の費用

条件：133本を1本7ドルで買う。

根拠：

得られること：931ドル。

既習の根拠：単価と本数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_mid_cost`。

## games_low：3ドル群の本数

条件：残り266本から7ドル群133本を除く。

根拠：

得られること：3ドル群も133本。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_low`。

## games_low_cost：3ドル群の費用

条件：133本を1本3ドルで買う。

根拠：

得られること：399ドル。

既習の根拠：単価と本数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_low_cost`。

## games_total：全ゲームの総額

条件：3群の費用960、931、399ドル。

根拠：

得られること：合計は2290ドル。

既習の根拠：場合分けした費用の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.games_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.games_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
