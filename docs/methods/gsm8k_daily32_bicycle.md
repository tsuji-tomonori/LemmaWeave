# 元値に百分率増加を加えて新価格を求める

220ドルの自転車を15%値上げした後の価格を求める。

**取得済み固定GSM8Kの1問。**

- 増加率は元値を基準にする。

## bicycle_increase：増加額を求める

条件：元値220ドルの15%だけ増える。

根拠：

得られること：増加額は33ドル。

既習の根拠：百分率の定義から100×増加額=15×220を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.bicycle_increase`。

## bicycle_new：新価格を求める

条件：元値220ドルへ33ドルを加える。

根拠：

得られること：新価格は253ドル。

既習の根拠：220+33を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.bicycle_new`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.bicycle_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
