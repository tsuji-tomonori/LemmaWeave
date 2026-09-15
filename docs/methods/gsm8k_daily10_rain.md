# 雨量から集水量と売上を求める

月曜4インチ、火曜3インチの雨を1インチ当たり15ガロン集め、1ガロン1.2ドルで全量売った売上を求める。

**取得済み固定GSM8Kの1問。**

- 販売額は誤差を避けるためセントで表す。

## rain_inches：総雨量

条件：月曜4インチ、火曜3インチ。

根拠：

得られること：合計7インチ。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.rain_inches`。

## rain_gallons：集水量

条件：1インチ当たり15ガロン、雨量7インチ。

根拠：

得られること：105ガロン。

既習の根拠：比例・乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.rain_gallons`。

## rain_revenue：売上

条件：105ガロンを1ガロン120セントで全量売る。

根拠：

得られること：12600セント、すなわち126ドル。

既習の根拠：乗法と通貨換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.rain_revenue`。

## rain_exists：条件の充足

条件：雨量7、集水105、売上12600セントと置く。

根拠：

得られること：集水率と単価の全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.rain_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.rain_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
