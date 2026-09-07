# 総減量から等しい2人分を求める

4人で合計103kg減量し、第1者は27kg、第2者はそれより7kg少なく、残り2人が同量のとき各人の減量を求める。

**取得済み固定GSM8Kの1問。**

- 既知2人分を総量から除き、等量の残り2人で割る。

## weight_second：第2者の減量

条件：第1者の27kgより7kg少ない。

根拠：

得られること：20kg。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.weight_second`。

## weight_remaining：残り2人の合計

条件：総量103kgから27kgと20kgを除く。

根拠：

得られること：56kg。

既習の根拠：加法的総量から既知部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.weight_remaining`。

## weight_each：残り各人の減量

条件：2人が同量で合計56kg。

根拠：

得られること：各28kg。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.weight_each`。

## weight_exists：条件の充足

条件：20、56、28kgを置く。

根拠：

得られること：差、総量、等分条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.weight_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.weight_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
