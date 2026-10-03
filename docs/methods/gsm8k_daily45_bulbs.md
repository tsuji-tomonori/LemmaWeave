# 使用・譲渡後の電球数

40個から16個を使い、残りの半分を友人へ渡した後の個数を求める。

**取得済み固定GSM8Kの1問。**

- 半分にする対象は最初の40個ではなく、16個使用した後の残りである。

## bulbs_after_use：使用後の残り

条件：箱の40個から16個を使用する。

根拠：

得られること：使用後は40−16=24個。

既習の根拠：全体から使用分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.bulbs_after_use`。

## bulbs_left：譲渡後の残り

条件：使用後の24個の半分を友人へ渡す。

根拠：

得られること：渡すのも手元に残るのも12個なので、答えは12個。

既習の根拠：偶数を二等分する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.bulbs_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.bulbs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
