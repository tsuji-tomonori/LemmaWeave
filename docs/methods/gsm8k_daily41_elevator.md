# エレベーターに乗れる次の人の最大体重

大人3人と子ども2人の合計体重を平均から求め、最大積載量との差を取る。

**取得済み固定GSM8Kの1問。**

- 表示の600ポンドを超えない実数体重の上限は52ポンドであり、整数モデルでは等号で最大値を表す。

## elevator_current：現在の合計体重

条件：大人3人の平均140ポンド、子ども2人の平均64ポンド。

根拠：

得られること：現在は3×140+2×64=548ポンド。

既習の根拠：平均×人数で各集団の合計を求めて足す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.elevator_current`。

## elevator_next：次の人の上限

条件：最大600ポンドから現在548ポンドを引く。

根拠：

得られること：次の人の最大体重は52ポンド。

既習の根拠：追加可能量=上限−現在量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.elevator_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.elevator_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
