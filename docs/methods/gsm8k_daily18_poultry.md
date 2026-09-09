# 病気発生1週間後の家禽数

鶏300羽、七面鳥200羽、ホロホロ鳥80羽から、毎日それぞれ20、8、5羽を失うとき、7日後の総数を求める。

**取得済み固定GSM8Kの1問。**

- 1週間を7日とし、各鳥種の毎日の減少が7日間続く。各初期数は7日分の減少以上。

## poultry_chickens：鶏の残数

条件：300羽から毎日20羽を7日失う。

根拠：

得られること：300-20×7=160羽。

既習の根拠：一定量の反復減少。初期数が減少総数以上。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.poultry_chickens`。

## poultry_turkeys：七面鳥の残数

条件：200羽から毎日8羽を7日失う。

根拠：

得られること：200-8×7=144羽。

既習の根拠：一定量の反復減少。初期数が減少総数以上。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.poultry_turkeys`。

## poultry_guinea：ホロホロ鳥の残数

条件：80羽から毎日5羽を7日失う。

根拠：

得られること：80-5×7=45羽。

既習の根拠：一定量の反復減少。初期数が減少総数以上。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.poultry_guinea`。

## poultry_total：7日後の総数

条件：残った160、144、45羽を合計する。

根拠：

得られること：349羽。

既習の根拠：鳥種別残数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.poultry_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.poultry_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
