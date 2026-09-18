# 卓球の勝利数

30試合でCarlaがFrankieの2倍勝ったときCarlaの勝利数を求める。

**取得済み固定GSM8Kの1問。**

- 引き分けがなく、30試合は両者いずれかの勝利とする。

## pingpong_frankie：比からFrankieの勝利数を求める

条件：CarlaはFrankieの2倍勝ち、合計は30勝。

根拠：

得られること：Frankieの3倍が30なのでFrankieは10勝。

既習の根拠：比を用いた一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.pingpong_frankie`。

## pingpong_carla：Carlaの勝利数

条件：Frankieは10勝で、Carlaはその2倍。

根拠：

得られること：Carlaは20勝。

既習の根拠：定数倍の代入。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.pingpong_carla`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.pingpong_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
