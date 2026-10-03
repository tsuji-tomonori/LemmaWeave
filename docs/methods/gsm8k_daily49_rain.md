# 週間降雨量の平均

月曜から金曜までの降雨量から日平均を求め、土日が未指定である曖昧さも示す。

**取得済み固定GSM8Kの1問。**

- 列挙された平日5日平均は4インチ。暦週7日平均には土日の値が必要で、土日0の追加条件では20/7インチ。

## rain_daily_totals：各日の降雨量

条件：月曜は2+1、火曜は月曜の2倍、水曜0、木曜1、金曜は月曜から木曜の合計。

根拠：

得られること：月曜3、火曜6、木曜1、金曜10インチ。

既習の根拠：加法と倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.rain_daily_totals`。

## rain_total：平日5日間の合計

条件：月曜から金曜の値を合計する。

根拠：

得られること：合計20インチ。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.rain_total`。

## rain_averages：二つの平均

条件：列挙5日なら5で割る。暦週では土日0を追加仮定して7で割る。

根拠：

得られること：5日平均4インチ、追加条件付き7日平均20/7インチ。

既習の根拠：算術平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.rain_averages`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.rain_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
