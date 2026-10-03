# 農場のヤギの頭数を求める

豚は牛の2倍、牛はヤギより4頭多く、合計56頭のときのヤギを求める。

**取得済み固定GSM8Kの1問。**

- ヤギを基準に牛=ヤギ+4、豚=2×牛という連立関係を置く。

## animals_goats：ヤギの頭数を解く

条件：牛=ヤギ+4、豚=2×牛、3種合計56。

根拠：

得られること：ヤギは11頭。

既習の根拠：代入して4×ヤギ+12=56となる一次方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.animals_goats`。

## animals_cows：牛の頭数を求める

条件：牛はヤギ11頭より4頭多い。

根拠：

得られること：牛は15頭。

既習の根拠：11+4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.animals_cows`。

## animals_pigs：豚と合計を照合する

条件：豚は牛15頭の2倍。

根拠：

得られること：豚は30頭で、11+15+30=56。

既習の根拠：15×2と3種の和を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.animals_pigs`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.animals_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
