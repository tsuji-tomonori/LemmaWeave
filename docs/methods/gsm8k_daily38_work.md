# 曜日ごとの勤務時間差を求める

月曜450分、火曜は月曜の半分、水曜300分のとき、水曜が火曜より何分長いか求める。

**取得済み固定GSM8Kの1問。**

- すべて分単位で比較する。

## work_tuesday：火曜の勤務時間を求める

条件：火曜は月曜450分の半分。

根拠：

得られること：火曜は450÷2=225分。

既習の根拠：半分は2で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.work_tuesday`。

## work_difference：水曜と火曜の差を求める

条件：水曜300分と火曜225分を比べる。

根拠：

得られること：水曜は300-225=75分長い。

既習の根拠：多い量から少ない量を引いて差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.work_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.work_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
