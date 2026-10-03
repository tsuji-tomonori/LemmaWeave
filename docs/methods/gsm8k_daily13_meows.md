# 3匹の猫の鳴き声総数

毎分3回の猫、2倍の猫、その3分の1の猫が5分間に鳴く合計を求める。

**取得済み固定GSM8Kの1問。**

- 毎分回数が5分間一定とする。

## meows_second：第2の毎分回数

条件：第1は毎分3回、第2はその2倍。

根拠：

得られること：第2は毎分6回。

既習の根拠：倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.meows_second`。

## meows_third：第3の毎分回数

条件：第3は第2の3分の1、第2は6回。

根拠：

得られること：第3は毎分2回。

既習の根拠：等分の除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.meows_third`。

## meows_per_minute：3匹の毎分合計

条件：毎分3回、6回、2回。

根拠：

得られること：合計は毎分11回。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.meows_per_minute`。

## meows_total：5分間の合計

条件：毎分11回が5分続く。

根拠：

得られること：合計は55回。

既習の根拠：一定量の繰返しを乗法で表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.meows_total`。

## meows_exists：条件の充足

条件：各毎分回数を3、6、2、合計11、5分合計55と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.meows_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.meows_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
