# 既知の缶を除いて残り1缶の油量を求める

24缶に290Lあり、10缶が各8Lのとき、等量の残り各缶の油量を求める。

**取得済み固定GSM8Kの1問。**

- each of the remaining cansの問いから、残り14缶は等量を保持すると読む。

## oil_known：既知10缶の油量

条件：10缶が各8L。

根拠：

得られること：80L。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.oil_known`。

## oil_remaining：残りの油量

条件：全290Lから80Lを引く。

根拠：

得られること：210L。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.oil_remaining`。

## oil_cans：残り缶数

条件：全24缶から10缶を引く。

根拠：

得られること：14缶。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.oil_cans`。

## oil_each：残り1缶の量

条件：210Lを等量の14缶へ分ける。

根拠：

得られること：15L。

既習の根拠：中学校までの除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.oil_each`。

## oil_exists：条件の充足

条件：80L、210L、14缶、各15Lと置く。

根拠：

得られること：全量、缶数、等分の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.oil_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.oil_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
