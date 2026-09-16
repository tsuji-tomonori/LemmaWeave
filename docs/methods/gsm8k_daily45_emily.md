# 受け渡し後のEmilyのビー玉

Emilyが自分の所持数の2倍を受け取り、新合計の半分より1個多く返した後の所持数を求める。

**取得済み固定GSM8Kの1問。**

- double the number she hasはEmilyが当初持つ6個の2倍、half of her new totalは受領後18個の半分とする。

## emily_new_total：受領後の合計

条件：Emilyは6個持ち、その2倍の12個をMeganから受け取る。

根拠：

得られること：受領後は6+12=18個。

既習の根拠：倍の乗法と受領分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.emily_new_total`。

## emily_left：返却後の所持数

条件：新合計18個の半分に1個足した数を返す。

根拠：

得られること：半分は9個、返すのは10個、残りは18−10=8個。

既習の根拠：二等分、追加、残数の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.emily_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.emily_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
