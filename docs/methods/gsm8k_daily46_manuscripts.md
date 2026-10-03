# 原稿10部の印刷・製本費

1部の印刷費と製本費を求め、10部分を合計する。

**取得済み固定GSM8Kの1問。**

- 金額をセントに統一する。

## manuscripts_unit：1部の費用

条件：400ページを1ページ5セントで印刷し、製本は500セント。

根拠：

得られること：印刷2000セント、製本込み2500セント。

既習の根拠：単価×数量と費目の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.manuscripts_unit`。

## manuscripts_total：10部の総費用

条件：1部2500セントを10部作る。

根拠：

得られること：25000セント、すなわち250ドル。

既習の根拠：同じ1部費用と部数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.manuscripts_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.manuscripts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
