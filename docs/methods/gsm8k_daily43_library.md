# 国外出版の英語本の冊数

全蔵書から英語本を求め、そのうち国内出版分を除いて国外出版分を求める。

**取得済み固定GSM8Kの1問。**

- these booksは直前の英語本を指し、国外出版は英語本の国内出版以外とする。

## library_english：英語本

条件：全2300冊の80%が英語本。

根拠：

得られること：英語本は1840冊。

既習の根拠：全体×百分率の割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.library_english`。

## library_domestic：国内出版の英語本

条件：英語本1840冊の60%が国内出版。

根拠：

得られること：国内出版の英語本は1104冊。

既習の根拠：部分集合に対する百分率計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.library_domestic`。

## library_outside：国外出版の英語本

条件：英語本1840冊を国内出版1104冊と国外出版に分ける。

根拠：

得られること：国外出版の英語本は736冊。

既習の根拠：全体から既知の部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.library_outside`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.library_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
