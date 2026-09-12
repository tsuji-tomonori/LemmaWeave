# 1日平均のピーナツ量

紙幣の総額から釣銭を除いてピーナツの購入量を求め、1週間の1日平均を求める。

**取得済み固定GSM8Kの1問。**

- 1週間を7日とし、購入量を7日で均等平均する。

## peanuts_total：所持金

条件：1ドル札7枚、5ドル札4枚、10ドル札2枚、20ドル札1枚。

根拠：

得られること：合計67ドル。

既習の根拠：額面×枚数の総和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.peanuts_total`。

## peanuts_spent：支払額

条件：67ドルを出して4ドルの釣銭を受け取る。

根拠：

得られること：63ドル支払った。

既習の根拠：支払額=提出額−釣銭。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.peanuts_spent`。

## peanuts_pounds：購入量

条件：1ポンド3ドルで63ドル支払う。

根拠：

得られること：21ポンド購入。

既習の根拠：代金=単価×量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.peanuts_pounds`。

## peanuts_daily：1日平均

条件：21ポンドを7日間で食べる。

根拠：

得られること：平均3ポンド/日。

既習の根拠：平均=総量÷日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.peanuts_daily`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.peanuts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
