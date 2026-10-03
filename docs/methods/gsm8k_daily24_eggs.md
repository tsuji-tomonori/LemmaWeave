# ほかの6人が集めた卵

EmmaとTankの2回の採集数の関係と全体400個から、ほかの6人の採集数を求める。

**取得済み固定GSM8Kの1問。**

- EmmaとTankの1回目・2回目を別量として合計する。

## eggs_tank_second：Tankの2回目

条件：Emmaの2回目60個はTankの2倍。

根拠：

得られること：Tankは30個。

既習の根拠：2倍関係の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_tank_second`。

## eggs_second_pair：2回目の2人合計

条件：Emma60個とTank30個を加える。

根拠：

得られること：90個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_second_pair`。

## eggs_tank_first：Tankの1回目

条件：Tankの2回目30個は1回目より20個少ない。

根拠：

得られること：1回目は50個。

既習の根拠：差の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_tank_first`。

## eggs_emma_first：Emmaの1回目

条件：Tankの1回目50個はEmmaより10個多い。

根拠：

得られること：Emmaは40個。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_emma_first`。

## eggs_first_pair：1回目の2人合計

条件：Tank50個とEmma40個を加える。

根拠：

得られること：90個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_first_pair`。

## eggs_pair_total：2人の2回合計

条件：1回目90個と2回目90個を加える。

根拠：

得られること：180個。

既習の根拠：時点別部分量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_pair_total`。

## eggs_others：ほかの6人

条件：全体400個は2人の180個とほか6人の和。

根拠：

得られること：ほかの6人は220個。

既習の根拠：全体から部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_others`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.eggs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
