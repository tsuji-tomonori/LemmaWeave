# キャンプ地と自宅の降雨量差

キャンプ中の3日間の降雨量3・6・5mmを合計し、自宅の週26mmとの差を求める。

**取得済み固定GSM8Kの1問。**

- キャンプ地で雨が降った3日以外は0mmで、記録された3日分が週の総量を表すと読む。

## rain_camp：キャンプ地の総雨量

条件：雨天3日の雨量が3mm、6mm、5mm。

根拠：

得られること：キャンプ地の週の雨量は3+6+5=14mm。

既習の根拠：同じ単位の測定量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.rain_camp`。

## rain_less：自宅との差

条件：自宅は26mm、キャンプ地は14mm。

根拠：

得られること：キャンプ地で経験した雨は26−14=12mm少ない。

既習の根拠：二つの量の差を引き算で求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915E.rain_less`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915E.rain_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
