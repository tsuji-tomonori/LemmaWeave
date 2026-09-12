# 贈った冊数と残冊数から元の冊数を戻す

Rebeccaへの40冊の3倍をMaraへ贈り、60冊残ったときの元の冊数を求める。

**取得済み固定GSM8Kの1問。**

- 贈与後の残りと、二人へ贈った冊数を足し戻す。

## gifts_mara：Maraへの冊数を求める

条件：Rebeccaへの40冊の3倍をMaraへ贈る。

根拠：

得られること：Maraは120冊受け取る。

既習の根拠：3×40を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.gifts_mara`。

## gifts_given：贈った合計を求める

条件：Rebeccaへ40冊、Maraへ120冊を贈る。

根拠：

得られること：贈った合計は160冊。

既習の根拠：40+120を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.gifts_given`。

## gifts_initial：元の冊数を求める

条件：160冊を贈った後に60冊残る。

根拠：

得られること：元は220冊。

既習の根拠：贈った冊数と残った冊数を160+60と足す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.gifts_initial`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.gifts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
