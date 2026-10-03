# 5日間の走行距離

時速5マイルで毎朝2時間走る人が5日間で走る距離を求める。

**取得済み固定GSM8Kの1問。**

- 速さと時間が各日一定である。

## jog_daily：1日の距離

条件：時速5マイルで2時間走る。

根拠：

得られること：1日は5×2=10マイル。

既習の根拠：距離=速さ×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.jog_daily`。

## jog_total：5日の距離

条件：1日10マイルを5日続ける。

根拠：

得られること：答えは10×5=50マイル。

既習の根拠：同量の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.jog_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.jog_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
