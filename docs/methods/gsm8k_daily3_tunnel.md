# 既知の区間を総距離から引く

曲がり角後の走行が5m、8m、未知、最後は即退出で、合計23m。3回目後は何mか。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 4回目の曲がり角ではimmediately exitsなので、その後の走行距離を0mとする。

## tunnel_known：既知区間の合計

条件：1回目後5m、2回目後8m、4回目後0m。

根拠：

得られること：既知部分は13m。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tunnel_known`。

## tunnel_third：未知区間

条件：合計23mから既知13mを引く。

根拠：

得られること：3回目後は10m。

既習の根拠：中学校までの一次方程式・減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tunnel_third`。

## tunnel_exists：条件の充足

条件：既知13m、未知10m。

根拠：

得られること：合計23mになる。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tunnel_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.tunnel_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
