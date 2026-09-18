# 配合比からピーナツバターの油量を求める

油2オンスとピーナツ8オンスの比で作る20オンスのバッチに使う油量を求める。

**取得済み固定GSM8Kの1問。**

- 油とピーナツ以外の材料や調理損失がなく、同じ2:8の重量比を保つと解釈する。

## peanut_ratio_total：比1組の総重量を求める

条件：比1組は油2オンスとピーナツ8オンスからなる。

根拠：

得られること：比1組の完成重量は10オンス。

既習の根拠：材料重量が加法的で損失がない条件で2+8を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.peanut_ratio_total`。

## peanut_scale：バッチの倍率を求める

条件：完成バッチは20オンスで同じ配合比。

根拠：

得られること：比1組の2倍。

既習の根拠：20÷10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.peanut_scale`。

## peanut_oil：油の重量を求める

条件：油2オンスの部分もバッチと同じ2倍にする。

根拠：

得られること：使った油は4オンス。

既習の根拠：2×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.peanut_oil`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.peanut_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
