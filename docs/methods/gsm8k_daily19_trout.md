# 父が多く釣ったマス

Calebが2匹、父がその3倍釣ったときの差を求める。

**取得済み固定GSM8Kの1問。**

- 比較対象は父の捕獲数とCalebの捕獲数。

## trout_dad：父の捕獲数

条件：父は2匹の3倍を釣る。

根拠：

得られること：父は6匹。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.trout_dad`。

## trout_more：差

条件：父6匹からCaleb2匹を引く。

根拠：

得られること：父が4匹多い。

既習の根拠：差の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.trout_more`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.trout_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
