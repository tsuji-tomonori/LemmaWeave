# 自転車旅行の13日目の距離

150マイルの旅行で12日間毎日12マイル走るとき、13日目に必要な距離を求める。

**取得済み固定GSM8Kの1問。**

- 最初の12日間の合計を目標距離から引く。

## bicycle_prior：12日間の距離

条件：1日12マイルを12日間走る。

根拠：

得られること：12×12=144マイル。

既習の根拠：速さではなく日ごとの距離の反復加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.bicycle_prior`。

## bicycle_final：13日目の距離

条件：目標150マイルのうち144マイル走った。

根拠：

得られること：残りは150-144=6マイル。

既習の根拠：全体から既知部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.bicycle_final`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.bicycle_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
