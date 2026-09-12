# 毎日の読書ページ数

全408ページ中113ページを読み、残りを5日で終える毎日のページ数を求める。

**取得済み固定GSM8Kの1問。**

- 残りを5日へ同数ずつ配分する。

## reading_remaining：残りページ

条件：全408ページのうち113ページを読了した。

根拠：

得られること：残りは408−113=295ページ。

既習の根拠：全体から完了分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.reading_remaining`。

## reading_daily：1日分

条件：295ページを残り5日へ均等配分する。

根拠：

得られること：答えは295÷5=59ページ/日。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.reading_daily`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
