# 標準食と特別食の配膳時間を合計する

12人の3分の1が標準5分より20%長くかかるとき、全員への配膳時間を求める。

**取得済み固定GSM8Kの1問。**

- Missyが患者を順に配膳し、各患者の所要時間を加算する。20%増は標準時間の120%=6/5倍。

## serving_patient_counts：患者を二群に分ける

条件：12人の3分の1が特別食で、残りが標準食。

根拠：

得られること：特別食4人、標準食8人。

既習の根拠：全体の分数と補集合を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.serving_patient_counts`。

## serving_special_time：特別食1人の時間を求める

条件：標準5分より20%増、すなわち120%=6/5倍。

根拠：

得られること：特別食1人は6分。

既習の根拠：5分の20%は1分なので合計6分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.serving_special_time`。

## serving_subtotals：二群の小計を求める

条件：標準8人は各5分、特別4人は各6分。

根拠：

得られること：標準40分、特別24分。

既習の根拠：人数×1人当たり時間を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.serving_subtotals`。

## serving_total：全配膳時間を求める

条件：配膳を順に行うため二群の時間を加える。

根拠：

得られること：合計40+24=64分。

既習の根拠：二つの小計を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.serving_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.serving_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
