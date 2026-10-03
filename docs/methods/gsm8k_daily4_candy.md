# 家ごとの菓子数から兄妹の差を求める

Annaは60軒で各14個、Billyは75軒で各11個の菓子を得る。Annaが何個多いか求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 各分譲地の全戸を回り、1軒当たりの個数が一定であるとする。

## candy_anna：Annaの総数

条件：60軒で1軒14個を得る。

根拠：

得られること：Annaは14×60=840個。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.candy_anna`。

## candy_billy：Billyの総数

条件：75軒で1軒11個を得る。

根拠：

得られること：Billyは11×75=825個。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.candy_billy`。

## candy_difference：菓子数の差

条件：Annaの840個からBillyの825個を引く。

根拠：

得られること：Annaは15個多い。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.candy_difference`。

## candy_exists：条件の充足

条件：Anna 840個、Billy 825個、差15個。

根拠：

得られること：家数、単価、差の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.candy_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.candy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
