# 飛ばした章を除く読了ページ数

40ページの章を10章、11章を20ページ、その後2章読み、合計を求める。

**取得済み固定GSM8Kの1問。**

- 11章の未読部分を含めない。

## pages_before：最初の10章

条件：1章40ページを10章読む。

根拠：

得られること：400ページ。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.pages_before`。

## pages_later：後の2章

条件：1章40ページを2章読む。

根拠：

得られること：80ページ。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.pages_later`。

## pages_total：読んだ合計

条件：最初400ページ、11章の20ページ、後の80ページ。

根拠：

得られること：合計500ページ。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.pages_total`。

## pages_exists：条件の充足

条件：各量を10、40、400、20、2、80、500と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.pages_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.pages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
