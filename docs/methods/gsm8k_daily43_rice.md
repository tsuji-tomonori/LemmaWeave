# 米の残量と原文・参照解の解釈差

朝に9/10キログラムを炊き、残りの1/4を夕方に炊いた後の米をグラムで求める。

**取得済み固定GSM8Kの1問。**

- 原文は朝に9/10キログラムを炊いたと述べるため、主結果は6825グラム。参考解答が採った『全体の9/10を炊く』という別解釈では750グラムになることも、条件を区別して示す。

## rice_literal_remaining：朝の残量

条件：開始時は10キログラムで、朝に9/10キログラムを炊く。

根拠：

得られること：朝の残量は10−9/10=91/10キログラム。

既習の根拠：分数の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.rice_literal_remaining`。

## rice_literal_evening：夕方に炊く量と残量

条件：朝の残り91/10キログラムの1/4を夕方に炊く。

根拠：

得られること：夕方に91/40キログラム炊き、273/40キログラム残る。

既習の根拠：ある量の分数倍と、全体から部分を引く計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.rice_literal_evening`。

## rice_literal_grams：グラム換算

条件：残量は273/40キログラムで、1キログラムは1000グラム。

根拠：

得られること：原文どおりの残量は6825グラム。

既習の根拠：単位換算ではキログラム数に1000を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.rice_literal_grams`。

## rice_alternative：参照解の別解釈

条件：朝の9/10を『9/10キログラム』でなく『全体の9/10』と追加解釈する場合。

根拠：

得られること：この別条件では朝に1キログラム残り、その3/4である750グラムが残る。主結果6825グラムとは区別する。

既習の根拠：割合の残りと単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.rice_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.rice_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
