# 二つの仕事の週給を求める

主職は時給20ドルで30時間、副職は20%低い時給でその半分の時間働くとき、週給を求める。

**取得済み固定GSM8Kの1問。**

- 20%低いは主職時給を基準にする。

## weekly_reduction：副職の減額

条件：20ドルの20%。

根拠：

得られること：4ドル減る。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_reduction`。

## weekly_second_rate：副職時給

条件：20ドルから4ドルを引く。

根拠：

得られること：時給16ドル。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_second_rate`。

## weekly_second_hours：副職時間

条件：主職30時間の半分。

根拠：

得られること：15時間。

既習の根拠：中学校までの分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_second_hours`。

## weekly_main_pay：主職収入

条件：時給20ドルで30時間。

根拠：

得られること：600ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_main_pay`。

## weekly_second_pay：副職収入

条件：時給16ドルで15時間。

根拠：

得られること：240ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_second_pay`。

## weekly_total：週給合計

条件：二つの収入を足す。

根拠：

得られること：840ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_total`。

## weekly_exists：条件の充足

条件：各段階へ4、16、15、600、240、840を置く。

根拠：

得られること：全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.weekly_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
