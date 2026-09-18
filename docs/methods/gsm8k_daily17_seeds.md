# 種を60%植えたときの条件付き木の本数

2本の木に各20株、各株に種1個があり、その60%を植えたときの木の本数を問う。

**取得済み固定GSM8Kの1問。**

- 原文から一意に決まるのは植えた種24個。各種が必ず1本の木になる条件を加えれば24本だが、発芽・生育条件がないため木の成立本数は一意でない。

## seeds_plants：株の総数

条件：2本の木に各20株ある。

根拠：

得られること：株は40。

既習の根拠：同数の集まりの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_plants`。

## seeds_total：種の総数

条件：40株に各1個の種がある。

根拠：

得られること：種は40個。

既習の根拠：株数×株当たり個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_total`。

## seeds_planted：植えた種の数

条件：40個の60%を植える。

根拠：

得られること：24個の種を植える。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_planted`。

## seeds_conditional_trees：追加条件付きの木の本数

条件：植えた各種がちょうど1本の木になると追加仮定する。

根拠：

得られること：新しい木は24本。

既習の根拠：一対一対応。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_conditional_trees`。

## seeds_zero_possible：発芽しない反例

条件：植えた24個が1本も木にならない場合。

根拠：

得られること：新しい木0本でも種の個数条件と矛盾しない。

既習の根拠：不足条件を示す具体例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_zero_possible`。

## seeds_all_possible：すべて木になる例

条件：植えた24個がすべて木になる場合。

根拠：

得られること：新しい木24本も可能。

既習の根拠：不足条件を示す具体例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_all_possible`。

## seeds_not_determined：原文だけでは一意でない

条件：0本と24本の両方が原文の種数と整合する。

根拠：

得られること：木になった本数は追加条件なしに一意決定できない。

既習の根拠：異なる2例による非一意性。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_not_determined`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.seeds_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
