# 孫の総人数

8人の子のうち例外の2人と残り6人を分け、それぞれの子どもの人数を合計する。

**取得済み固定GSM8Kの1問。**

- except for 2は、2人だけが各5人で、残りはMaxと同じ8人の子を持つと解釈する。

## grandchildren_counts：二群の孫人数

条件：8人の子のうち2人は各5人、残りは各8人の子を持つ。

根拠：

得られること：残りは6人で、その群に48人、例外群に10人の孫がいる。

既習の根拠：補集合の人数を引き算で求め、各群は人数×1人当たりで数える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.grandchildren_counts`。

## grandchildren_total：孫の総数

条件：二群は重ならず、48人と10人を足す。

根拠：

得られること：孫は合計58人。

既習の根拠：互いに重ならない群の要素数は加法で合計する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.grandchildren_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.grandchildren_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
