# 残りからオレンジ箱の購入数を逆算する

母に1箱を渡し、その残りの半分を譲った後に4箱残ったとき、最初の購入箱数を求める。

**取得済み固定GSM8Kの1問。**

- 『残りの半分』は母へ渡した後の箱数を基準とする。

## oranges_before_half：半分を譲る直前の箱数を戻す

条件：半分を譲った後も同数の4箱が残る。

根拠：

得られること：譲る直前は8箱で、譲ったのは4箱。

既習の根拠：全体を等しい二つの半分へ分ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.oranges_before_half`。

## oranges_bought：母へ渡した1箱を戻す

条件：母へ1箱渡した後が8箱。

根拠：

得られること：最初に買ったのは9箱。

既習の根拠：逆算として8+1を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.oranges_bought`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.oranges_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
