# ダースを個数へ直して均等分配する

合計5ダースを購入者2人と他の友人8人で均等に分ける。

**取得済み固定GSM8Kの1問。**

- their 8 other friendsはSamuelとCathy以外の8人なので、分配人数は10人。

## doughnuts_total：総個数を求める

条件：2ダースと3ダースを合わせ、1ダースは12個。

根拠：

得られること：合計60個。

既習の根拠：(2+3)×12を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.doughnuts_total`。

## doughnuts_people：分配人数を求める

条件：購入者2人と、そのほかの友人8人で分ける。

根拠：

得られること：分配人数は10人。

既習の根拠：互いに別の2人と8人を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.doughnuts_people`。

## doughnuts_each：一人分を求める

条件：60個を10人で均等に分ける。

根拠：

得られること：一人6個。

既習の根拠：60=10×6を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.doughnuts_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.doughnuts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
