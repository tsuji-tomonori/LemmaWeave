# 10km走の平均ペースを求める

10kmの前半を20分、後半を30分で走ったとき、1km当たり平均時間を求める。

**取得済み固定GSM8Kの1問。**

- 平均時間は全所要時間÷全距離であり、前後半の時間の単純平均ではない。

## pace_total：総所要時間を求める

条件：前半20分と後半30分で10kmを完走する。

根拠：

得られること：総時間は50分。

既習の根拠：連続する区間の時間を足す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.pace_total`。

## pace_average：1km当たりへ平均する

条件：全距離10kmに総時間50分を均等配分した平均ペース。

根拠：

得られること：50÷10=5分/km。

既習の根拠：総量を単位数で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.pace_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.pace_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
