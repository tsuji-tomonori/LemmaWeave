# ブーツで歩いた距離

3区間の距離を読み取り、歩いた総距離を求める。

**取得済み固定GSM8Kの1問。**

- one less thanをそれぞれ1だけ小さい数と読む。

## walk_segments：各区間の距離

条件：第2区間は2より1少なく、第3区間は4より1少ない。

根拠：

得られること：第2区間は1マイル、第3区間は3マイル。

既習の根拠：自然数の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.walk_segments`。

## walk_total：総距離

条件：3区間は2、1、3マイル。

根拠：

得られること：合計は2+1+3=6マイル。

既習の根拠：区間距離の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.walk_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.walk_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
