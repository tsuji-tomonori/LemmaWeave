# 一定の読書速度から3人の総ページ数を求める

60分当たり30、27、25ページ読む3人が240分で読み終える総ページ数を求める。

**取得済み固定GSM8Kの1問。**

- 各人が記載の一定速度で240分間読み続ける条件を用いる。

## reading_periods：60分区間の個数を求める

条件：読書時間240分は60分単位で区切れる。

根拠：

得られること：60分区間は4回。

既習の根拠：240÷60を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.reading_periods`。

## reading_individual：各人のページ数を求める

条件：各人の60分当たりのページ数が4区間とも一定。

根拠：

得られること：Rene 120、Lulu 108、Cherry 100ページ。

既習の根拠：各速度へ4を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.reading_individual`。

## reading_total：3人分を合計する

条件：求めるのは3人が読んだページ数の合計。

根拠：

得られること：合計328ページ。

既習の根拠：120+108+100を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.reading_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
