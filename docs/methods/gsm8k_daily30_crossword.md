# 二週間の総語数から一問平均を求める

毎日一問のクロスワードで二週間に1050語を書く。一問当たりの平均語数を求める。

**取得済み固定GSM8Kの1問。**

- 平均語数を各問に同じ平均値を割り当てた等式で表す。

## crossword_days：問題数を求める

条件：一週間7日で二週間、毎日一問解く。

根拠：

得られること：問題数は14問。

既習の根拠：2×7で日数を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.crossword_days`。

## crossword_average：一問平均

条件：14問の合計が平均換算で1050語。

根拠：

得られること：一問平均75語。

既習の根拠：総語数＝問題数×一問平均という自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.crossword_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.crossword_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
