# 利用不能な階を除いて部屋の選択肢を数える

10階建てで各階10室のホテルの最上階が利用不能で、他の客がいないとき、Hansが入れる異なる部屋数を求める。

**取得済み固定GSM8Kの1問。**

- identicalは設備が同型という意味で、部屋の位置・番号は異なる選択肢とする。

## hotel_total：ホテルの全室数

条件：10階あり、各階に10室ある。

根拠：

得られること：10×10=100室。

既習の根拠：中学校までの乗法原理。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.hotel_total`。

## hotel_unavailable：利用不能な部屋数

条件：最上階1階分が利用不能で、各階10室。

根拠：

得られること：10室が利用不能。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.hotel_unavailable`。

## hotel_available：利用可能な選択肢

条件：他の客による占有はなく、全100室から利用不能10室だけを除く。

根拠：

得られること：90室から選べる。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.hotel_available`。

## hotel_exists：条件の充足

条件：全100室、利用不能10室、利用可能90室と置く。

根拠：

得られること：階数、各階室数、除外条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.hotel_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.hotel_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
