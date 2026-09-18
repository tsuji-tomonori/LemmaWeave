# 航行距離と嵐後の位置から後退距離を求める

東へ時速30kmで20時間進んだ地点が全行程の半分で、嵐後に全行程の3分の1地点へ戻されたときの西向き移動距離を求める。

**取得済み固定GSM8Kの1問。**

- 出発地から目的地までを東西一直線とし、西への後退が東向き位置をその距離だけ減らす。

## ship_east：最初の東向き航行距離を求める

条件：時速30kmで20時間、一定速度で東へ航行した。

根拠：

得られること：東へ600km進んだ。

既習の根拠：距離=速さ×時間を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.ship_east`。

## ship_total_distance：目的地までの全距離を求める

条件：600km地点が目的地までの半分。

根拠：

得られること：全距離は1200km。

既習の根拠：半分の2倍を取る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.ship_total_distance`。

## ship_post_storm：嵐後の位置を求める

条件：嵐後は出発地から目的地までの3分の1地点。

根拠：

得られること：出発地から400km地点。

既習の根拠：1200÷3を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.ship_post_storm`。

## ship_west：西へ吹き戻された距離を求める

条件：同じ東西直線上で600km地点から400km地点へ西向きに戻った。

根拠：

得られること：西へ200km吹き戻された。

既習の根拠：位置の差600-400を取る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.ship_west`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.ship_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
