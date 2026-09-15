# 月の日数で変わるレストラン売上

平日は1日600ドル、週末はその2倍を稼ぐレストランの月間売上を求める。

**取得済み固定GSM8Kの1問。条件不足を反例付きで解答した。**

- 月の平日・休日の日数を外部条件とする。4週モデルの21600ドルと、平日22日・休日8日の22800ドルを両方証明する。

## restaurant_days：4週の営業日数

条件：1週を平日5日・週末2日とし、月を4週と仮定する。

根拠：

得られること：平日は20日、週末は8日。

既習の根拠：日数＝週数×1週当たりの日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.restaurant_four_week_days`。

## restaurant_weekend_rate：週末の日収

条件：平日の日収は600ドルで、週末はその2倍。

根拠：

得られること：週末の日収は1200ドル。

既習の根拠：倍率による金額計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.restaurant_weekend_rate`。

## restaurant_four_week_total：4週とした売上

条件：平日20日、週末8日、各日収600ドルと1200ドル。

根拠：

得られること：4週と仮定した月間売上は21600ドル。

既習の根拠：合計＝各区分の日数×日収の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.restaurant_four_week_total`。

## restaurant_thirty_day_total：異なる暦の反例

条件：平日22日、週末8日の月とする。

根拠：

得られること：売上は22800ドルとなり21600ドルと異なるので、原文だけでは一意に定まらない。

既習の根拠：条件不足を異なる許容入力の反例で示す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.restaurant_thirty_day_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.restaurant_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
