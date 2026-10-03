# 映画に入場した人数

3校それぞれの拒否人数を割合から求め、総人数から引く。

**取得済み固定GSM8Kの1問。**

- 各割合は各校の人数に個別に適用する。

## movie_rejected_r：Riversideの拒否人数

条件：120人の20%を拒否。

根拠：

得られること：拒否は120×20/100=24人。

既習の根拠：百分率による部分量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.movie_rejected_r`。

## movie_rejected_w：West Sideの拒否人数

条件：90人の70%を拒否。

根拠：

得られること：拒否は90×70/100=63人。

既習の根拠：百分率による部分量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.movie_rejected_w`。

## movie_rejected_m：Mountaintopの拒否人数

条件：50人の半分を拒否。

根拠：

得られること：拒否は50÷2=25人。

既習の根拠：半分の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.movie_rejected_m`。

## movie_admitted：入場人数

条件：全260人から拒否24+63+25=112人を引く。

根拠：

得られること：入場は260-112=148人。

既習の根拠：全体から排除された部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.movie_admitted`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.movie_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
