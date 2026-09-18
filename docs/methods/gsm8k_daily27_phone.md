# 週数で変わる月間電話料金

1件1時間、1分5セント、週50件の通話にかかる月末の電話料金を求める。

**取得済み固定GSM8Kの1問。条件不足を反例付きで解答した。**

- 月に含める週数を外部条件とし、4週の600ドルと5週の750ドルを両方証明する。

## phone_call_cost：1件の通話料

条件：1件は60分で、1分5セント。

根拠：

得られること：1件300セント。

既習の根拠：料金＝時間×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.phone_call_cost`。

## phone_weekly：週の通話料

条件：1件300セントで週50件。

根拠：

得られること：週15000セント。

既習の根拠：合計＝件数×1件当たり料金。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.phone_weekly`。

## phone_four_week：4週とした月額

条件：月を4週とし、週15000セント、1ドル100セント。

根拠：

得られること：4週なら600ドル。

既習の根拠：週数倍とセントからドルへの換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.phone_four_week_dollars`。

## phone_five_week：5週とした反例

条件：月を5週とし、週15000セント、1ドル100セント。

根拠：

得られること：5週なら750ドルとなり600ドルと異なるので、原文だけでは一意に定まらない。

既習の根拠：不足条件に異なる値を与える反例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.phone_five_week_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.phone_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
