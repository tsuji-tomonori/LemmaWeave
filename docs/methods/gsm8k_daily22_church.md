# 大人と子どもの人数差

120人中40%が大人で残りが子どものとき、子どもが何人多いか求める。

**取得済み固定GSM8Kの1問。**

- 会員を大人と子どもの2群へ分割する。

## church_adults：大人数

条件：全120人の40%が大人である。

根拠：

得られること：大人は120×40/100=48人。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.church_adults`。

## church_children：子ども数

条件：大人以外の全員が子どもである。

根拠：

得られること：子どもは120−48=72人。

既習の根拠：全体から部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.church_children`。

## church_more：人数差

条件：子ども72人と大人48人を比較する。

根拠：

得られること：子どもは72−48=24人多い。

既習の根拠：二つの個数の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.church_more`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.church_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
