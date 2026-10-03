# 遊んだ後に瓶へ戻すビー玉を数える

最初に取り出した12個の半分を失い、さらに10個を取り出し、新しい25個を受け取ったとき瓶へ戻す個数を求める。

**取得済み固定GSM8Kの1問。**

- 瓶に元から残っていた総数ではなく、外へ出して遊んでいる元のビー玉と新しい袋のビー玉だけを数える。

## jar_recovered：失わなかったビー玉を求める

条件：取り出した12個の半分6個を失い、失った分は見つからない。

根拠：

得られること：失ったのも残ったのも6個。

既習の根拠：12を等しい二つの半分へ分ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.jar_recovered`。

## jar_original_return：元の瓶から戻す分を求める

条件：失わなかった6個に、追加で取り出した10個を合わせる。

根拠：

得られること：元のビー玉は16個戻す。

既習の根拠：6+10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.jar_original_return`。

## jar_total：新しいビー玉も合計する

条件：母が持ち帰った新しい袋には25個ある。

根拠：

得られること：瓶へ戻すのは合計41個。

既習の根拠：16+25を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.jar_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.jar_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
