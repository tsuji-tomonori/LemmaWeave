# 税込み小計と最終請求の差からチップを求める

料理80ドルとワイン10ドルに10%税を加え、140ドルとの差をチップとして求める。

**取得済み固定GSM8Kの1問。**

- 税は税抜小計90ドルを基準とし、チップは税込み小計への上乗せとする。

## restaurant_subtotal：税抜小計を求める

条件：料理80ドルとワイン10ドルを注文した。

根拠：

得られること：税抜小計は90ドル。

既習の根拠：80+10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.restaurant_subtotal`。

## restaurant_tax：売上税を求める

条件：90ドルの小計に10%の税がかかる。

根拠：

得られること：税は9ドル。

既習の根拠：百分率の定義から100×税=10×90を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.restaurant_tax`。

## restaurant_before：チップ前の税込額を求める

条件：小計90ドルへ税9ドルを加える。

根拠：

得られること：チップ前は99ドル。

既習の根拠：90+9を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.restaurant_before`。

## restaurant_gratuity：チップを求める

条件：最終請求140ドルは税込み99ドルにチップを加えた額である。

根拠：

得られること：チップは41ドル。

既習の根拠：140=99+41となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.restaurant_gratuity`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.restaurant_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
