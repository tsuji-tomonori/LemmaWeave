# 3回の倍増と成犬時の加算

6ポンドから週9、3か月、5か月の各時点で順に倍増し、最後に30ポンドを加える。

**取得済み固定GSM8Kの1問。**

- doubled againを直前の体重からさらに2倍と読む。

## dog_doublings：3回の倍増

条件：7週で6ポンド、その後3回連続して直前の2倍になる。

根拠：

得られること：週9で12、3か月で24、5か月で48ポンド。

既習の根拠：倍率2を順に適用する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.dog_doublings`。

## dog_adult：成犬時の体重

条件：5か月時の48ポンドにさらに30ポンド増える。

根拠：

得られること：成犬時は78ポンド。

既習の根拠：増加前の量に増加量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.dog_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.dog_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
