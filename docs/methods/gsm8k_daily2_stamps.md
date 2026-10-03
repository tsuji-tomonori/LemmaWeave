# 増減関係から3種類の切手総数を求める

雪11枚、トラックは雪より9枚多く、バラはトラックより13枚少ない。合計は？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- someは各デザインの存在を示すが数量は後続条件で特定される。3種類以外を購入したとは読まない。

## stamps_truck：トラック柄

条件：雪11枚より9枚多い。

根拠：

得られること：20枚。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.stamps_truck`。

## stamps_rose：バラ柄

条件：トラック20枚より13枚少ない。

根拠：

得られること：7枚。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.stamps_rose`。

## stamps_total：3種類を合計

条件：雪11・トラック20・バラ7は別種類。

根拠：

得られること：38枚。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.stamps_total`。

## stamps_exists：非負性と充足

条件：トラック20、バラ7、合計38。

根拠：

得られること：増減と合計条件を満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.stamps_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.stamps_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
