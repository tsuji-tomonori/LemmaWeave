# 海水中の塩をリットルからミリリットルへ換算する

2Lの海水が20%の塩なら、蒸発後に得る塩は何mLか。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 20%を体積比とする原文の単純化に従う。実際の塩は固体であり体積収縮等は扱わない。

## salt_liters：塩の体積割合

条件：海水2Lの20%が塩。

根拠：

得られること：塩は0.4L=2/5L。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.salt_liters`。

## salt_milliliters：mLへ換算

条件：1L=1000mL。

根拠：

得られること：2/5×1000=400mL。

既習の根拠：中学校までの単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.salt_milliliters`。

## salt_unit_conversion：換算式の確認

条件：2/5Lを1000倍してmL表示する。

根拠：

得られること：400mLになる。

既習の根拠：中学校までの分数計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.salt_unit_conversion`。

## salt_exists：条件の充足

条件：塩2/5L、400mL。

根拠：

得られること：割合と換算条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.salt_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.salt_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
