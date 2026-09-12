# 比例する追加購入数を求める

Jenniferが先に40缶を買い、Markの5缶ごとに6缶を追加購入し、Markが50缶買ったときの持帰り総数を求める。

**取得済み固定GSM8Kの1問。**

- 追加購入の比6:5をMarkの50缶全体へ適用する。

## milk_groups：5缶組の数

条件：Markの50缶を5缶ずつに分ける。

根拠：

得られること：10組。

既習の根拠：割り切れる整数の除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.milk_groups`。

## milk_additional：Jenniferの追加分

条件：10組の各組につき6缶追加する。

根拠：

得られること：60缶。

既習の根拠：比例関係の同数倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.milk_additional`。

## milk_total：持帰り総数

条件：先に買った40缶に60缶を加える。

根拠：

得られること：100缶。

既習の根拠：既存分と追加分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.milk_total`。

## milk_exists：条件の充足

条件：10組、追加60缶、合計100缶を置く。

根拠：

得られること：比と合計条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.milk_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.milk_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
