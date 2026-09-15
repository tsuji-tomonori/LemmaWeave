# 同点までに必要な追加得点

500点の3/4を現在得点とし、500点に並ぶまでの追加得点を求める。

**取得済み固定GSM8Kの1問。**

- required to achieveは、現在点にさらに加える必要得点と解釈する。

## pool_paislee：Paisleeの現在得点

条件：Calvinは500点、Paisleeはその3/4。

根拠：

得られること：Paisleeは375点。

既習の根拠：500×3÷4の割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.pool_paislee`。

## pool_needed：同点までの不足

条件：Paisleeの375点に追加点を足して500点にする。

根拠：

得られること：必要な追加点は125点。

既習の根拠：不足分=目標−現在量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.pool_needed`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.pool_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
