# 展示槽に残るクマノミを求める

合計100匹でクマノミとフグが同数。26匹のフグを除いた数と同数のクマノミが展示槽へ入り、その3分の1が戻る。

**取得済み固定GSM8Kの1問。**

- equal number of clownfish join は展示槽へ移るフグ24匹と同数と読む。

## aquarium_each：各魚種の初期数

条件：2種類が同数で合計100匹。

根拠：

得られること：各50匹。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_each`。

## aquarium_display：展示槽へ移るフグ

条件：フグ50匹のうち26匹は元の槽に残る。

根拠：

得られること：24匹が展示槽へ移る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_display`。

## aquarium_joined：展示槽へ入るクマノミ

条件：展示槽のフグと同数が加わる。

根拠：

得られること：クマノミ24匹。

既習の根拠：同数関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_joined`。

## aquarium_returned：戻るクマノミ

条件：展示槽へ入った24匹の3分の1。

根拠：

得られること：8匹が戻る。

既習の根拠：分数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_returned`。

## aquarium_remaining：展示槽に残るクマノミ

条件：24匹から8匹が戻る。

根拠：

得られること：16匹が残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_remaining`。

## aquarium_exists：条件の充足

条件：100、50、50、24、24、8、16と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.aquarium_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
