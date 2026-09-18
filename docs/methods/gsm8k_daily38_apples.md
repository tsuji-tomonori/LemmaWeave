# リンゴ個数の二段階の差をたどる

Kaylaが20個、CalebがKaylaより5個少なく、SurayaがCalebより12個多いとき、SurayaがKaylaより何個多いか求める。

**取得済み固定GSM8Kの1問。**

- 三者の個数比較を同じ単位で扱う。

## apples_caleb：Calebの個数を求める

条件：CalebはKaylaの20個より5個少ない。

根拠：

得られること：Calebは20-5=15個。

既習の根拠：『より5少ない』は5を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.apples_caleb`。

## apples_suraya：Surayaの個数を求める

条件：SurayaはCalebの15個より12個多い。

根拠：

得られること：Surayaは15+12=27個。

既習の根拠：『より12多い』は12を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.apples_suraya`。

## apples_difference：Kaylaとの差を求める

条件：Surayaは27個、Kaylaは20個。

根拠：

得られること：SurayaはKaylaより27-20=7個多い。

既習の根拠：多い側から少ない側を引いて差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.apples_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.apples_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
