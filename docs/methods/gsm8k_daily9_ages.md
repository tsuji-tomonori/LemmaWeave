# 共通基準から月齢差を求める

JolynはThereseより2か月年上、ThereseはAivoより5か月年上、LeonはAivoより2か月年上のとき、JolynがLeonより何か月年上か求める。

**取得済み固定GSM8Kの1問。**

- Aivoを共通の0か月基準にした相対差だけを扱い、絶対年齢は仮定しない。

## ages_jolyn_over_aivo：JolynとAivoの差

条件：JolynはThereseより2か月、ThereseはAivoより5か月年上。

根拠：

得られること：JolynはAivoより2+5=7か月年上。

既習の根拠：中学校までの差の推移性と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.ages_jolyn_over_aivo`。

## ages_leon_over_aivo：LeonとAivoの差

条件：LeonはAivoより2か月年上。

根拠：

得られること：差は2か月。

既習の根拠：原文の等式化。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.ages_leon_over_aivo`。

## ages_difference：JolynとLeonの差

条件：同じAivoを基準に差が7か月と2か月。

根拠：

得られること：7-2=5か月、Jolynが年上。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.ages_difference`。

## ages_exists：条件の充足

条件：相対差を7、2、5か月と置く。

根拠：

得られること：3つの年齢差条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.ages_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.ages_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
