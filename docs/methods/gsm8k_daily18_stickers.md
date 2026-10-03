# 配った後のイルカシール

72枚から3人へ各4枚、Mandyへその3人分より2枚多く、JustinへMandyより10枚少なく渡した後の残数を求める。

**取得済み固定GSM8Kの1問。**

- Mandyの基準は3人へ渡した合計12枚であり、1人分4枚ではない。

## stickers_friends：3人に渡した合計

条件：3人へ各4枚。

根拠：

得られること：12枚。

既習の根拠：人数×1人当たり枚数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.stickers_friends`。

## stickers_mandy：Mandyに渡した枚数

条件：3人分合計12枚より2枚多い。

根拠：

得られること：14枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.stickers_mandy`。

## stickers_justin：Justinに渡した枚数

条件：Mandyの14枚より10枚少ない。

根拠：

得られること：4枚。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.stickers_justin`。

## stickers_given：渡した総数

条件：12枚、14枚、4枚を渡す。

根拠：

得られること：合計30枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.stickers_given`。

## stickers_left：残った枚数

条件：最初72枚から30枚を渡す。

根拠：

得られること：42枚残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.stickers_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.stickers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
