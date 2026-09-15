# 走者ごとの所要時間を合算する

8人中5人が8時間、残りが2時間遅く完走したとき、各走者の所要時間の総和を求める。

**取得済み固定GSM8Kの1問。**

- 参照解と同じく「合計時間」を各人の所要時間の総和（人・時間）と解釈する。全員が同時にスタートしたレースの経過時間なら最終完走は10時間であり、70時間とは異なる。

## runners_late_group：後発完走群の人数と時間を求める

条件：全8人のうち先の5人以外が残りで、その群は8時間より2時間遅い。

根拠：

得られること：残りは3人で各10時間。

既習の根拠：全体から部分を引き、時間差を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.runners_late_group`。

## runners_group_hours：各群の人・時間を求める

条件：各群内では全員の所要時間が同じ。

根拠：

得られること：先の群は5×8=40人・時間、残りは3×10=30人・時間。

既習の根拠：同じ量の反復を人数倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.runners_group_hours`。

## runners_aggregate：個人所要時間を合計する

条件：求める量を8人それぞれの所要時間の総和と解釈する。

根拠：

得られること：合計は40+30=70人・時間。

既習の根拠：互いに排他的な二群の小計を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.runners_aggregate`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.runners_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
