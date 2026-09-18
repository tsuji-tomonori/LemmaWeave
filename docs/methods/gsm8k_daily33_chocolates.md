# 土曜日の回数別に月間購入数を求める

毎週土曜に通常3個を買い、最後の土曜に10個追加した月の購入数を考える。

**取得済み固定GSM8Kの1問。**

- 月の土曜日数が未指定なので、4回の場合の参照解と5回の場合の反例を示す。

## chocolates_regular_four：4土曜日の通常購入数を求める

条件：土曜日が4回あり、毎回本人2個と姉妹1個を買う。

根拠：

得られること：通常分は12個。

既習の根拠：4×(2+1)を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.chocolates_regular_four`。

## chocolates_total_four：4土曜日の場合の合計を求める

条件：通常分12個に誕生日用10個を一度だけ追加する。

根拠：

得られること：合計22個。

既習の根拠：12+10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.chocolates_total_four`。

## chocolates_total_five：5土曜日の場合を求める

条件：土曜日が5回なら通常分を5回買い、10個を一度追加する。

根拠：

得られること：合計25個。

既習の根拠：5×3+10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.chocolates_total_five`。

## chocolates_ambiguity：月だけでは一意でないことを示す

条件：原題はその月の土曜日数を指定していない。

根拠：

得られること：4回なら22個、5回なら25個で異なるため一意に決まらない。

既習の根拠：異なる二つの具体例を示す反例法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.chocolates_ambiguity`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.chocolates_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
