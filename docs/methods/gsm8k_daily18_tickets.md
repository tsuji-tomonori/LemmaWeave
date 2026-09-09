# 曜日別料金の映画券2枚

月曜5ドルを基準に、水曜は2倍、土曜は5倍の映画券を1枚ずつ買うときの総額を求める。

**取得済み固定GSM8Kの1問。**

- 曜日ごとに券1枚を買い、両日の料金を合算する。

## tickets_wednesday：水曜料金

条件：水曜は月曜5ドルの2倍。

根拠：

得られること：水曜は10ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tickets_wednesday`。

## tickets_saturday：土曜料金

条件：土曜は月曜5ドルの5倍。

根拠：

得られること：土曜は25ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tickets_saturday`。

## tickets_total：2日分の総額

条件：水曜10ドルと土曜25ドルを1枚ずつ買う。

根拠：

得られること：合計35ドル。

既習の根拠：代金の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tickets_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.tickets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
