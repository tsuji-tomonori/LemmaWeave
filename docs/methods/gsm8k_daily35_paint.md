# 部屋の壁を塗る缶数を求める

4面の壁の面積を合計し、2平方メートル塗れる缶の必要数を求める。

**取得済み固定GSM8Kの1問。**

- 壁面を長方形とし、幅×高さで各面積を求める。30は2で割り切れるので端数切上げは生じない。

## paint_common：同じ2面の面積を求める

条件：幅3m、高さ2mの長方形の壁が2面ある。

根拠：

得られること：1面6m²、2面で12m²。

既習の根拠：長方形の面積=幅×高さを用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.paint_common`。

## paint_other_walls：残り2面の面積を求める

条件：幅5mと4mの壁はいずれも高さ2m。

根拠：

得られること：面積はそれぞれ10m²と8m²。

既習の根拠：長方形の面積=幅×高さを用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.paint_other_walls`。

## paint_total_area：壁面積を合計する

条件：4面の面積12、10、8m²を合計する。

根拠：

得られること：総面積は30m²。

既習の根拠：12+10+8を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.paint_total_area`。

## paint_cans：必要な缶数を求める

条件：1缶で2m²を塗り、総面積30m²は2で割り切れる。

根拠：

得られること：15缶必要。

既習の根拠：30÷2を計算し、余りがないことを確認する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.paint_cans`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.paint_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
