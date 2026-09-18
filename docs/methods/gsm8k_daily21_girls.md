# 遠足に参加する女子生徒数

28人乗りのバン5台に乗る生徒のうち男子60人を除いた女子人数を求める。

**取得済み固定GSM8Kの1問。**

- 各バンが28人を運び、生徒全体を男子と女子に分ける。

## girls_total：生徒総数

条件：5台の各バンに28人乗る。

根拠：

得られること：生徒総数は5×28=140人。

既習の根拠：総量=台数×1台当たり人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.girls_total`。

## girls_count：女子生徒数

条件：140人を男子60人と女子に分ける。

根拠：

得られること：答えは140−60=80人。

既習の根拠：全体から一方の部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.girls_count`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.girls_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
