# 2冊の本の売上差

TOP13冊とABC4冊の売上を比べる。

**取得済み固定GSM8Kの1問。**

- 価格×販売冊数で各売上を求める。

## books_revenues：各本の売上

条件：TOPは8ドルで13冊、ABCは23ドルで4冊売れた。

根拠：

得られること：売上はTOP104ドル、ABC92ドル。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.books_revenues`。

## books_difference：売上差

条件：104ドルと92ドルを比較する。

根拠：

得られること：差は12ドル。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.books_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.books_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
