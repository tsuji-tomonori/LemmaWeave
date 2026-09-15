# 8時間勤務の投稿種別配分

顧客対応4時間、その半分の広告投稿時間を8時間勤務から除いてマーケティング投稿時間を求める。

**取得済み固定GSM8Kの1問。**

- 3種の投稿作業が8時間勤務を重複なく分けると解釈する。

## social_advertisement：広告投稿時間

条件：顧客対応は4時間、広告投稿はその半分。

根拠：

得られること：広告投稿は2時間。

既習の根拠：半分は2倍すると元の量になる関係を使う。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.social_advertisement`。

## social_marketing：マーケティング投稿時間

条件：全8時間から顧客対応4時間と広告2時間を除く。

根拠：

得られること：マーケティング投稿は2時間。

既習の根拠：全体=3作業時間の合計を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.social_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.social_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
