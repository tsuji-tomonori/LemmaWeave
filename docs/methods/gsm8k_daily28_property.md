# 家と納屋の面積単価評価

家2400平方フィートと納屋1000平方フィートを1平方フィート98ドルで評価した物件価格を求める。

**取得済み固定GSM8Kの1問。同一単価の適用条件を明示した。**

- 98ドルの単価を納屋にも適用する条件付き解答。別単価なら原文だけでは一意でない。

## property_area：物件の評価面積

条件：家2400平方フィートと納屋1000平方フィートの両方を評価対象とする。

根拠：

得られること：合計面積は3400平方フィート。

既習の根拠：全体面積＝各建物面積の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.property_area`。

## property_total：条件付き物件価格

条件：合計3400平方フィート全体に同じ単価98ドルを適用する。

根拠：

得られること：物件価格は333200ドル。

既習の根拠：価格＝面積×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.property_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.property_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
