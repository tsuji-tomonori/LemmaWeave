# 色別の倍率から帽子を二等分する

Paitynの赤20・青24個に対し、Zolaの赤は4/5倍、青は2倍で、全帽子を二人で等分した個数を求める。

**取得済み固定GSM8Kの1問。**

- 色ごとにZolaの個数を求め、両者の総数を2等分する。

## hats_paityn：Paitynの総数

条件：赤20個と青24個。

根拠：

得られること：44個。

既習の根拠：色別個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_paityn`。

## hats_zola_red：Zolaの赤帽子

条件：Paitynの赤20個の4/5倍。

根拠：

得られること：16個。

既習の根拠：分数倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_zola_red`。

## hats_zola_blue：Zolaの青帽子

条件：Paitynの青24個の2倍。

根拠：

得られること：48個。

既習の根拠：倍の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_zola_blue`。

## hats_zola_total：Zolaの総数

条件：赤16個と青48個を足す。

根拠：

得られること：64個。

既習の根拠：色別個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_zola_total`。

## hats_combined：二人の総数

条件：44個と64個を合わせる。

根拠：

得られること：108個。

既習の根拠：所有者別個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_combined`。

## hats_each：各人の分配数

条件：108個を二人で等分する。

根拠：

得られること：各54個。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_each`。

## hats_exists：条件の充足

条件：44、16、48、64、108、54個を置く。

根拠：

得られること：色別倍率、総数、等分条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.hats_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.hats_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
