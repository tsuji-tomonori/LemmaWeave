# 木箱と箱にある果物の総数

12箱のオレンジと16箱のネクタリンの総個数を求める。

**取得済み固定GSM8Kの1問。**

- 果物の種類別に個数を数えて合計する。

## fruit_oranges：オレンジの個数

条件：12箱の各箱に150個ある。

根拠：

得られること：オレンジは1800個。

既習の根拠：同数ずつ入る容器の総数は容器数×1容器当たり個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fruit_oranges`。

## fruit_nectarines：ネクタリンの個数

条件：16箱の各箱に30個ある。

根拠：

得られること：ネクタリンは480個。

既習の根拠：同数ずつ入る容器の総数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fruit_nectarines`。

## fruit_total：果物の合計

条件：2種類の果物は1800個と480個。

根拠：

得られること：合計は2280個。

既習の根拠：排反な種類別個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fruit_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.fruit_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
