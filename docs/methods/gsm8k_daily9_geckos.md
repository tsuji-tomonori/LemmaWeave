# 前年とその前年の販売数を合計する

昨年86匹のヤモリを売り、その前年は昨年の2倍売ったとき、直近2年間の販売数を求める。

**取得済み固定GSM8Kの1問。**

- twice that manyは昨年86匹を基準とする。

## geckos_previous：その前年の販売数

条件：昨年86匹の2倍。

根拠：

得られること：172匹。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.geckos_previous`。

## geckos_total：2年間の合計

条件：昨年86匹とその前年172匹。

根拠：

得られること：86+172=258匹。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.geckos_total`。

## geckos_exists：条件の充足

条件：前年172匹、合計258匹と置く。

根拠：

得られること：倍数関係と合計条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.geckos_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.geckos_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
