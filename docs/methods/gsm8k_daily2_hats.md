# 色別に持ち出したヘルメットを引いて残数を合計する

桃26、緑15、黄24。Carlが桃4、Johnが桃6とその2倍の緑を持ち出す。残りは？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- twice as many greenはJohnが除いた桃6個の2倍。Carlの4個を基準にしない。
- 黄色には持出しがなく、3色を重複なく合計する。

## hats_pink：桃色の残数

条件：26個から4個と6個を持ち出す。

根拠：

得られること：26−4−6=16個。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.hats_pink`。

## hats_green：緑色の残数

条件：Johnは桃6個の2倍、緑12個を持ち出す。

根拠：

得られること：15−12=3個。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.hats_green`。

## hats_yellow：黄色は変化なし

条件：黄色を持ち出した記述はない。

根拠：

得られること：24個のまま。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.hats_yellow`。

## hats_total：残数の合計

条件：色は排他的で、残る桃16・緑3・黄24。

根拠：

得られること：16+3+24=43個。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.hats_total`。

## hats_exists：非負性と充足

条件：桃16、緑3、合計43。

根拠：

得られること：持出数が在庫以下で、元の保存関係を満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.hats_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.hats_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
