# 二段階で失ったビー玉の元の個数を求める

路上で60%、残りの半分を下水へ失い、20個残ったときの最初の個数を求める。

**取得済み固定GSM8Kの1問。**

- 割合は順に適用し、下水へ失う直前の残りを基準に半分を取る。

## marbles_after_street：下水へ失う前の個数を戻す

条件：下水へ残りの半分を失った後が20個。

根拠：

得られること：下水へ失う前は40個で、失ったのは20個。

既習の根拠：半分が20なら全体は20×2とする。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.marbles_after_street`。

## marbles_start：最初の個数を求める

条件：路上で60%失ったので40個は最初の40%。

根拠：

得られること：最初は100個。

既習の根拠：40÷0.4を、5×残り=2×最初の整数関係で解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.marbles_start`。

## marbles_losses：各段階の個数を照合する

条件：最初100個から60%を路上で失い、その残りの半分を下水へ失う。

根拠：

得られること：路上60個、下水20個を失い20個残る。

既習の根拠：各段階の保存関係を照合する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.marbles_losses`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.marbles_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
