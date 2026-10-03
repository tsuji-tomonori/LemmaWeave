# 2区間の走行距離

時速30マイルで0.5時間走り、その2倍の時間を2倍の速度で走った総距離を求める。

**取得済み固定GSM8Kの1問。**

- 時間を0.5時間単位の自然数で表し、2×距離＝速度×半時間単位数とする。

## drive_first：第1区間

条件：時速30マイルで0.5時間走る。

根拠：

得られること：第1区間は15マイル。

既習の根拠：距離＝速度×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.drive_first`。

## drive_second_data：第2区間の条件

条件：第1区間の2倍の時間を2倍の速度で走る。

根拠：

得られること：第2区間は時速60マイルで1時間。

既習の根拠：倍率と単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.drive_second_data`。

## drive_second：第2区間

条件：時速60マイルで1時間走る。

根拠：

得られること：第2区間は60マイル。

既習の根拠：距離＝速度×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.drive_second`。

## drive_total：総距離

条件：2区間の15マイルと60マイルを合計する。

根拠：

得られること：総距離は75マイル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.drive_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.drive_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
